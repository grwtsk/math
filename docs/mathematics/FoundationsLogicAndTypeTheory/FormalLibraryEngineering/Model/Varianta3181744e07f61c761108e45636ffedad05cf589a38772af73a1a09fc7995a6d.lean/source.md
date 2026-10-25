# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Varianta3181744e07f61c761108e45636ffedad05cf589a38772af73a1a09fc7995a6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5ff727ffd2d11c288a5288fc37da79509cf40b9` · SHA-256 `a3181744e07f61c761108e45636ffedad05cf589a38772af73a1a09fc7995a6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
