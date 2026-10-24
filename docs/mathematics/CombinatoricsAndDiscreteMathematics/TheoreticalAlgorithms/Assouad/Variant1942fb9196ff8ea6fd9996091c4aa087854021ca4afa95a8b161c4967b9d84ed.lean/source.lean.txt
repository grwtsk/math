import Surface.Geometry.Kakeya.Grains
import Surface.Geometry.Kakeya.TubeVolume

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Assouad/Minkowski-style dimension theorem input for Kakeya configurations.

What is certificate-gated:
Dimension conclusions are Prop-valued theorem inputs and require quantitative
volume and grain-decomposition inputs.

What is not claimed:
No Hausdorff, Minkowski, or Assouad dimension lower bound is proved here.
-/

/-- Dimension lower-bound theorem input for a Kakeya configuration. -/
structure DimensionLowerBoundInput
    (K : TubeConfiguration) where
  grainDecomposition : GrainDecomposition K
  tubeVolumeLowerBound : TubeVolumeLowerBound K
  dimensionStatement : Prop
  dimensionStatementCertified : dimensionStatement
  boundary : List String

def DimensionLowerBoundInput.usableForMajorProof
    {K : TubeConfiguration}
    (D : DimensionLowerBoundInput K) :
    Prop :=
  D.grainDecomposition.usableForMajorProof ∧
  D.tubeVolumeLowerBound.usableForMajorProof ∧
  D.dimensionStatement

theorem DimensionLowerBoundInput.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (D : DimensionLowerBoundInput K) :
    D.usableForMajorProof :=
  ⟨D.grainDecomposition.usableForMajorProof_of_fields,
    D.tubeVolumeLowerBound.usableForMajorProof_of_fields,
    D.dimensionStatementCertified⟩

end Surface.Geometry.Kakeya
