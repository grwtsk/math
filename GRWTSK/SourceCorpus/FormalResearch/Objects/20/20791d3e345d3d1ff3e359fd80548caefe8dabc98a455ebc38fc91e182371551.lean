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
