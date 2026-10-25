# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant2c9ade65229a24aea15a6bbfad1d84e4a89224e99f4f597e1527c372ed6ff643

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f1ed01a411847826f259c595e52b1c9c0651e3` · SHA-256 `2c9ade65229a24aea15a6bbfad1d84e4a89224e99f4f597e1527c372ed6ff643`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
