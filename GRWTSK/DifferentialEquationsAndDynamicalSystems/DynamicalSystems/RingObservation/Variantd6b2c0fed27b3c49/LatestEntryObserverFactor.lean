/-
LatestEntryObserverFactor — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef
Organized SHA-256: 4f5fb5f5be2c8cf51368336c277b3549c49ff3c95e3c5d402bab57fb9e388175
PMD: 510.6.050 dynamical systems (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The full/latest dependent observation family and entire latest-entry reducer stay together. Inhabited Entry is retained for both surjectivity cases; none uses a zero-sequence default state and some uses exact push/latestEntry. Local transition and both commuting equations remain whole. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

/- Provider binding (2026-10-25): the retained exact ring-state and observer
reducer components are imported explicitly. Matrix/packet imports below remain
required and unresolved; no compilation or proof acceptance is asserted. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingState.Variantb47be07ca78f4f07b03b4f9b7e8c37975ec853842a7d76a05f14a185f53392e1
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variant580cc666770ddb3d.WholeObserverReducerAndCanonicalFactor
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

end BitMatrix.Runtime
