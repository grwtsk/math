# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Discovery.Variantb7f2ee6c0147cbc208ac8f30a4bd37513a91f76263bad636ef7d70fc8c80a811

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e45356558c5006f43981ef65ce7e90d3c8a2cfd` · SHA-256 `ce1f85558a7d2a4513ac1124482712fa32e0740ff4d757cade04c1c03687d9ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiscoveryCandidate.Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DiscoveryCandidate.Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230","mathematical_subject":"Computation.DataStructures","original_sha256":"0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Discovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Registry

/-! # Continuous discovery with explicit exceptions -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiscoveryCandidate.Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230

namespace Mathematics.Ecosystem

/-- One legally and technically unjudged discovery candidate. -/
structure DiscoveryCandidate where
  candidateId : StableId
  locator : String
  observedDigest : Digest
  deriving DecidableEq, Repr

/-- Every candidate receives an explicit finite-snapshot disposition. -/
inductive DiscoveryDisposition
  | admitted (snapshot : ProjectSnapshotKey)
  | rejected (reason : String)
  | pending (reason : String)
  deriving DecidableEq, Repr

structure DiscoveryRecord where
  candidate : DiscoveryCandidate
  disposition : DiscoveryDisposition
  decisionDigest : Digest
  deriving DecidableEq, Repr

/--
Coverage is finite and explicit.  It makes no claim that discovery of the
open ecosystem has terminated.
-/
structure DiscoveryLedger where
  candidates : List DiscoveryCandidate
  records : List DiscoveryRecord
  candidateIdsUnique :
    (candidates.map DiscoveryCandidate.candidateId).Nodup
  records_exact :
    ∀ candidate,
      candidate ∈ candidates ↔
        ∃ record ∈ records, record.candidate = candidate
  continuousDiscoveryNonclaim : Nonclaim

end Mathematics.Ecosystem
```
