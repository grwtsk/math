/-
FullObservationCausalQuotient — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef
Organized SHA-256: 4f5fb5f5be2c8cf51368336c277b3549c49ff3c95e3c5d402bab57fb9e388175
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The full observer exposes slots and unbounded Nat sequence. Injectivity and the empty-input-word implication make its causal quotient equivalent to the entire original RingState, not a compressed or finite state space. Positive capacity and arbitrary Entry universe remain exact. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

import DAF.Runtime.RingState
import DAF.Causal.ObserverFactor
import BitMatrix.Runtime.MatrixRing
import BitMatrix.Runtime.PacketRing

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

namespace BitMatrix.Runtime

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

end BitMatrix.Runtime
