# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Membrane.Variant20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05322f1ab77131a4f91cd765fd56b7b583ed43dc` · SHA-256 `20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NetworkElements.Command
import NetworkElements.Projection
import NetworkElements.Session

/-! # The sole public path from network intent to the Rust reducer -/

namespace URSM.Network

inductive MembraneStage
  | transportTerminated
  | authenticated
  | originValidated
  | schemaValidated
  | canonicalized
  | authorized
  | admitted
  | enqueued
  deriving DecidableEq, Repr

inductive DeliveryClass
  | durableOutcome
  | replaceableState
  | lossyTelemetry
  deriving DecidableEq, Repr

structure ArbitratorMembrane
    (lease : Mathematics.Capability.Lease)
    (revocations : List Mathematics.Capability.Revocation)
    (time : Nat)
    (packet : CommandPacket) where
  admitted : AdmittedCommand lease revocations time packet
  finalStage : MembraneStage
  reachesCore : finalStage = .enqueued

def ArbitratorMembrane.evidenceKind
    {lease revocations time packet}
    (_ : ArbitratorMembrane lease revocations time packet) :
    Mathematics.Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem membrane_has_no_theorem_authority
    {lease revocations time packet}
    (membrane : ArbitratorMembrane lease revocations time packet) :
    Mathematics.Authority.contributesTheoremAuthority
      membrane.evidenceKind = false :=
  rfl

end URSM.Network
```
