# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Assouad.Variant1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d9e17fa9000d1f819049cef8327a7589c10b10d` · SHA-256 `1942fb9196ff8ea6fd9996091c4aa087854021ca4afa95a8b161c4967b9d84ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
