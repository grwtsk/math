-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MachineValidationStatus.Variant6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MachineValidationStatus.Variant6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2","mathematical_subject":"Foundations.Unclassified","original_sha256":"6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Versioned metadata for the algebraization-completeness extension.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MachineValidationStatus.Variant6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2

namespace FCRS.Algebraization

/-- Machine-validation state of an artifact version. -/
inductive MachineValidationStatus where
  | notExecuted
  | staticChecksOnly
  | leanKernelChecked
  deriving Repr, DecidableEq

/-- Version and provenance metadata; mathematical statements remain atemporal. -/
structure ArtifactMetadata where
  profileIdentifier : String
  literatureStatusDate : String
  mathematicalScope : String
  machineValidationStatus : MachineValidationStatus
  staticAuditExecuted : Bool
  turtleSyntaxParsed : Bool
  supersedes : Option String

/-- Metadata emitted with this source package. -/
def algHenCompletenessMetadata : ArtifactMetadata where
  profileIdentifier := "alg-hen-completeness-v1"
  literatureStatusDate := "2026-08-07"
  mathematicalScope := "atemporal"
  machineValidationStatus := .notExecuted
  staticAuditExecuted := true
  turtleSyntaxParsed := true
  supersedes := none

end FCRS.Algebraization
