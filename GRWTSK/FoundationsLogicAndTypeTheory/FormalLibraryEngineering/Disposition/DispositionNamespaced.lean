-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JurisDisposition.Variant995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.JurisDisposition.Variant995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4","mathematical_subject":"Foundations.Unclassified","original_sha256":"995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Juris/Disposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Jurisdictional disposition

Only an explicit `allowed` result can participate in an execution admission.
Unknown legal or policy state remains unresolved and fails closed.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JurisDisposition.Variant995d7cbe2baf6c634fb3a39e4054eb8f0fb90938432c8131cd1cba63591d0af4

namespace Mathematics.Juris

inductive JurisDisposition
  | allowed
  | prohibited
  | unresolved
  | conflicting
  deriving DecidableEq, Repr

def JurisDisposition.MayExecute : JurisDisposition → Prop
  | .allowed => True
  | _ => False

@[simp] theorem unresolved_blocks_execution :
    ¬ JurisDisposition.unresolved.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem conflicting_blocks_execution :
    ¬ JurisDisposition.conflicting.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem prohibited_blocks_execution :
    ¬ JurisDisposition.prohibited.MayExecute := by
  simp [JurisDisposition.MayExecute]

end Mathematics.Juris
