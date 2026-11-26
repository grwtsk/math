/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Combinatorics.ResourceAttainability
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal

/-!
# Exact observable replacement and resource frontiers

Consumer: `grwtsk/sofic`, `grwtsk/g` and `grwtsk/noeaaeue` execution refinements.
Uses the pointwise natural resource vectors and attainability from
`ResourceAttainability`, with source-covering `CertifiedTransversal`s.

The lower and upper cost bounds must be supplied by the concrete execution
model. Equality concerns the declared observable, which must include all
behavior that the replacement is meant to preserve. Directional resource
improvement requires a replacement for every admissible incumbent witness.
Strict improvement of a resource frontier additionally requires a budget
attained in the new state and excluded from the entire old region.

SOURCE_PROOF_CANDIDATE. Qualify checks against the exact source revision.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability

open GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal

universe u v w x y

variable {State : Type u} {Claim : Type v} {Outcome : Type x}

/-- The two bounds certify the cost order of the particular execution pair. -/
theorem cost_le_of_bounds {oldCost newCost lower upper : ResourceVec}
    (hLower : lower ≤ oldCost) (hUpper : newCost ≤ upper)
    (hOrder : upper ≤ lower) : newCost ≤ oldCost :=
  le_trans hUpper (le_trans hOrder hLower)

/-- Strict separation on one coordinate survives both bound suppliers. -/
theorem cost_lt_of_bounds {oldCost newCost lower upper : ResourceVec}
    (hLower : lower ≤ oldCost) (hUpper : newCost ≤ upper)
    (hOrder : upper ≤ lower) (hStrict : ∃ k, upper k < lower k) :
    newCost < oldCost := by
  apply lt_of_le_not_ge (cost_le_of_bounds hLower hUpper hOrder)
  intro hReverse
  obtain ⟨k, hk⟩ := hStrict
  exact (not_lt_of_ge (le_trans (hLower k) (le_trans (hReverse k) (hUpper k)))) hk

/-- Budgets that admit an execution with exactly the specified observable. -/
def observableCostRegion (A : ExecutionModel.{u,v,w} State Claim)
    (observe : State → Mode → Claim → A.Witness → Outcome)
    (I : State) (mode : Mode) (p : Claim) (result : Outcome) : Set ResourceVec :=
  {r | ∃ e, A.valid I mode p e ∧ observe I mode p e = result ∧ A.cost I mode p e ≤ r}

/-- Inclusion for all outcomes is equivalent to exact, source-wide matching
at the actual cost of each incumbent execution. -/
theorem observableCostRegion_subset_iff (A : ExecutionModel.{u,v,w} State Claim)
    (observe : State → Mode → Claim → A.Witness → Outcome)
    (I J : State) (mode : Mode) (p : Claim) :
    (∀ result, observableCostRegion A observe I mode p result ⊆
      observableCostRegion A observe J mode p result) ↔
    ∀ e, A.valid I mode p e → ∃ replacement, A.valid J mode p replacement ∧
      observe J mode p replacement = observe I mode p e ∧
      A.cost J mode p replacement ≤ A.cost I mode p e := by
  constructor
  · intro h e he
    have hOld : A.cost I mode p e ∈
        observableCostRegion A observe I mode p (observe I mode p e) :=
      ⟨e, he, rfl, le_rfl⟩
    exact h (observe I mode p e) hOld
  · intro h result budget hBudget
    obtain ⟨e, he, hResult, hCost⟩ := hBudget
    obtain ⟨replacement, hValid, hExact, hBound⟩ := h e he
    exact ⟨replacement, hValid, hExact.trans hResult, le_trans hBound hCost⟩

/-- A source-covering span whose relation explicitly certifies the observable
and the bound order supplies exact inclusion of the scoped cost regions. -/
theorem observableCostRegion_subset_of_transversal
    (A : ExecutionModel.{u,v,w} State Claim)
    (observe : State → Mode → Claim → A.Witness → Outcome)
    (I J : State) (mode : Mode) (p : Claim)
    (lower upper : A.Witness → ResourceVec)
    (hLower : ∀ e, A.valid I mode p e → lower e ≤ A.cost I mode p e)
    (hUpper : ∀ e, A.valid J mode p e → A.cost J mode p e ≤ upper e)
    (t : Transversal.{w,w,y} A.Witness A.Witness
      (A.valid I mode p) (A.valid J mode p)
      (fun e replacement =>
        observe J mode p replacement = observe I mode p e ∧ upper replacement ≤ lower e)) :
    ∀ result, observableCostRegion A observe I mode p result ⊆
      observableCostRegion A observe J mode p result := by
  apply (observableCostRegion_subset_iff A observe I J mode p).2
  intro e he
  obtain ⟨replacement, hValid, hExact, hBounds⟩ := t.exists_related e he
  exact ⟨replacement, hValid, hExact, cost_le_of_bounds (hLower e he)
    (hUpper replacement hValid) hBounds⟩

/-- Dropping outcome labels returns the comparison to the existing exact
resource filtration, with separate preservation of deductive content. -/
theorem filtrationImproves_of_observableCostRegion_subset
    (A : ExecutionModel.{u,v,w} State Claim)
    (observe : State → Mode → Claim → A.Witness → Outcome)
    (I J : State) (hContent : ∀ p, A.derives I p ↔ A.derives J p)
    (hCover : ∀ mode p result, observableCostRegion A observe I mode p result ⊆
      observableCostRegion A observe J mode p result) :
    FiltrationImproves A I J := by
  refine ⟨hContent, ?_⟩
  intro mode budget p hBudget
  obtain ⟨e, he, hCost⟩ := hBudget
  obtain ⟨replacement, hValid, _, hBound⟩ :=
    (observableCostRegion_subset_iff A observe I J mode p).1 (hCover mode p) e he
  exact ⟨replacement, hValid, le_trans hBound hCost⟩

/-- A budget is separated from the old region when every admissible old
execution exceeds it on at least one coordinate. A coordinate witness may
depend on the old execution, and a replacement upper bound is a valid budget. -/
theorem strictImprovement_of_separated_upper_bound
    (A : ExecutionModel.{u,v,w} State Claim)
    (I J : State) (hCover : FiltrationImproves A I J)
    (mode : Mode) (p : Claim) (replacement : A.Witness)
    (hValid : A.valid J mode p replacement) (lower : A.Witness → ResourceVec)
    (hLower : ∀ e, A.valid I mode p e → lower e ≤ A.cost I mode p e)
    (upper : ResourceVec)
    (hUpper : A.cost J mode p replacement ≤ upper)
    (hSeparated : ∀ e, A.valid I mode p e → ∃ k, upper k < lower e k) :
    StrictImprovement A I J := by
  refine ⟨hCover, mode, upper, p, ⟨replacement, hValid, hUpper⟩, ?_⟩
  rintro ⟨e, he, hCost⟩
  obtain ⟨k, hk⟩ := hSeparated e he
  exact (not_lt_of_ge (le_trans (hLower e he k) (hCost k))) hk

private def pairCounterexample : ExecutionModel Bool Unit where
  Witness := Bool
  derives := fun _ _ => True
  valid := fun state _ _ witness => state = false ∨ witness = false
  cost := fun state _ _ witness _ => if state then 1 else if witness then 2 else 0
  sound := fun _ _ _ _ _ => True.intro

/-- A strict pairwise improvement is compatible with loss of a cheaper
incumbent budget. Both witnesses have the same unit-valued observable. -/
theorem strict_pair_insufficient_for_filtration :
    ∃ (A : ExecutionModel.{0,0,0} Bool Unit) (e replacement : A.Witness),
      A.valid false .verify () e ∧ A.valid true .verify () replacement ∧
      A.cost true .verify () replacement < A.cost false .verify () e ∧
      ¬ FiltrationImproves A false true := by
  refine ⟨pairCounterexample, true, false, Or.inl rfl, Or.inr rfl, ?_, ?_⟩
  · apply lt_of_le_not_ge
    · intro k
      exact Nat.le_succ 1
    · intro h
      exact (by decide : ¬ (2 : Nat) ≤ 1) (h 0)
  · intro h
    let budget : ResourceVec := fun _ => 0
    have hOld : Attainable pairCounterexample false .verify budget () :=
      ⟨false, Or.inl rfl, le_rfl⟩
    obtain ⟨replacement, _, hCost⟩ := h.2 .verify budget () hOld
    exact (by decide : ¬ (1 : Nat) ≤ 0) (hCost 0)

end GRWTSK.ResourceAttainability
