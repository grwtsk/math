# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientElimination.FiniteGraphAndObservationComponents.Variant580cc666770ddb3d.GlobalLocalFactorAndRealizedObserverTuple

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81ae2b57b15a8a6806cd4d91ee016d3fd7b5be94` · SHA-256 `53d15fd0ba085a8173e651e7378ddd6d1c32afaf5e401f521593691cbcf33d28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GlobalLocalFactorAndRealizedObserverTuple - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d
Organized SHA-256: 5726938ba09142d5ab5d21d75e7e1b4c314eaeebcd27e6e4662242e0a8b959bf
PMD: 510.0.070.020.080.020 quotient elimination (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Global-to-local surjective factor and exact transition/observation compatibility, joint observer tuple injection and equivalence to its realized image only. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.CausalState
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variant580cc666770ddb3d.LocalObserverQuotientAndDescendedDynamics

/-!
# Observer-localState causal factors

The global causal quotient remembers the complete future behavior of the
selected observer family.  This module also forms the quotient seen by one
observer and proves that the global quotient maps onto it.  The tuple of all
localState classes determines a global causal class, but only tuples in the
realized image are claimed to come from a global state.

An `ObserverReducer` is an implementation-level localState state machine with a
proved semiconjugacy to the global recursion.  Its localState type is required to be
realized by the reducer; `ofRealizedImage` supplies this condition for an
arbitrary raw reducer by restricting its codomain.  Every such implementation
maps onto the canonical localState causal quotient.  It is equivalent to that
quotient only under the separately stated `Exact` kernel hypothesis.

Causal minimality is relative to the selected observations, and causal
equivalence need not be equality of underlying states.  The results make no
claim about reversibility, phases, cycle data, homology, avalanche behavior,
cryptographic security, or the sufficiency of one observed trajectory.
-/

namespace ObserverFactor

open ObservableRecursion

universe uI uS uR uO uL

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-! ## The canonical quotient for one observer -/

/-- Forget all observers except `ρ`. -/
def causalToLocal
    (M : System Input State Resolution)
    (ρ : Resolution) :
    M.CausalState → LocalCausalState M ρ :=
  Quotient.map id (fun _ _ h inputs => h inputs ρ)

@[simp]
theorem causalToLocal_toCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    causalToLocal M ρ (M.toCausal x) =
      toLocalCausal M ρ x :=
  rfl

/-- Every localState causal class is represented by a global causal class. -/
theorem causalToLocal_surjective
    (M : System Input State Resolution)
    (ρ : Resolution) :
    Function.Surjective (causalToLocal M ρ) := by
  intro localState
  refine Quotient.inductionOn localState ?_
  intro x
  exact ⟨M.toCausal x, rfl⟩

/-- The global-to-localState factor commutes with every input transition. -/
theorem causalToLocal_step
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input)
    (c : M.CausalState) :
    causalToLocal M ρ (M.causalStep input c) =
      localCausalStep M ρ input (causalToLocal M ρ c) := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- The global and localState descended observations agree. -/
theorem causalToLocal_observe
    (M : System Input State Resolution)
    (ρ : Resolution)
    (c : M.CausalState) :
    localCausalObserve M ρ (causalToLocal M ρ c) =
      M.causalObserve ρ c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-! ## The compatible tuple of every localState class -/

/-- Collect the localState causal class seen at every resolution. -/
def observerTuple
    (M : System Input State Resolution) :
    M.CausalState → (∀ ρ, LocalCausalState M ρ) :=
  fun c ρ => causalToLocal M ρ c

/-- All localState causal classes together determine the global causal class. -/
theorem observerTuple_injective
    (M : System Input State Resolution) :
    Function.Injective (observerTuple M) := by
  intro c d
  refine Quotient.inductionOn₂ c d ?_
  intro x y hxy
  apply Quotient.sound
  intro inputs ρ
  have hlocal :
      toLocalCausal M ρ x = toLocalCausal M ρ y := by
    exact congrFun hxy ρ
  exact (toLocalCausal_eq_iff M ρ x y).mp hlocal inputs

/-- The subtype of localState-class tuples actually realized by a global class. -/
def ObserverTupleImage
    (M : System Input State Resolution) :=
  {tuple : ∀ ρ, LocalCausalState M ρ //
    ∃ c : M.CausalState, observerTuple M c = tuple}

/-- Send a global causal class to its realized observer tuple. -/
def toObserverTupleImage
    (M : System Input State Resolution)
    (c : M.CausalState) : ObserverTupleImage M :=
  ⟨observerTuple M c, ⟨c, rfl⟩⟩

/-- Global causal states are exactly the realized compatible localState tuples. -/
noncomputable def causalStateEquivObserverTupleImage
    (M : System Input State Resolution) :
    M.CausalState ≃ ObserverTupleImage M :=
  Equiv.ofBijective (toObserverTupleImage M) ⟨by
    intro c d h
    apply observerTuple_injective M
    exact congrArg Subtype.val h, by
    rintro ⟨tuple, c, hc⟩
    refine ⟨c, ?_⟩
    apply Subtype.ext
    exact hc⟩

/-! ## User-supplied observer reducers -/

namespace ObserverReducer

variable {M : System Input State Resolution} {ρ : Resolution}

end ObserverReducer

end ObserverFactor
```
