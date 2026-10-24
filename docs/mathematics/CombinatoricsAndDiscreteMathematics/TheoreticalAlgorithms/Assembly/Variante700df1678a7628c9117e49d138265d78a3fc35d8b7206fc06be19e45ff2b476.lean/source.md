# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Assembly.Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b741193798a24867f9e68e557e098560a05befa9` · SHA-256 `492a87f676882cd3bd827708110ea2184d4c0bb111ddef9fe35fe7fc61dddf1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantitativeKakeyaTheoremInput.Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.QuantitativeKakeyaTheoremInput.Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce","mathematical_subject":"Computation.DataStructures","original_sha256":"c0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.Shadings
import Surface.Geometry.Kakeya.ConvexWolff
import Surface.Geometry.Kakeya.Sticky
import Surface.Geometry.Kakeya.TubeVolume
import Surface.Geometry.Kakeya.Assouad


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantitativeKakeyaTheoremInput.Variantc0a2a81b9e6fe557aa8a8226421a1ff1fd2f4b9d241d731a2910c7337b89f0ce

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
