import Mathematics.Resolution.Kind
import Mathlib.Data.Finset.Basic

/-!
# Finite committed invocation cuts

The cut is immutable and contains finite obligation, proof, and exactly-once
event registries.  Its seed witnesses make every obligation frequency positive.
-/

namespace Mathematics.Resolution

universe u v w

structure InvocationCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  snapshotDigest : String
  graphDigest : String
  instanceDigest : String
  authorityDigest : String
  obligations : Finset Obligation
  proofRegistry : Obligation → Finset Proof
  events : Finset Event
  canonicalize : Event → Obligation
  seed : Obligation → Event
  seed_mem :
    ∀ obligation ∈ obligations, seed obligation ∈ events
  seed_target :
    ∀ obligation ∈ obligations,
      canonicalize (seed obligation) = obligation
  overflowPolicy : OverflowPolicy

structure CutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  Valid : InvocationCut Obligation Proof Event → Prop
  decidableValid :
    ∀ cut, Decidable (Valid cut)

attribute [instance] CutValidator.decidableValid

structure CommittedCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator : CutValidator Obligation Proof Event) where
  cut : InvocationCut Obligation Proof Event
  valid : validator.Valid cut

end Mathematics.Resolution
