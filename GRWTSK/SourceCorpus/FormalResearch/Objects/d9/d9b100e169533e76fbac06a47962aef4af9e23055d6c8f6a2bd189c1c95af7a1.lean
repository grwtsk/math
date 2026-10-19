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
