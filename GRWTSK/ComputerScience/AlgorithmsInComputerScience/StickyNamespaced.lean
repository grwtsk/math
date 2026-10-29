-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StickyKakeyaTheoremInput.Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StickyKakeyaTheoremInput.Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f","mathematical_subject":"Computation.DataStructures","original_sha256":"de661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/Sticky.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.WolffAxioms


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StickyKakeyaTheoremInput.Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Sticky-Kakeya theorem input data.

What is certificate-gated:
The sticky estimate is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No sticky Kakeya theorem is proved here.
-/

/-- Sticky-Kakeya theorem input. -/
structure StickyKakeyaTheoremInput
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  stickyEstimate : Prop
  stickyEstimateCertified : stickyEstimate
  boundary : List String

def StickyKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    Prop :=
  S.wolffAxioms.usableForMajorProof ∧ S.stickyEstimate

theorem StickyKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    S.usableForMajorProof :=
  ⟨S.wolffAxioms.usableForMajorProof_of_fields, S.stickyEstimateCertified⟩

end Surface.Geometry.Kakeya
