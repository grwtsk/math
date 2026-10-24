import Mathematics.Authority.Evidence

/-! # Irreducible network and project kinds -/

namespace URSM.Network

inductive Lane
  | command
  | outcome
  | state
  | telemetry
  deriving DecidableEq, Repr

def Lane.durable : Lane → Bool
  | .command => false
  | .outcome => true
  | .state => false
  | .telemetry => false

inductive ProjectKind
  | rust
  | lean
  | composite
  deriving DecidableEq, Repr

inductive OutcomeStatus
  | committed
  | rejected
  | failed
  | stale
  | cancelled
  | quarantined
  deriving DecidableEq, Repr

inductive AuthorityLabel
  | kernelTheorem
  | checkedOperational
  | runtimeObservation
  | contractPayload
  | unresolved
  deriving DecidableEq, Repr

def AuthorityLabel.evidenceKind : AuthorityLabel → Mathematics.Authority.EvidenceKind
  | .kernelTheorem => .fixedLeanPredicate
  | .checkedOperational => .runtimeObservation
  | .runtimeObservation => .runtimeObservation
  | .contractPayload => .contractProposition
  | .unresolved => .runtimeObservation

end URSM.Network
