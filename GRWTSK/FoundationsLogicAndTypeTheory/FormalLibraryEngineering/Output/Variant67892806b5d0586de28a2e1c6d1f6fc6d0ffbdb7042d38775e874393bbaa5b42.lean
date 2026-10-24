-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","mathematical_subject":"Foundations.Unclassified","original_sha256":"46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Output.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Frontier

/-!
# Request-indexed output and certificate families

The objective fixes the payload kind.  Exactness can only be obtained from the
certificate constructor selected by the mode implementation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exactness.Variant46dd9f6aab039bba2ffc4d474ed8441afad866c375bf81a54ac27ad75c68c14d

namespace Mathematics.GraphAccess

inductive Exactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure ModeOutputFamily
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  Payload : AccessProductKind → Type
  Certificate :
    Payload req.objective.productKind → Type
  exactness :
    ∀ payload, Certificate payload → Exactness

structure CertifiedModeOutput
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (outputs : ModeOutputFamily G req) where
  payload :
    outputs.Payload req.objective.productKind
  certificate :
    outputs.Certificate payload

def CertifiedModeOutput.exactness
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (result : CertifiedModeOutput outputs) :
    Exactness :=
  outputs.exactness
    result.payload result.certificate

end Mathematics.GraphAccess
