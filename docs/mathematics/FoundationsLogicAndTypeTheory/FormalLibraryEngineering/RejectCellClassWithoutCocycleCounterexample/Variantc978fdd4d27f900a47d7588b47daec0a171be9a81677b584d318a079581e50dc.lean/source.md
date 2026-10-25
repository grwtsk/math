# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCellClassWithoutCocycleCounterexample.Variantc978fdd4d27f900a47d7588b47daec0a171be9a81677b584d318a079581e50dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c49e215d5891fb120278bd5d2bb79e0551b0ea73` · SHA-256 `c978fdd4d27f900a47d7588b47daec0a171be9a81677b584d318a079581e50dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : edgeHodge.delta (1, 0) ≠ 0 := by
  norm_num [edgeHodge, edgeDelta]
```
