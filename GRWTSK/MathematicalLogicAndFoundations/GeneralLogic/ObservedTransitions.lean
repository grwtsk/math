/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.RankedReachability

/-!
# Observation quotients of transition relations

The existing observation fibers and exact-length paths are reused. Existential
projection always maps concrete edges and paths to abstract ones. The converse
needs a source-fiber compatibility premise: every transition from one source
representative can be matched from any equal-observation representative.

Primary argument: match one projected edge and induct on the existing `Path`.
The result lifts an abstract path from any concrete representative of its initial
observation, retaining length and the final observation. Safety then transfers
for a separately determined predicate. This is not infinite-trace, fairness,
implementation-refinement, or authentication evidence.

A four-state counterexample independently exhibits two projected edges that
cannot be composed concretely. Equal intermediate observations alone do not
identify intermediate states. Consumer: counterexample validation and deciding
when a projection supports sound transition reasoning rather than only displays.
Dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Observation.Transition

universe u v
variable {X : Type u} {Y : Type v}

open GRWTSK.Order.Ranking

/-- Existence of compatible endpoints, with no hidden representative choice. -/
def projected (observe : X → Y) (step : X → X → Prop) (a b : Y) : Prop :=
  ∃ x y, observe x = a ∧ observe y = b ∧ step x y

/-- Matching transitions is stronger than preserving a state predicate. -/
def Compatible (observe : X → Y) (step : X → X → Prop) : Prop :=
  ∀ x y, Same observe x y → ∀ x', step x x' →
    ∃ y', step y y' ∧ Same observe x' y'

theorem project_edge (observe : X → Y) (step : X → X → Prop)
    {x y : X} (edge : step x y) : projected observe step (observe x) (observe y) :=
  ⟨x, y, rfl, rfl, edge⟩

/-- Every concrete path has a projected path with exactly the same length. -/
theorem project_path (observe : X → Y) (step : X → X → Prop)
    {n : Nat} {x y : X} (path : Path step n x y) :
    Path (projected observe step) n (observe x) (observe y) :=
  path.map observe (projected observe step) (fun _ _ h => project_edge observe step h)

/-- Compatibility prevents switching to an unavailable source representative. -/
theorem lift_edge (observe : X → Y) (step : X → X → Prop)
    (compatible : Compatible observe step) (x : X) {b : Y}
    (edge : projected observe step (observe x) b) :
    ∃ y, step x y ∧ observe y = b := by
  obtain ⟨a, c, ha, hc, hac⟩ := edge
  obtain ⟨y, hxy, hcy⟩ := compatible a x ha c hac
  exact ⟨y, hxy, (Eq.symm hcy).trans hc⟩

/-- Path lifting quantifies over every representative, not just a favorable one. -/
theorem lift_path (observe : X → Y) (step : X → X → Prop)
    (compatible : Compatible observe step) {n : Nat} {a b : Y}
    (path : Path (projected observe step) n a b) :
    ∀ x, observe x = a → ∃ y, Path step n x y ∧ observe y = b := by
  induction path with
  | nil a =>
    intro x hx
    exact ⟨x, .nil x, hx⟩
  | cons edge tail ih =>
    intro x hx
    have atSource : projected observe step (observe x) _ := by
      rw [hx]
      exact edge
    obtain ⟨y, hxy, hy⟩ := lift_edge observe step compatible x atSource
    obtain ⟨z, hyz, hz⟩ := ih y hy
    exact ⟨z, .cons hxy hyz, hz⟩

/-- Projection is exact for finite reachability under the matching premise. -/
theorem path_iff (observe : X → Y) (step : X → X → Prop)
    (compatible : Compatible observe step) (n : Nat) (x : X) (b : Y) :
    Path (projected observe step) n (observe x) b ↔
      ∃ y, Path step n x y ∧ observe y = b := by
  constructor
  · intro h
    exact lift_path observe step compatible h x rfl
  · intro h
    obtain ⟨y, hxy, hy⟩ := h
    have result := project_path observe step hxy
    rw [hy] at result
    exact result

/-- A concrete invariant transfers only with a justified predicate comparison. -/
theorem abstract_path_preserves (observe : X → Y) (step : X → X → Prop)
    (compatible : Compatible observe step) (P : X → Prop)
    (determined : Determined observe P)
    (preserved : ∀ x y, P x → step x y → P y)
    {n : Nat} {x y : X}
    (path : Path (projected observe step) n (observe x) (observe y))
    (initial : P x) : P y := by
  obtain ⟨z, concrete, sameFinal⟩ := lift_path observe step compatible path x rfl
  exact (determined z y sameFinal).mp (concrete.preserves P preserved initial)

/-- Concrete infinite traces project pointwise; no converse is asserted here. -/
theorem project_trace (observe : X → Y) (step : X → X → Prop)
    (trace : Nat → X) (valid : ∀ n, step (trace n) (trace (n + 1))) :
    ∀ n, projected observe step (observe (trace n)) (observe (trace (n + 1))) :=
  fun n => project_edge observe step (valid n)

namespace Counterexample

inductive State where
  | start | left | right | finish
  deriving DecidableEq

def observe : State → Nat
  | .start => 0
  | .left => 1
  | .right => 1
  | .finish => 2

def step (x y : State) : Prop :=
  (x = .start ∧ y = .left) ∨ (x = .right ∧ y = .finish)

theorem no_step_from_left (y : State) : ¬ step .left y := by
  intro h
  cases h with
  | inl h => cases h.1
  | inr h => cases h.1

theorem projected_two_step_path : Path (projected observe step) 2 0 2 := by
  apply Path.cons (y := 1)
  · exact ⟨.start, .left, rfl, rfl, Or.inl ⟨rfl, rfl⟩⟩
  · apply Path.cons (y := 2)
    · exact ⟨.right, .finish, rfl, rfl, Or.inr ⟨rfl, rfl⟩⟩
    · exact Path.nil 2

/-- The abstract middle vertex conceals two incompatible concrete representatives. -/
theorem no_concrete_two_step_path (z : State) : ¬ Path step 2 .start z := by
  intro path
  cases path with
  | cons first tail =>
    cases first with
    | inl h =>
      cases h.2
      cases tail with
      | cons second rest => exact no_step_from_left _ second
    | inr h => cases h.1

theorem incompatible : ¬ Compatible observe step := by
  intro h
  obtain ⟨y, edge, sameFinal⟩ :=
    h State.right State.left rfl State.finish (Or.inr ⟨rfl, rfl⟩)
  exact no_step_from_left y edge

end Counterexample
end GRWTSK.Logic.Observation.Transition
