# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCellClassWithoutCocyclePositive.Variant832cf21206a6cffcd28a767f8fb9b30446e68ae55d4e77ee3320bf29d4480a94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `393a1edf5d2929ffca25cffa1e0c86016006e9ba` · SHA-256 `832cf21206a6cffcd28a767f8fb9b30446e68ae55d4e77ee3320bf29d4480a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : CycleHZeroComparison pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroComparison
example (q : ℚ) : edgeHodge.delta (EdgeFixture.constantCocycle q) = 0 :=
  (EdgeFixture.constantCocycle q).property
```
