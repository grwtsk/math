/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Std
import Lean.Elab.Tactic.Omega

/-!
# Ranked reachability with explicit progress hypotheses

A path carries its exact number of edges. Strict decrease of a natural-valued
rank bounds every path length and rules out positive cycles and infinite traces.
To reach a terminal state one also needs a successor at every nonterminal state.
The existence theorem constructs a bounded path by induction on available rank.

Primary argument: each edge consumes at least one unit of rank, so summing
along a path gives `length + finalRank ≤ initialRank`. The existence argument
uses ordinary induction on a rank budget, not an assumed terminal witness.
Two hostile examples separate strict descent from local progress: a self-loop
satisfies weak descent but never terminates; an isolated nonterminal satisfies
strict descent vacuously but cannot advance.

Consumer: finite correction processes and ranked handoff relations. An edge is
only an assumed relation; the mathematics neither executes it nor proves its
availability in an external system. Step bounds are not wall-clock guarantees.
Novelty not assessed; independent review and all Lean verification: NOT_RUN.
Target: leanprover/lean4:v4.34.1; standard library plus kernel-producing omega.
-/

namespace GRWTSK.Order.Ranking

universe u v

variable {α : Type u} {β : Type v}

/-- A finite path, retaining both endpoints and its exact number of edges. -/
inductive Path (R : α → α → Prop) : Nat → α → α → Prop where
  | nil (x : α) : Path R 0 x x
  | cons {n : Nat} {x y z : α} :
      R x y → Path R n y z → Path R (n + 1) x z

namespace Path

variable {R : α → α → Prop}

theorem single {x y : α} (h : R x y) : Path R 1 x y :=
  .cons h (.nil y)

theorem append {n : Nat} {x y : α} (p : Path R n x y) :
    ∀ {m : Nat} {z : α}, Path R m y z → Path R (n + m) x z := by
  induction p with
  | nil x =>
    intro m z q
    simpa using q
  | cons edge tail ih =>
    intro m z q
    simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
      Path.cons edge (ih q)

/-- A relation-preserving map transports paths without inventing new edges. -/
theorem map (f : α → β) (S : β → β → Prop)
    (preserves : ∀ x y, R x y → S (f x) (f y))
    {n : Nat} {x y : α} (p : Path R n x y) : Path S n (f x) (f y) := by
  induction p with
  | nil x => exact .nil (f x)
  | cons edge tail ih => exact .cons (preserves _ _ edge) ih

/-- An invariant requires an explicit preservation proof for every edge. -/
theorem preserves (P : α → Prop)
    (step : ∀ x y, P x → R x y → P y) {n : Nat} {x y : α}
    (p : Path R n x y) : P x → P y := by
  induction p with
  | nil x => intro hx; exact hx
  | cons edge tail ih =>
    intro hx
    exact ih (step _ _ hx edge)

end Path

/-- Natural strict descent supplies an exact additive path certificate. -/
theorem path_rank_bound (R : α → α → Prop) (rank : α → Nat)
    (decreases : ∀ x y, R x y → rank y < rank x)
    {n : Nat} {x y : α} (p : Path R n x y) : n + rank y ≤ rank x := by
  induction p with
  | nil x => simp
  | cons edge tail ih =>
    have hdrop := decreases _ _ edge
    omega

theorem path_length_bound (R : α → α → Prop) (rank : α → Nat)
    (decreases : ∀ x y, R x y → rank y < rank x)
    {n : Nat} {x y : α} (p : Path R n x y) : n ≤ rank x := by
  have h := path_rank_bound R rank decreases p
  omega

theorem no_positive_cycle (R : α → α → Prop) (rank : α → Nat)
    (decreases : ∀ x y, R x y → rank y < rank x)
    {n : Nat} {x : α} (positive : 0 < n) : ¬ Path R n x x := by
  intro p
  have bound := path_rank_bound R rank decreases p
  omega

/-- The proof produces a terminal path; it does not assume one in its input. -/
theorem reaches_terminal_with_budget (R : α → α → Prop)
    (rank : α → Nat) (terminal : α → Prop)
    (progress : ∀ x, ¬ terminal x → ∃ y, R x y)
    (decreases : ∀ x y, R x y → rank y < rank x) :
    ∀ budget x, rank x ≤ budget →
      ∃ n y, Path R n x y ∧ terminal y ∧ n ≤ rank x := by
  classical
  intro budget
  induction budget with
  | zero =>
    intro x hx
    by_cases doneHere : terminal x
    · exact ⟨0, x, .nil x, doneHere, Nat.zero_le _⟩
    · obtain ⟨y, edge⟩ := progress x doneHere
      have hdrop := decreases x y edge
      omega
  | succ budget ih =>
    intro x hx
    by_cases doneHere : terminal x
    · exact ⟨0, x, .nil x, doneHere, Nat.zero_le _⟩
    · obtain ⟨y, edge⟩ := progress x doneHere
      have hdrop := decreases x y edge
      have nextBudget : rank y ≤ budget := by omega
      obtain ⟨n, z, tail, doneThere, bound⟩ := ih y nextBudget
      refine ⟨n + 1, z, .cons edge tail, doneThere, ?_⟩
      omega

theorem reaches_terminal (R : α → α → Prop) (rank : α → Nat)
    (terminal : α → Prop)
    (progress : ∀ x, ¬ terminal x → ∃ y, R x y)
    (decreases : ∀ x y, R x y → rank y < rank x) (x : α) :
    ∃ n y, Path R n x y ∧ terminal y ∧ n ≤ rank x :=
  reaches_terminal_with_budget R rank terminal progress decreases (rank x) x
    (Nat.le_refl _)

/-- An invariant and ranked progress compose without identifying their premises. -/
theorem reaches_terminal_preserving (R : α → α → Prop) (rank : α → Nat)
    (terminal invariant : α → Prop)
    (progress : ∀ x, ¬ terminal x → ∃ y, R x y)
    (decreases : ∀ x y, R x y → rank y < rank x)
    (preserved : ∀ x y, invariant x → R x y → invariant y)
    (x : α) (hx : invariant x) :
    ∃ n y, Path R n x y ∧ terminal y ∧ invariant y ∧ n ≤ rank x := by
  obtain ⟨n, y, path, doneThere, bound⟩ :=
    reaches_terminal R rank terminal progress decreases x
  exact ⟨n, y, path, doneThere, path.preserves invariant preserved hx, bound⟩

/-- A direct numerical argument also excludes an infinite edge sequence. -/
theorem no_infinite_trace (R : α → α → Prop) (rank : α → Nat)
    (decreases : ∀ x y, R x y → rank y < rank x)
    (trace : Nat → α) : ¬ (∀ n, R (trace n) (trace (n + 1))) := by
  intro valid
  have bounds : ∀ n, rank (trace n) + n ≤ rank (trace 0) := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hdrop := decreases _ _ (valid n)
      omega
  have impossible := bounds (rank (trace 0) + 1)
  omega

/-- Weak descent and a successor at every state do not imply termination. -/
theorem weak_descent_does_not_suffice :
    ∃ (R : Unit → Unit → Prop) (rank : Unit → Nat) (terminal : Unit → Prop),
      (∀ x, ¬ terminal x → ∃ y, R x y) ∧
      (∀ x y, R x y → rank y ≤ rank x) ∧
      ¬ (∃ n y, Path R n () y ∧ terminal y) := by
  refine ⟨fun _ _ => True, fun _ => 0, fun _ => False, ?_, ?_, ?_⟩
  · intro x hx
    exact ⟨(), trivial⟩
  · intro x y edge
    exact Nat.le_refl 0
  · intro h
    obtain ⟨n, y, path, impossible⟩ := h
    exact impossible

/-- Strict descent without local progress can leave a nonterminal state stuck. -/
theorem descent_without_progress_does_not_suffice :
    ∃ (R : Unit → Unit → Prop) (rank : Unit → Nat) (terminal : Unit → Prop),
      (∀ x y, R x y → rank y < rank x) ∧
      ¬ (∃ n y, Path R n () y ∧ terminal y) := by
  refine ⟨fun _ _ => False, fun _ => 0, fun _ => False, ?_, ?_⟩
  · intro x y impossible
    exact impossible.elim
  · intro h
    obtain ⟨n, y, path, impossible⟩ := h
    exact impossible

end GRWTSK.Order.Ranking
