{
  description = "neovim configured with haskell language server";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system;
    };
  in
  {
    devShell.${system} = pkgs.callPackage "${self}/shell.nix" {inherit self;};
  };
}