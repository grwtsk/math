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
