import Lake
open Lake DSL

package SpectralProof where
  srcDir := "."

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
