/-
Versioned metadata for the algebraization-completeness extension.
-/

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
