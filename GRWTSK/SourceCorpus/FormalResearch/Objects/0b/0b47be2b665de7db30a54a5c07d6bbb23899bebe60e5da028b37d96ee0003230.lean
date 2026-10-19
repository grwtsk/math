import Mathematics.Ecosystem.Registry

/-! # Continuous discovery with explicit exceptions -/

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
