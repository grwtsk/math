# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RingBuffer.Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0cbbd823beda0199af456cda83851e8ef3e4c9b` · SHA-256 `2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.RingState
import DAF.Causal.ObserverFactor
import BinaryMatrix.Runtime.MatrixRing
import BinaryMatrix.Runtime.PacketRing

/-!
# Binary-matrix and filesystem ring-buffer adapters

The generic state and indexing laws are owned by `DAF.Runtime.RingState`,
which has no matrix or filesystem dependency.  This module retains the
observable-system constructions and domain adapters, including framed packet
entries.  Platform atomics and memory ordering remain outside the pure model.

The full observer exposes every slot and the sequence, and is injective;
therefore its causal quotient performs no compression.  Reduced observations
must still carry a semiconjugacy proof before they qualify as observer factors.
For example, the latest-entry reducer below is certified.  A digest or selected
matrix projection is merely an observation until such a transition proof is
provided.
-/

namespace BinaryMatrix.Runtime

open ObservableRecursion
open ObserverFactor
open FilesystemCodec
open DAF.Runtime

universe u

/-- Input-driven recursion obtained by pushing each input entry. -/
def ringSystem
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u) :
    System Entry (RingState capacity Entry) PUnit where
  Observation := fun _ => (Fin capacity → Entry) × Nat
  step entry state := state.push hcapacity entry
  observe _ state := (state.slots, state.sequence)

/-- The full ring observation exposes every slot and chronological sequence. -/
def fullObservation
    (state : RingState capacity Entry) :
    (Fin capacity → Entry) × Nat :=
  (state.slots, state.sequence)

theorem fullObservation_injective :
    Function.Injective
      (fullObservation : RingState capacity Entry →
        (Fin capacity → Entry) × Nat) := by
  intro x y h
  exact RingState.ext (congrArg Prod.fst h) (congrArg Prod.snd h)

/-- Full current observability forces causal equivalence to be equality. -/
theorem causalEquivalent_eq_of_fullObservation
    (hcapacity : 0 < capacity)
    {x y : RingState capacity Entry}
    (h : (ringSystem capacity hcapacity Entry).CausalEquivalent x y) :
    x = y := by
  apply fullObservation_injective
  simpa [ringSystem, fullObservation] using h [] PUnit.unit

/-- With full contents and sequence visible, the causal quotient is the state. -/
noncomputable def causalStateEquivRingState
    (hcapacity : 0 < capacity) :
    (ringSystem capacity hcapacity Entry).CausalState ≃
      RingState capacity Entry where
  toFun := Quotient.lift id (by
    intro x y h
    exact causalEquivalent_eq_of_fullObservation hcapacity h)
  invFun := (ringSystem capacity hcapacity Entry).toCausal
  left_inv := by
    intro causal
    refine Quotient.inductionOn causal ?_
    intro state
    rfl
  right_inv := fun _ => rfl

/-! ## A certified reduced observer -/

/-- Two observations: the complete ring, or only its latest entry. -/
inductive RingResolution
  | full
  | latest
  deriving DecidableEq

/-- Observation types for the standard full/latest ring system. -/
def RingObservation
    (capacity : Nat)
    (Entry : Type u) : RingResolution → Type u
  | .full => (Fin capacity → Entry) × Nat
  | .latest => Option Entry

/-- Ring recursion carrying both a full and a latest-entry observer. -/
def observedRingSystem
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u) :
    System Entry (RingState capacity Entry) RingResolution where
  Observation := RingObservation capacity Entry
  step entry state := state.push hcapacity entry
  observe
    | .full => fun state => (state.slots, state.sequence)
    | .latest => fun state => state.latestEntry hcapacity

/-- The latest-entry local machine is an exact semiconjugate update. -/
def latestObserverReducer
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u)
    [Inhabited Entry] :
    ObserverReducer
      (observedRingSystem capacity hcapacity Entry)
      RingResolution.latest where
  Local := Option Entry
  reduce state := state.latestEntry hcapacity
  localStep entry _ := some entry
  localObserve := id
  reduce_surjective := by
    intro value
    cases value with
    | none =>
        refine ⟨⟨fun _ => default, 0⟩, ?_⟩
        change DAF.Runtime.RingState.latestEntry
          (⟨fun _ => default, 0⟩ : DAF.Runtime.RingState capacity Entry)
          hcapacity = none
        simp [DAF.Runtime.RingState.latestEntry,
          DAF.Runtime.RingState.latestIndex]
    | some entry =>
        let initial : RingState capacity Entry :=
          ⟨fun _ => default, 0⟩
        refine ⟨initial.push hcapacity entry, ?_⟩
        exact RingState.latestEntry_push initial hcapacity entry
  step_commute := by
    intro entry state
    exact RingState.latestEntry_push state hcapacity entry
  observe_commute := by
    intro state
    rfl

/-! ## Additional explicitly certified observation families -/

/-- A ring system with one caller-selected current observation. -/
def customObservedRingSystem
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u)
    (Observation : Type*)
    (observe : RingState capacity Entry → Observation) :
    System Entry (RingState capacity Entry) PUnit where
  Observation := fun _ => Observation
  step entry state := state.push hcapacity entry
  observe := fun _ => observe

/--
Every pure observation has a conservative certified factor retaining the full
ring as local state.  A smaller reducer may replace it only after proving the
same semiconjugacy equations (as `latestObserverReducer` does).
-/
def retainedStateObserverReducer
    (capacity : Nat)
    (hcapacity : 0 < capacity)
    (Entry : Type u)
    (Observation : Type*)
    (observe : RingState capacity Entry → Observation) :
    ObserverReducer
      (customObservedRingSystem capacity hcapacity Entry Observation observe)
      PUnit.unit where
  Local := RingState capacity Entry
  reduce := id
  localStep entry state := state.push hcapacity entry
  localObserve := observe
  reduce_surjective := Function.surjective_id
  step_commute := by intros; rfl
  observe_commute := by intros; rfl

/-- The last `window` positions, newest first; unavailable positions are `none`. -/
def fixedWindowObservation
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (window : Nat) : Fin window → Option Entry :=
  fun offset =>
    if _havailable : offset.val < state.count then
      some (state.slots
        ⟨(state.sequence - 1 - offset.val) % capacity,
          Nat.mod_lt _ hcapacity⟩)
    else
      none

/-- Apply an explicit field decoder or other summary to the latest entry only. -/
def latestDecodedSummary
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (decode : Entry → Summary) : Option Summary :=
  (state.latestEntry hcapacity).map decode

/-- A digest is merely one possible latest-entry summary. -/
def latestDigestObservation
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (digest : Entry → Digest) : Option Digest :=
  latestDecodedSummary state hcapacity digest

end BinaryMatrix.Runtime
```
