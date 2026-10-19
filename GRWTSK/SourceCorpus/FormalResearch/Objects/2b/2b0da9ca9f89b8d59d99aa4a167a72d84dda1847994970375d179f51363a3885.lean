namespace GatewayProof
namespace ReverseLink

inductive RefusalCode
| registrationRefused
| sessionStale
| selectedClientStale
| configuredClientAbsent
| sessionAbsent
| ambiguousSessions
| queueFull
| forwardRefused
| forwardTimeout
deriving Repr, DecidableEq

def retryable : RefusalCode -> Bool
| .registrationRefused => false
| .sessionStale => true
| .selectedClientStale => true
| .configuredClientAbsent => true
| .sessionAbsent => true
| .ambiguousSessions => true
| .queueFull => true
| .forwardRefused => true
| .forwardTimeout => true

structure BrokerModel where
  healthySessionCount : Nat
  configuredClientPresent : Bool
  queueSize : Nat
  pendingMax : Nat
deriving Repr, DecidableEq

def ambiguous (s : BrokerModel) : Prop :=
  s.healthySessionCount > 1

def queueFull (s : BrokerModel) : Prop :=
  s.queueSize >= s.pendingMax

theorem registration_refused_not_retryable :
    retryable RefusalCode.registrationRefused = false := by
  rfl

theorem forward_timeout_retryable :
    retryable RefusalCode.forwardTimeout = true := by
  rfl

theorem ambiguous_definition (s : BrokerModel) :
    ambiguous s = (s.healthySessionCount > 1) := by
  rfl

theorem queue_full_definition (s : BrokerModel) :
    queueFull s = (s.queueSize >= s.pendingMax) := by
  rfl

end ReverseLink
end GatewayProof
