-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AffineModality.Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AffineModality.Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1","mathematical_subject":"Foundations.Unclassified","original_sha256":"f4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/AffineTopos/Modality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.AffineTopos.Core


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AffineModality.Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1

namespace Surface
namespace Legacy
namespace AffineTopos

inductive AffineModality
| reversibleFlow
| quotient
| averaging
| heat
| oracle
| choice
| ricciObstruction
| homologyStabilization
| infiniteTimeLimit
| relaxation
deriving DecidableEq, Repr

def AffineModality.irreversible : AffineModality → Bool
| AffineModality.reversibleFlow => false
| _ => true

structure ModalityBoundary where
  modality : AffineModality
  claimBoundary : AffineClaimBoundary
  irreversibleVisible : modality.irreversible = true → True

theorem irreversible_modality_visible
    (B : ModalityBoundary) :
    B.modality.irreversible = true → True := by
  exact B.irreversibleVisible

theorem reversibleFlow_modality_not_irreversible :
    AffineModality.reversibleFlow.irreversible = false := by
  rfl

end AffineTopos
end Legacy
end Surface
