# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Environment.Variant40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0876da6f6dc8d599e46b145d473803c950c4bd9` · SHA-256 `40f0aed33afa6317dbdca6ebd7fdf77ada19350373d22adb4b88eedf98a309bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
