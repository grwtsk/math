/-
RetainedStateObserverFactor — exact individually reviewed source
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

/- Caller-selected observation and complete identity retained-state reducer stay together without narrowing their types. The local state is the whole old RingState; no smaller reducer, digest semiconjugacy, lossy compression or runtime certification is invented. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

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

end BitMatrix.Runtime
