import Surface.Geometry.Kakeya.Prisms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Multiscale grain decomposition input for theorem-facing Kakeya geometry.

What is certificate-gated:
The decomposition and scale compatibility statements are Prop-valued theorem
inputs.

What is not claimed:
No multiscale grains theorem is proved here.
-/

/-- A grain descriptor in a multiscale Kakeya decomposition. -/
structure Grain where
  id : Nat
  scale : ScaleData
  carrierLabel : String
  boundary : List String
deriving Repr

/-- Multiscale grain decomposition input. -/
structure GrainDecomposition
    (K : TubeConfiguration) where
  grains : List Grain
  prismArrangement : RectangularPrismArrangement K
  coversTubes : Prop
  coversTubesCertified : coversTubes
  scaleCompatible : Prop
  scaleCompatibleCertified : scaleCompatible
  boundary : List String

def GrainDecomposition.usableForMajorProof
    {K : TubeConfiguration}
    (G : GrainDecomposition K) :
    Prop :=
  G.prismArrangement.usableForMajorProof ∧ G.coversTubes ∧ G.scaleCompatible

theorem GrainDecomposition.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (G : GrainDecomposition K) :
    G.usableForMajorProof :=
  ⟨G.prismArrangement.usableForMajorProof_of_fields,
    G.coversTubesCertified,
    G.scaleCompatibleCertified⟩

end Surface.Geometry.Kakeya
