import Lake
open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "fead16e91f8b84c43b5c78e60d90fffc4e93cc5d"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/525e792de7c673977716532d1cb5d143f60860ccac257958a30ee78609efa6eb/src"
  root := `SpectralProof.Main
