/-
WholeObserverReducerAndCanonicalFactor - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d
Organized SHA-256: 5726938ba09142d5ab5d21d75e7e1b4c314eaeebcd27e6e4662242e0a8b959bf
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Entire seven-field ObserverReducer including surjectivity and both semiconjugacy laws; whole ofRealizedImage constructor with all embedded proofs, local run, canonical factor/surjectivity/commutation/uniqueness and local step/observation uniqueness. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

/- Dependency repair (2026-10-25): earlier provenance records historical
providers. The explicit canonical provider below retains every declaration
and proof body. Fresh compilation/kernel/axiom checks remain pending. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variant8cc1ad83113e89b6.ParameterizedFutureTraceQuotient
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

/--
A surjective observer-localState state machine semiconjugate to the global system.
Surjectivity means every declared localState value is realized by a global state.
-/
structure ObserverReducer
    (M : System Input State Resolution)
    (ρ : Resolution) where
  Local : Type uL
  reduce : State → Local
  localStep : Input → Local → Local
  localObserve : Local → M.Observation ρ
  reduce_surjective : Function.Surjective reduce
  step_commute : ∀ input x,
    reduce (M.step input x) = localStep input (reduce x)
  observe_commute : ∀ x,
    localObserve (reduce x) = M.observe ρ x

namespace ObserverReducer

variable {M : System Input State Resolution} {ρ : Resolution}

/--
Restrict an arbitrary raw reducer to the subtype of values it actually
realizes.  The supplied transition equation proves this image is closed.
-/
def ofRealizedImage
    {Local : Type uL}
    (reduce : State → Local)
    (localStep : Input → Local → Local)
    (localObserve : Local → M.Observation ρ)
    (step_commute : ∀ input x,
      reduce (M.step input x) = localStep input (reduce x))
    (observe_commute : ∀ x,
      localObserve (reduce x) = M.observe ρ x) :
    ObserverReducer M ρ where
  Local := {localState : Local // ∃ x : State, reduce x = localState}
  reduce x := ⟨reduce x, ⟨x, rfl⟩⟩
  localStep input localState :=
    ⟨localStep input localState.1, by
      rcases localState.2 with ⟨x, hx⟩
      refine ⟨M.step input x, ?_⟩
      rw [step_commute, hx]⟩
  localObserve localState := localObserve localState.1
  reduce_surjective := by
    rintro ⟨localState, x, hx⟩
    refine ⟨x, ?_⟩
    apply Subtype.ext
    exact hx
  step_commute input x := by
    apply Subtype.ext
    exact step_commute input x
  observe_commute := observe_commute

/-- Execute the reducer's localState transition over an input word. -/
def run
    (R : ObserverReducer M ρ)
    (inputs : List Input)
    (localState : R.Local) : R.Local :=
  match inputs with
  | [] => localState
  | input :: rest => R.run rest (R.localStep input localState)

@[simp]
theorem run_nil
    (R : ObserverReducer M ρ)
    (localState : R.Local) :
    R.run [] localState = localState :=
  rfl

@[simp]
theorem run_cons
    (R : ObserverReducer M ρ)
    (input : Input)
    (inputs : List Input)
    (localState : R.Local) :
    R.run (input :: inputs) localState =
      R.run inputs (R.localStep input localState) :=
  rfl

/-- Reduction commutes with execution of every finite input word. -/
theorem reduce_run
    (R : ObserverReducer M ρ)
    (inputs : List Input)
    (x : State) :
    R.reduce (M.run inputs x) = R.run inputs (R.reduce x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      rw [ObservableRecursion.System.run_cons, R.run_cons,
        ih, R.step_commute]

/-- Equal reducer values imply equal future traces for this observer. -/
theorem reduce_eq_implies_localCausalEquivalent
    (R : ObserverReducer M ρ)
    {x y : State}
    (h : R.reduce x = R.reduce y) :
    LocalCausalEquivalent M ρ x y := by
  intro inputs
  calc
    M.observe ρ (M.run inputs x) =
        R.localObserve (R.reduce (M.run inputs x)) :=
      (R.observe_commute _).symm
    _ = R.localObserve (R.run inputs (R.reduce x)) := by
      rw [R.reduce_run]
    _ = R.localObserve (R.run inputs (R.reduce y)) := by
      rw [h]
    _ = R.localObserve (R.reduce (M.run inputs y)) := by
      rw [R.reduce_run]
    _ = M.observe ρ (M.run inputs y) := R.observe_commute _

/-- The canonical localState class represented by a realized reducer state. -/
noncomputable def toCanonicalLocal
    (R : ObserverReducer M ρ) :
    R.Local → LocalCausalState M ρ :=
  fun localState =>
    toLocalCausal M ρ (Classical.choose (R.reduce_surjective localState))

@[simp]
theorem toCanonicalLocal_reduce
    (R : ObserverReducer M ρ)
    (x : State) :
    R.toCanonicalLocal (R.reduce x) =
      toLocalCausal M ρ x := by
  apply Quotient.sound
  apply R.reduce_eq_implies_localCausalEquivalent
  exact Classical.choose_spec (R.reduce_surjective (R.reduce x))

/-- Every canonical localState class is represented by a reducer state. -/
theorem toCanonicalLocal_surjective
    (R : ObserverReducer M ρ) :
    Function.Surjective R.toCanonicalLocal := by
  intro localState
  refine Quotient.inductionOn localState ?_
  intro x
  exact ⟨R.reduce x, R.toCanonicalLocal_reduce x⟩

/-- The canonical factor commutes with the localState transition. -/
theorem toCanonicalLocal_step
    (R : ObserverReducer M ρ)
    (input : Input)
    (localState : R.Local) :
    R.toCanonicalLocal (R.localStep input localState) =
      localCausalStep M ρ input (R.toCanonicalLocal localState) := by
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [← R.step_commute, R.toCanonicalLocal_reduce,
    R.toCanonicalLocal_reduce,
    localCausalStep_toLocalCausal M]

/-- The canonical factor preserves the localState observation. -/
theorem toCanonicalLocal_observe
    (R : ObserverReducer M ρ)
    (localState : R.Local) :
    localCausalObserve M ρ (R.toCanonicalLocal localState) =
      R.localObserve localState := by
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [R.toCanonicalLocal_reduce,
    localCausalObserve_toLocalCausal M, R.observe_commute]

/-- The canonical factor is uniquely determined by its action on reductions. -/
theorem toCanonicalLocal_unique
    (R : ObserverReducer M ρ)
    (factor : R.Local → LocalCausalState M ρ)
    (hfactor : ∀ x,
      factor (R.reduce x) = toLocalCausal M ρ x) :
    factor = R.toCanonicalLocal := by
  funext localState
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [hfactor, R.toCanonicalLocal_reduce]

/-- Surjectivity makes the localState transition forced by semiconjugacy. -/
theorem localStep_unique
    (R : ObserverReducer M ρ)
    (candidate : Input → R.Local → R.Local)
    (hCandidate : ∀ input x,
      R.reduce (M.step input x) = candidate input (R.reduce x)) :
    candidate = R.localStep := by
  funext input localState
  rcases R.reduce_surjective localState with ⟨x, hx⟩
  rw [← hx, ← hCandidate, ← R.step_commute]

/-- Surjectivity likewise makes the localState observation map unique. -/
theorem localObserve_unique
    (R : ObserverReducer M ρ)
    (candidate : R.Local → M.Observation ρ)
    (hCandidate : ∀ x,
      candidate (R.reduce x) = M.observe ρ x) :
    candidate = R.localObserve := by
  funext localState
  rcases R.reduce_surjective localState with ⟨x, hx⟩
  rw [← hx, hCandidate, R.observe_commute]

end ObserverReducer

end ObserverFactor
