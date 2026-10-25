# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionReturn.Variant4b3552a5a6be4658cb5579ac77731535e22d9ebb63a751cf1aac6d044c9a2559

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c80b1eaeb24a16acb326c8136c6cd89f215ec809` · SHA-256 `a5d3e59111183105a19a63416667e4ad47ead6e4bd2d3416a2a3fecc7dcb68d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveObstructionCertificate.Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrimitiveObstructionCertificate.Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421","mathematical_subject":"Foundations.Unclassified","original_sha256":"f58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Integration/ObstructionReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Primitive obstruction return

Inaccessibility follows only from explicit completion semantics, a first
infeasible boundary, and a primitive core.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimitiveObstructionCertificate.Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421

namespace Mathematics.GraphAccess

structure PrimitiveObstructionCertificate where
  blockedTargetRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalObstructionRef : String
  completionSemanticsAdmitted : Prop
  primitiveCoreMinimal : Prop
  targetBlocked : Prop
  completionSemanticsEvidence : completionSemanticsAdmitted
  primitiveCoreMinimalEvidence : primitiveCoreMinimal
  targetBlockedEvidence : targetBlocked

theorem primitive_obstruction_blocks_target
    (certificate : PrimitiveObstructionCertificate) :
    certificate.targetBlocked :=
  certificate.targetBlockedEvidence

end Mathematics.GraphAccess
```
