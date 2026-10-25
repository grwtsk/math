# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectH0TransportWithoutCocycleEquivalenceNegative.Variantcc50f0689b9c8add5cae4850e32d044c890cfe87a8ac176750a5b15993c1c31a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2947e80f373f910cd770ef8df39e05aa271c12de` · SHA-256 `cc50f0689b9c8add5cae4850e32d044c890cfe87a8ac176750a5b15993c1c31a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- Invertibility of the ambient cochain space does not supply a kernel equivalence.
def ambientEquivNotHZero : HZeroModel edgeHodge (ℚ × ℚ) where
  classEquiv := LinearEquiv.refl ℚ (ℚ × ℚ)
```
