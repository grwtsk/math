import Mathematics.Extractor.Verify
import Mathematics.Ingestion.LeanSyntax

/-! # Project-local Lean environments -/

namespace Mathematics.Ingestion

/--
Capsule-bound adapter over the existing complete canonical extractor.  This
layer does not invent a weaker parallel declaration schema.
-/
structure EnvironmentCapture where
  environmentId : StableId
  capsule : Toolchain.Capsule
  verification : Extractor.LedgerVerificationInputs
  verification_valid : verification.Valid
  extractedProjectMatches :
    verification.extraction.project.projectId = capsule.project
  toolchainDigestMatches :
    verification.extraction.toolchain.toolchainDigest =
      some capsule.toolchainDigest
  environmentDigest : Digest
  extractionReceiptDigest : Digest

namespace EnvironmentCapture

def capsuleKey (environment : EnvironmentCapture) : Toolchain.CapsuleKey :=
  environment.capsule.key

/-- Exact declaration inventory supplied by the canonical extractor. -/
def declarationInventory
    (environment : EnvironmentCapture) :
    List Extractor.DeclarationId :=
  environment.verification.extraction.declarations.toList.map
    Extractor.DeclarationRecord.declarationId

/-- The complete canonical extractor validity is available to every consumer. -/
theorem extraction_valid
    (environment : EnvironmentCapture) :
    environment.verification.extraction.Valid :=
  environment.verification_valid.extractionValid

end EnvironmentCapture

end Mathematics.Ingestion
