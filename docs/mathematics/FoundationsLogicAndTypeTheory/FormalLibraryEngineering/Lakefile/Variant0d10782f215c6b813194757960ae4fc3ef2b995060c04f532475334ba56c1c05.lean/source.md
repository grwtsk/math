# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant0d10782f215c6b813194757960ae4fc3ef2b995060c04f532475334ba56c1c05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ab3390a66e1328ff4fbafecc60cabeca360ff83` · SHA-256 `0d10782f215c6b813194757960ae4fc3ef2b995060c04f532475334ba56c1c05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «fcrs» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
```
