import Lake
open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8fbe0686bc98ab91c7ae86530f61889ff5f50e2b7874e0c598648e10d01df317/src/lean"
  root := `SpectralProof.Main
