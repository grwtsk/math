# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Grains.Variant4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6fbf3b8277505e6baeafde41acf665fd632b6a` · SHA-256 `4bc6fb37a6dd5fd99f5a7bb13a38f5abed15bbf427ecdd5943f6f5f96d29e0f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
