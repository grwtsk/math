# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoverageBoundary.Variant631037d37615cfcc36ff4750b180e5badd0afd36b339ca82f13b5278bf1011b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a4a2dedc8d3117e13db07981aaea89e378f8ba1` · SHA-256 `b382fdd8290565619dfd80f8372f1b46e87a49eee2f9fb429dff36d1c00347e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoverageBoundary.Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CoverageBoundary.Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736","mathematical_subject":"Computation.DataStructures","original_sha256":"16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/CoverageBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Discovery

/-!
# Bounded ecosystem-coverage claims

Every ecosystem statement is relative to a finite registry version, discovery
cutoff, admission policy, discovery-source set, and exception ledger.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoverageBoundary.Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736

namespace Mathematics.Ecosystem

structure CoverageBoundary where
  registryVersion : StableId
  discoveryCutoff : Digest
  discoverySourceIds : List StableId
  admissionPolicyDigest : Digest
  registry : Registry
  discovery : DiscoveryLedger
  exceptionIds : List StableId
  continuousDiscoveryNonclaim : Nonclaim
  boundaryDigest : Digest

namespace CoverageBoundary

/-- Every observed candidate has a retained disposition record. -/
theorem candidate_has_disposition
    (boundary : CoverageBoundary)
    (candidate : DiscoveryCandidate)
    (member : candidate ∈ boundary.discovery.candidates) :
    ∃ record ∈ boundary.discovery.records,
      record.candidate = candidate :=
  (boundary.discovery.records_exact candidate).mp member

/--
The registry key remains revision-qualified; a project name is not enough to
select an ecosystem snapshot.
-/
theorem registry_lookup_is_snapshot_qualified
    (boundary : CoverageBoundary)
    (key : ProjectSnapshotKey) :
    boundary.registry.find? key =
      boundary.registry.snapshots.find?
        (fun snapshot ↦ snapshot.key = key) :=
  rfl

end CoverageBoundary

end Mathematics.Ecosystem
```
