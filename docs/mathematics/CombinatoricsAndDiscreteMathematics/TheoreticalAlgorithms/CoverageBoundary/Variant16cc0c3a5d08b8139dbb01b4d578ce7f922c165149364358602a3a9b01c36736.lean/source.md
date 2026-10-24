# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoverageBoundary.Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f9ec3ffcba744c666b50a67de9bf19e231e7a36` · SHA-256 `16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Discovery

/-!
# Bounded ecosystem-coverage claims

Every ecosystem statement is relative to a finite registry version, discovery
cutoff, admission policy, discovery-source set, and exception ledger.
-/

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
