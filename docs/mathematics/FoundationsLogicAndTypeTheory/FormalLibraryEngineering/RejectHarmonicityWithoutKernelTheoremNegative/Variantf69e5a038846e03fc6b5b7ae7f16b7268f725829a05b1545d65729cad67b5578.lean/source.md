# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHarmonicityWithoutKernelTheoremNegative.Variantf69e5a038846e03fc6b5b7ae7f16b7268f725829a05b1545d65729cad67b5578

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47945723522dd8e9705a140aa2584bd8224b7ed7` · SHA-256 `f69e5a038846e03fc6b5b7ae7f16b7268f725829a05b1545d65729cad67b5578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- The complete adapter requires the exact kernel theorem as a separate proof field.
def incompleteHarmonicAdapter : RationalHodgeHZeroAdapter pointCycleClass edgeHodge where
  globalTheorem := pointSourceTheorem
  comparison := EdgeFixture.pointHZeroComparison
```
