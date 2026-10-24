# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Discovery.Variant0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `183b0d1fba5ea19232dc17aeff88a768decec0c2` · SHA-256 `0b47be2b665de7db30a54a5c07d6bbb23899bebe60e5da028b37d96ee0003230`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
