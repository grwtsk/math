-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessEffect.Variant4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AccessEffect.Variant4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a","mathematical_subject":"Foundations.Unclassified","original_sha256":"4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Checkpoint

/-!
# Read-only graph-access effect

Every machine result has the sole access effect `none`.  The owner mutation
module is intentionally absent from this import cone.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessEffect.Variant4c53033874cb39d247282e05243dea93288be066d779828257370455c09e728a

namespace Mathematics.GraphAccess

inductive AccessEffect
  | none
deriving DecidableEq, Repr

def MachineResolution.authoritativeEffect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (_result : MachineResolution machine) :
    AccessEffect :=
  .none

theorem accessMachine_has_no_authoritative_effect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (result : MachineResolution machine) :
    result.authoritativeEffect = .none :=
  rfl

end Mathematics.GraphAccess
