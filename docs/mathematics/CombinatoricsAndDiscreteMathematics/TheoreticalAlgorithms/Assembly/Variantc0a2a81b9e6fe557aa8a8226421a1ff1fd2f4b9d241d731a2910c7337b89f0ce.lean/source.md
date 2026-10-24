# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Assembly.Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c5fd83efe51d0256c90c39255618e2ad4c156bf` · SHA-256 `c0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.Shadings
import Surface.Geometry.Kakeya.ConvexWolff
import Surface.Geometry.Kakeya.Sticky
import Surface.Geometry.Kakeya.TubeVolume
import Surface.Geometry.Kakeya.Assouad

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Bundled theorem-facing quantitative Kakeya input and the bridge from finite
structural vocabulary to quantitative geometry.

What is certificate-gated:
Every quantitative component is a Prop-valued theorem input.

What is not claimed:
No finite structural bridge is usable as quantitative Kakeya evidence unless it
contains an actual quantitative theorem input.
-/

/--
Bundled theorem-facing quantitative Kakeya input.

This is the object a future spectral or geometric proof cone should consume
instead of finite homology readiness data.
-/
structure QuantitativeKakeyaTheoremInput
    (K : TubeConfiguration) where
  shadings : List (Shading K)
  wolffAxioms : WolffAxioms K
  convexWolffFactorization : ConvexWolffFactorization K
  stickyKakeya : StickyKakeyaTheoremInput K
  tubeVolumeLowerBound : TubeVolumeLowerBound K
  dimensionLowerBound : DimensionLowerBoundInput K
  noFiniteStructuralSurrogate : Prop
  noFiniteStructuralSurrogateCertified : noFiniteStructuralSurrogate
  boundary : List String

def QuantitativeKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (Q : QuantitativeKakeyaTheoremInput K) :
    Prop :=
  Q.wolffAxioms.usableForMajorProof ∧
  Q.convexWolffFactorization.usableForMajorProof ∧
  Q.stickyKakeya.usableForMajorProof ∧
  Q.tubeVolumeLowerBound.usableForMajorProof ∧
  Q.dimensionLowerBound.usableForMajorProof ∧
  Q.noFiniteStructuralSurrogate

theorem QuantitativeKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (Q : QuantitativeKakeyaTheoremInput K) :
    Q.usableForMajorProof :=
  ⟨Q.wolffAxioms.usableForMajorProof_of_fields,
    Q.convexWolffFactorization.usableForMajorProof_of_fields,
    Q.stickyKakeya.admissibleInput_of_fields,
    Q.tubeVolumeLowerBound.usableForMajorProof_of_fields,
    Q.dimensionLowerBound.usableForMajorProof_of_fields,
    Q.noFiniteStructuralSurrogateCertified⟩

/--
Bridge from finite structural vocabulary to quantitative geometry.

The bridge is intentionally not usable for major proofs unless an actual
quantitative theorem input is present.
-/
structure FiniteStructuralBridge
    (K : TubeConfiguration) where
  finiteStructuralVocabulary : Prop
  finiteStructuralVocabularyCertified : finiteStructuralVocabulary
  quantitativeInput? : Option (QuantitativeKakeyaTheoremInput K)
  boundary : List String

def FiniteStructuralBridge.hasQuantitativeInput
    {K : TubeConfiguration}
    (B : FiniteStructuralBridge K) :
    Prop :=
  ∃ Q : QuantitativeKakeyaTheoremInput K,
    B.quantitativeInput? = some Q

theorem FiniteStructuralBridge.none_not_hasQuantitativeInput
    {K : TubeConfiguration}
    (B : FiniteStructuralBridge K)
    (h : B.quantitativeInput? = none) :
    ¬ B.hasQuantitativeInput := by
  intro hq
  rcases hq with ⟨Q, hQ⟩
  rw [h] at hQ
  cases hQ

end Surface.Geometry.Kakeya
```
