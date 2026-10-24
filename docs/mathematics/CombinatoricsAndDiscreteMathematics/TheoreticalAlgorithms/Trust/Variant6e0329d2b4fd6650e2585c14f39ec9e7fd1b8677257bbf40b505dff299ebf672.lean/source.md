# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trust.Variant6e0329d2b4fd6650e2585c14f39ec9e7fd1b8677257bbf40b505dff299ebf672

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aafb4585e8d86ddfaf95d93b4c8ba94c98aca22b` · SHA-256 `25e3cd143e71b99d45bc7a55b18d5d420e33027bdcc8b61a7db82b53f54a4bbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustGrant.Variant774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TrustGrant.Variant774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588","mathematical_subject":"Computation.DataStructures","original_sha256":"774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Juris/Trust.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Lease

/-!
# Explicit human trust

Trust is a human-issued, scoped, revocable lease.  It is not inferred from
competence, operating-system permission, performance evidence, or recognition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustGrant.Variant774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588

namespace Mathematics.Juris

open Mathematics.Capability

structure TrustGrant where
  lease : Lease
  issuer_is_human :
    lease.grant.issuer.kind = .human

def TrustGrant.ActiveAt
    (trust : TrustGrant)
    (revocations : List Revocation)
    (time : Nat) : Prop :=
  trust.lease.ValidAt revocations time

end Mathematics.Juris
```
