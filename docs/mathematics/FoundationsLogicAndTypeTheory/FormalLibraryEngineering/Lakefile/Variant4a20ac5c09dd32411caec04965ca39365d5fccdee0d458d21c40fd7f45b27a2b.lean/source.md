# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant4a20ac5c09dd32411caec04965ca39365d5fccdee0d458d21c40fd7f45b27a2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab423febe77e0e905da6819a7135d56cf975f833` · SHA-256 `4a20ac5c09dd32411caec04965ca39365d5fccdee0d458d21c40fd7f45b27a2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
