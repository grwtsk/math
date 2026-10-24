# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Advice.Variant979cb6ca3457881359d85db522b2f1fd03ec5de0fd4159b440ce2f2f8e975cf3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69a87fdda3b03113c801c5442bb8c0737875319b` · SHA-256 `68661ab4be8b8d9dea598b30b4eb7a616b9ca4fb69666f74cf96f982f2ba9d92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResolutionAdvice.Variant5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResolutionAdvice.Variant5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949","mathematical_subject":"Computation.DataStructures","original_sha256":"5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Advice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Result

/-!
# Advice is not authority

Heuristic guidance has its own constructor and cannot inhabit a certificate
constructor without an explicit, independently checked conversion.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResolutionAdvice.Variant5750f773974b173ae74834d89e097b86d98c41ca48305b7514af6f47594ee949

namespace Mathematics.Resolution

universe u v

structure ResolutionAdvice (Obligation : Type u) where
  suggested : List Obligation
  summaryDigest : String

inductive ResolverArtifact
    (Obligation : Type u)
    (Certificate : Type v)
  | advice (value : ResolutionAdvice Obligation)
  | observation (digest : String)
  | certificate (value : Certificate)

theorem advice_constructor_ne_certificate
    (advice : ResolutionAdvice Obligation)
    (certificate : Certificate) :
    ResolverArtifact.advice advice ≠
      ResolverArtifact.certificate certificate := by
  intro equal
  cases equal

end Mathematics.Resolution
```
