import Std

set_option autoImplicit false

namespace NoeoueueFormalGate

structure State where
  epoch : Nat
  trace : Int
  scope : Nat
  lastEvent : Nat
  lower : Int
  upper : Int
  deriving DecidableEq, Repr

structure Intent where
  baseEpoch : Nat
  scope : Nat
  eventId : Nat
  delta : Int
  routeGap : Nat
  evidencePresent : Bool
  deriving DecidableEq, Repr

def Invariant (state : State) : Prop :=
  state.lower ≤ state.trace ∧ state.trace ≤ state.upper

def ValidTransition (before : State) (intent : Intent) (after : State) : Prop :=
  Invariant before ∧
  intent.scope = before.scope ∧
  intent.baseEpoch = before.epoch ∧
  before.lastEvent < intent.eventId ∧
  0 < intent.routeGap ∧
  intent.evidencePresent = true ∧
  after.epoch = before.epoch + 1 ∧
  after.trace = before.trace + intent.delta ∧
  after.scope = before.scope ∧
  after.lastEvent = intent.eventId ∧
  after.lower = before.lower ∧
  after.upper = before.upper ∧
  Invariant after

end NoeoueueFormalGate
