# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prisms.Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c65f094c4a5720a9ba0dfe815f1c005433aaf02` · SHA-256 `d9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.Tubes

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Rectangular-prism descriptors and arrangement input for quantitative Kakeya
geometry.

What is certificate-gated:
Incidence and containment statements are Prop-valued theorem inputs.

What is not claimed:
No rectangular-prism estimate, plank theorem, or Kakeya volume theorem is
proved here.
-/

/-- Rectangular prism descriptor used by future Kakeya decomposition arguments. -/
structure RectangularPrism where
  id : Nat
  shortScale : Nat
  middleScale : Nat
  longScale : Nat
  short_le_middle : shortScale ≤ middleScale
  middle_le_long : middleScale ≤ longScale
  orientationLabel : String
  boundary : List String
deriving Repr

/-- Arrangement of rectangular prisms associated to a tube configuration. -/
structure RectangularPrismArrangement
    (K : TubeConfiguration) where
  prisms : List RectangularPrism
  tubesAssignedToPrisms : Prop
  tubesAssignedToPrismsCertified : tubesAssignedToPrisms
  arrangementCompatibleWithScales : Prop
  arrangementCompatibleWithScalesCertified : arrangementCompatibleWithScales
  boundary : List String

def RectangularPrismArrangement.usableForMajorProof
    {K : TubeConfiguration}
    (A : RectangularPrismArrangement K) :
    Prop :=
  A.tubesAssignedToPrisms ∧ A.arrangementCompatibleWithScales

theorem RectangularPrismArrangement.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (A : RectangularPrismArrangement K) :
    A.usableForMajorProof :=
  ⟨A.tubesAssignedToPrismsCertified,
    A.arrangementCompatibleWithScalesCertified⟩

end Surface.Geometry.Kakeya
```
