-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EnvironmentCapture.Variant40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EnvironmentCapture.Variant40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf","mathematical_subject":"Computation.DataStructures","original_sha256":"40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Environment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Verify
import Mathematics.Ingestion.LeanSyntax

/-! # Project-local Lean environments -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EnvironmentCapture.Variant40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf

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
