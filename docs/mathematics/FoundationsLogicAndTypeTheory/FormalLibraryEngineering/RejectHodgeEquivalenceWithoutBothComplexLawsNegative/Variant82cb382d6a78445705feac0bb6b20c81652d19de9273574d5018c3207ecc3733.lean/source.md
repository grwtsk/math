# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHodgeEquivalenceWithoutBothComplexLawsNegative.Variant82cb382d6a78445705feac0bb6b20c81652d19de9273574d5018c3207ecc3733

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac3467a081dd592b986827d99b932090f4bf08a9` · SHA-256 `82cb382d6a78445705feac0bb6b20c81652d19de9273574d5018c3207ecc3733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- Each law is independently required by the exact equivalence constructor.
def missingCodifferential : HodgeEquiv edgeHodge edgeHodge where
  equiv0 := LinearEquiv.refl ℚ (ℚ × ℚ)
  equiv1 := LinearEquiv.refl ℚ ℚ
  delta_comm := (HodgeEquiv.refl edgeHodge).delta_comm

def missingDifferential : HodgeEquiv edgeHodge edgeHodge where
  equiv0 := LinearEquiv.refl ℚ (ℚ × ℚ)
  equiv1 := LinearEquiv.refl ℚ ℚ
  deltaStar_comm := (HodgeEquiv.refl edgeHodge).deltaStar_comm
```
