# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prisms.Variantfebeb65957eca6ee16270b507b383becefdd286ca05d39f11f74df0cbf349100

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `605cbb503984b8ee72e82c8a34018308a0a9b55a` · SHA-256 `16743ae24a755a53deb8b7b2150db545a6ee7ae36c6f098320c708d02f0c277f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RectangularPrism.Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RectangularPrism.Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1","mathematical_subject":"Computation.DataStructures","original_sha256":"d9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Prisms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.Tubes


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RectangularPrism.Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1

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
