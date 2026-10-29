-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cycle3DerivedFalse.Variant995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cycle3DerivedFalse.Variant995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00","mathematical_subject":"Foundations.Unclassified","original_sha256":"995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-3/reproductions/05_hidden_axiom_mutation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cycle3DerivedFalse.Variant995d4229c01d016cc03b93fd3274737af1fa82a73d3422497d9a0e7d5b600c00

open Lean Elab Command

elab "cycle3_add_hidden" : command => do
  liftCoreM <| addDecl <| Declaration.axiomDecl {
    name := `cycle3Hidden
    levelParams := []
    isUnsafe := false
    type := mkConst ``False
  }

cycle3_add_hidden

theorem cycle3DerivedFalse : False := cycle3Hidden

#check cycle3DerivedFalse
