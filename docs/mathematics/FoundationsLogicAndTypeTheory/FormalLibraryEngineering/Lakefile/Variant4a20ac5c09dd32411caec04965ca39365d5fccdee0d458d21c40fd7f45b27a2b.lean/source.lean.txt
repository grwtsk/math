import Lake
open Lake DSL

package «folder» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8a98ed7ef0e51263d6b2ae0d147a49e833f76d29e99b9f6ac7225da1df155958/src"
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.31.0"

@[default_target]
lean_lib Folder where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8a98ed7ef0e51263d6b2ae0d147a49e833f76d29e99b9f6ac7225da1df155958/src/src"
