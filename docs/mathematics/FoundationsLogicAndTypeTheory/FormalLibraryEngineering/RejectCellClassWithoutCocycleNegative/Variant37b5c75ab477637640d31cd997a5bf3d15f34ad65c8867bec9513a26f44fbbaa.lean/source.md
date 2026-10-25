# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCellClassWithoutCocycleNegative.Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9189ab64ad98d7c7d8f647ced565d70f1fffaad6` · SHA-256 `37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- An ambient cochain representative does not have the required kernel-subtype codomain.
def ambientIsNotCocycle : CycleHZeroComparison pointCycleClass edgeHodge where
  hodgeToCocycle := constantRepresentative
  cycleToCocycle := constantRepresentative
  commute := rfl
```
