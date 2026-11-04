/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.StateTraceRefinement
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.StateTraceCost

/-!
# Resource accounting across state-and-trace refinements

Connect the existing additive event cost to the representation-refinement
square. Mapping labels preserves cost only under a charge-comparison premise.
For transferring a target budget to the source, the direction is source charge
less than or equal to target charge. The reverse inequality only certifies that
the displayed execution is cheaper; it cannot certify source resource safety.

Primary argument: list induction proves the exact change-of-label equation.
Existing pointwise cost monotonicity supplies the inequalities. The refinement
square identifies the target event list with the actual mapped source list.
A two-link charge comparison composes without assuming source/target labels
coincide. A zero-charge target is an explicit under-accounting counterexample.

Consumer: resource guarantees accompanying typed semantic refinement. Charge
functions remain mathematical inputs; they are not empirical energy estimates,
measurement attestations or authority. Costs of omitted observations require
additional modeling and cannot be inferred from this result.
Reuse includes concurrently published StateTraceCost at
 e0108ce89dd28451cd463fdf0425aea711f618c6; its evidence status is not upgraded.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Processing.StateTrace.Resource.Transport

universe uR uE uS uT uL uM uN uA uB uC uD

variable {R : Type uR} {E : Type uE} {S : Type uS} {T : Type uT}
  {L : Type uL} {M : Type uM} {N : Type uN}
  {A : Type uA} {B : Type uB} {C : Type uC} {D : Type uD}

/-- Exact change of event labels, with the cost function pulled back. -/
theorem cost_map (charge : M → Nat) (encode : L → M) (events : List L) :
    cost charge (events.map encode) = cost (fun e => charge (encode e)) events := by
  induction events with
  | nil => rfl
  | cons event rest ih =>
      change charge (encode event) + cost charge (rest.map encode) =
        charge (encode event) + cost (fun e => charge (encode e)) rest
      rw [ih]

theorem cost_map_exact (sourceCharge : L → Nat) (targetCharge : M → Nat)
    (encode : L → M) (calibrated : ∀ e, targetCharge (encode e) = sourceCharge e)
    (events : List L) : cost targetCharge (events.map encode) = cost sourceCharge events := by
  rw [cost_map]
  have same : (fun e => targetCharge (encode e)) = sourceCharge := funext calibrated
  rw [same]

/-- Lower target charges justify only a lower target cost, not a source upper bound. -/
theorem mapped_cost_le_source (sourceCharge : L → Nat) (targetCharge : M → Nat)
    (encode : L → M) (bounded : ∀ e, targetCharge (encode e) ≤ sourceCharge e)
    (events : List L) : cost targetCharge (events.map encode) ≤ cost sourceCharge events := by
  rw [cost_map]
  exact cost_mono bounded events

/-- Conservative target charges are the useful direction for source budget admission. -/
theorem source_cost_le_mapped (sourceCharge : L → Nat) (targetCharge : M → Nat)
    (encode : L → M) (bounded : ∀ e, sourceCharge e ≤ targetCharge (encode e))
    (events : List L) : cost sourceCharge events ≤ cost targetCharge (events.map encode) := by
  rw [cost_map]
  exact cost_mono bounded events

/-- Equality of all result components yields the actual target event sequence. -/
theorem events_of_refinement (state : S → T) (event : L → M)
    (input : A → C) (output : B → D)
    (source : Stage R E S L A B) (target : Stage R E T M C D)
    (comparison : Refinement.Refines state event input output source target)
    (a : A) (s : S) :
    (target (input a) (state s)).events = (source a s).events.map event :=
  (congrArg (fun r : Result R E T M D => r.events) (comparison a s)).symm

theorem exact_cost_of_refinement (state : S → T) (event : L → M)
    (input : A → C) (output : B → D)
    (source : Stage R E S L A B) (target : Stage R E T M C D)
    (comparison : Refinement.Refines state event input output source target)
    (sourceCharge : L → Nat) (targetCharge : M → Nat)
    (calibrated : ∀ e, targetCharge (event e) = sourceCharge e)
    (a : A) (s : S) :
    cost targetCharge (target (input a) (state s)).events =
      cost sourceCharge (source a s).events := by
  rw [events_of_refinement state event input output source target comparison a s]
  exact cost_map_exact sourceCharge targetCharge event calibrated _

/-- A target bound returns to the source only with conservative charge comparison. -/
theorem source_budget_of_refinement (state : S → T) (event : L → M)
    (input : A → C) (output : B → D)
    (source : Stage R E S L A B) (target : Stage R E T M C D)
    (comparison : Refinement.Refines state event input output source target)
    (sourceCharge : L → Nat) (targetCharge : M → Nat)
    (conservative : ∀ e, sourceCharge e ≤ targetCharge (event e))
    (a : A) (s : S) (budget : Nat)
    (accepted : cost targetCharge (target (input a) (state s)).events ≤ budget) :
    cost sourceCharge (source a s).events ≤ budget := by
  rw [events_of_refinement state event input output source target comparison a s] at accepted
  exact Nat.le_trans (source_cost_le_mapped sourceCharge targetCharge event conservative _) accepted

/-- Exact charge comparisons compose in the same order as label representations. -/
theorem two_link_cost (sourceCharge : L → Nat) (middleCharge : M → Nat)
    (targetCharge : N → Nat) (first : L → M) (second : M → N)
    (hfirst : ∀ e, middleCharge (first e) = sourceCharge e)
    (hsecond : ∀ e, targetCharge (second e) = middleCharge e) (events : List L) :
    cost targetCharge ((events.map first).map second) = cost sourceCharge events :=
  (cost_map_exact middleCharge targetCharge second hsecond (events.map first)).trans
    (cost_map_exact sourceCharge middleCharge first hfirst events)

/-- Semantic projection without charge calibration can hide the entire positive cost. -/
theorem uncalibrated_projection_understates :
    let source : Result Unit Unit Unit Bool Unit := ⟨.success (), (), [true]⟩
    let target : Result Unit Unit Unit Unit Unit := ⟨.success (), (), [()]⟩
    Refinement.project id (fun _ : Bool => ()) id source = target ∧
      cost (fun _ : Unit => 0) target.events = 0 ∧
      cost (fun _ : Bool => 1) source.events = 1 := by
  exact ⟨rfl, rfl, rfl⟩

end GRWTSK.Processing.StateTrace.Resource.Transport
