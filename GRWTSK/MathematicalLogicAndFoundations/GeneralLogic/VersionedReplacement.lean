/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.RankedReachability

/-!
# Versioned replacement, stale expectations, and the ABA obstruction

An immutable mathematical state contains a generation and a value. Replacement
advances the generation even when the new value equals the old one. Reuse the
existing exact-length `Path`; its generation equation is proved by induction.
It excludes reuse of any old expected generation after a positive path.

Primary argument: one successor adds one, so a path of length n adds n.
Authorization is an independent predicate evaluated at the actual source state.
An expected version is neither permission nor a theorem about remote atomicity.
Two replacements may restore the value while leaving a provably different
version. This explicitly refutes equality-of-content as a stale-state test.

Consumer: the mathematical contract needed by fenced updates and replacement
plans. No Git implementation, host mutation, lock service, authentication,
wall-clock lease, machine-integer wraparound, or distributed transaction is
implemented or verified. Natural generations are unbounded; an implementation
must prove checked-arithmetic correspondence and atomic effect admission.
Dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Versioned

universe u
variable {Value : Type u}

open GRWTSK.Order.Ranking

structure State (Value : Type u) where
  generation : Nat
  value : Value

def replace (current : State Value) (next : Value) : State Value :=
  ⟨current.generation + 1, next⟩

/-- Exact expected source, including generation rather than value alone. -/
def Fresh (expected current : State Value) : Prop :=
  current.generation = expected.generation ∧ current.value = expected.value

/-- A mathematical successor relation, not an externally executed effect. -/
def Successor (current next : State Value) : Prop :=
  ∃ value, next = replace current value

/-- Permission is separate from the exact expected-state comparison. -/
def Admitted (allowed : State Value → Value → Prop)
    (expected current : State Value) (next : Value) : Prop :=
  Fresh expected current ∧ allowed current next

theorem fresh_refl (state : State Value) : Fresh state state := ⟨rfl, rfl⟩

theorem fresh_iff_eq (expected current : State Value) :
    Fresh expected current ↔ current = expected := by
  cases expected with
  | mk eg ev =>
    cases current with
    | mk cg cv =>
      constructor
      · intro h
        obtain ⟨hg, hv⟩ := h
        cases hg
        cases hv
        rfl
      · intro h
        cases h
        exact ⟨rfl, rfl⟩

theorem successor_generation {current next : State Value}
    (h : Successor current next) : next.generation = current.generation + 1 := by
  obtain ⟨value, hnext⟩ := h
  rw [hnext]
  rfl

/-- Exact path accounting includes empty paths and repeated values. -/
theorem path_generation {n : Nat} {first last : State Value}
    (path : Path Successor n first last) :
    last.generation = first.generation + n := by
  induction path with
  | nil first => simp
  | cons edge tail ih =>
    have increment := successor_generation edge
    omega

/-- Every positive successor path invalidates its original expected generation. -/
theorem positive_path_not_fresh {n : Nat} {first last : State Value}
    (positive : 0 < n) (path : Path Successor n first last) :
    ¬ Fresh first last := by
  intro h
  have generations := path_generation path
  have same := h.1
  omega

theorem no_positive_cycle {n : Nat} {state : State Value}
    (positive : 0 < n) : ¬ Path Successor n state state := by
  intro path
  exact positive_path_not_fresh positive path (fresh_refl state)

/-- Reusing a plan after one accepted replacement is stale, regardless of its payload. -/
theorem replacement_invalidates_expectation (expected current : State Value)
    (fresh : Fresh expected current) (next : Value) :
    ¬ Fresh expected (replace current next) := by
  intro h
  have old := fresh.1
  have new := h.1
  change current.generation + 1 = expected.generation at new
  omega

/-- A second candidate based on the same predecessor must be reconsidered. -/
theorem competing_plan_stale (allowed : State Value → Value → Prop)
    (expected current : State Value) (first second : Value)
    (admitted : Admitted allowed expected current first) :
    ¬ Admitted allowed expected (replace current first) second := by
  intro h
  exact replacement_invalidates_expectation expected current admitted.1 first h.1

/-- Exact expected state cannot compensate for absent current permission. -/
theorem forbidden_not_admitted (allowed : State Value → Value → Prop)
    (expected current : State Value) (next : Value)
    (forbidden : ¬ allowed current next) : ¬ Admitted allowed expected current next :=
  fun h => forbidden h.2

theorem admitted_requires_current_permission (allowed : State Value → Value → Prop)
    {expected current : State Value} {next : Value}
    (h : Admitted allowed expected current next) : allowed current next := h.2

/-- Narrowing permission preserves soundness of any still-admitted step. -/
theorem admitted_of_stronger_policy {strong weak : State Value → Value → Prop}
    (included : ∀ state value, strong state value → weak state value)
    {expected current : State Value} {next : Value}
    (h : Admitted strong expected current next) : Admitted weak expected current next :=
  ⟨h.1, included current next h.2⟩

/-- Returning to identical content does not return to the previous generation. -/
theorem content_return_preserves_version_change (state : State Value) (middle : Value) :
    (replace (replace state middle) state.value).value = state.value ∧
      (replace (replace state middle) state.value).generation = state.generation + 2 ∧
      ¬ Fresh state (replace (replace state middle) state.value) := by
  refine ⟨rfl, ?_, ?_⟩
  · simp [replace, Nat.add_assoc]
  · intro h
    have same := h.1
    change state.generation + 1 + 1 = state.generation at same
    omega

/-- Even reinstallation of the very same value consumes a distinct generation. -/
theorem same_value_still_stale (state : State Value) :
    (replace state state.value).value = state.value ∧
      ¬ Fresh state (replace state state.value) :=
  ⟨rfl, replacement_invalidates_expectation state state (fresh_refl state) state.value⟩

/-- Freshness alone cannot authenticate or authorize a replacement. -/
theorem freshness_is_not_authority :
    ∃ state : State Unit, Fresh state state ∧
      ¬ Admitted (fun _ _ => False) state state () := by
  refine ⟨⟨0, ()⟩, fresh_refl _, ?_⟩
  intro h
  exact h.2

end GRWTSK.Logic.Versioned
