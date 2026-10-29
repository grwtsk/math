/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.

Pure optimization specification. No SAT solver, source classifier or optimality
certificate for the repository is supplied. Compilation and axiom audit: NOT_RUN.
-/
import Init

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.PlacementMinimality

/-- The domain, admissibility predicate and objective must be supplied explicitly.
An inhabitant of this structure does not supply a feasible or optimal placement. -/
structure Problem (Placement : Type) where
  feasible : Placement → Prop
  cost : Placement → Nat

/-- Global minimality, relative to the complete supplied feasible domain. -/
def IsMinimum {Placement : Type} (p : Problem Placement) (x : Placement) : Prop :=
  p.feasible x ∧ ∀ y, p.feasible y → p.cost x ≤ p.cost y

/-- A lower-cost search has a witness exactly when a feasible cheaper placement exists.
An actual Boolean encoding requires its own soundness and completeness proofs. -/
def CheaperExists {Placement : Type} (p : Problem Placement) (x : Placement) : Prop :=
  ∃ y, p.feasible y ∧ p.cost y < p.cost x

/-- Feasibility plus exclusion of every cheaper feasible point implies minimality.
The exclusion is a premise, not a solver execution or a repository certificate. -/
theorem minimum_of_no_cheaper {Placement : Type} (p : Problem Placement)
    (x : Placement) (hx : p.feasible x) (h : ¬ CheaperExists p x) :
    IsMinimum p x := by
  refine ⟨hx, ?_⟩
  intro y hy
  exact Nat.le_of_not_gt (fun hlt => h ⟨y, hy, hlt⟩)

/-- Minimum cost does not assert a unique placement. -/
theorem minimum_cost_eq {Placement : Type} (p : Problem Placement)
    (x y : Placement) (hx : IsMinimum p x) (hy : IsMinimum p y) :
    p.cost x = p.cost y :=
  Nat.le_antisymm (hx.2 y hy.1) (hy.2 x hx.1)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.PlacementMinimality
