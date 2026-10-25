# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Identity.Variant08865efa39339d90878ee63d1561c63c03f429e500ae753dcb624a5b28b4556b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dae9cf39d4120037a6a7410c46948c1633b835d` · SHA-256 `604b42ec3b504828b3421d234b63b95b9def5cd455a0a909f6928aa4f85b86fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ObligationIdentity.Variant71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ObligationIdentity.Variant71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88","mathematical_subject":"Logic.Foundations","original_sha256":"71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Identity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Kind

/-!
# Permanent and versioned obligation identity

Grouping coordinates never replace the permanent subject, its snapshot-bound
version, or its source reference.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ObligationIdentity.Variant71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88

namespace Mathematics.Resolution

universe u

structure ObligationIdentity where
  permanentId : String
  versionDigest : String
  sourceReference : String
  sourceDigest : String
  deriving DecidableEq, Repr

structure IdentitySystem (Obligation : Type u) where
  identify : Obligation → ObligationIdentity
  injective : Function.Injective identify

theorem IdentitySystem.equal_of_identity_equal
    (system : IdentitySystem Obligation)
    {left right : Obligation}
    (equal : system.identify left = system.identify right) :
    left = right :=
  system.injective equal

end Mathematics.Resolution
```
