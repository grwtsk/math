/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RevocableAuthorization

/-!
# Joint observations, infinite families, and finite-prefix obstructions

Reuse the existing `Same`, `Refines`, `Determined`, and sound-policy definitions.
A dependent product retains every coordinate observation without assuming that
indices, source states, or observation types are finite. Refinement is proved
coordinatewise; universal and existential families of determined predicates
remain determined by the joint observation.

The consumer is an exact distinction between a separating infinite family and
a finite sufficient observer. Every Boolean sequence is reconstructed by all
its finite prefixes together. Nevertheless, no fixed finite prefix determines
whether every coordinate is true. The counterexample changes the first unseen
coordinate, so it also obstructs a sound and complete prefix-only policy.

Primary argument: function extensionality and fiber containment, followed by an
explicit diagonal pair. These are set-theoretic statements, not an assertion
that an execution reads infinitely many observations or eliminates unknowns.
No compactness, computability, fairness, or convergence theorem is assumed.
Source dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Observation.Family

universe u v w z

variable {X : Type u} {I : Type v} {Y : I → Type w}
  {J : Type z}

/-- Observation types may differ between coordinates. -/
def joint (observe : (i : I) → X → Y i) (x : X) : (i : I) → Y i :=
  fun i => observe i x

/-- Joint fibers are exactly the intersections of the coordinate fibers. -/
theorem same_joint_iff (observe : (i : I) → X → Y i) (x y : X) :
    Same (joint observe) x y ↔ ∀ i, Same (observe i) x y := by
  constructor
  · intro h i
    exact congrFun h i
  · intro h
    exact funext h

theorem joint_refines_coordinate (observe : (i : I) → X → Y i) (i : I) :
    Refines (joint observe) (observe i) :=
  fun _ _ h => congrFun h i

/-- A common refinement refines the whole family, including an empty family. -/
theorem refines_joint_iff {Z : Type z} (fine : X → Z)
    (observe : (i : I) → X → Y i) :
    Refines fine (joint observe) ↔ ∀ i, Refines fine (observe i) := by
  constructor
  · intro h i
    exact refines_trans h (joint_refines_coordinate observe i)
  · intro h x y hxy
    exact funext (fun i => h i x y hxy)

/-- Selecting coordinates cannot introduce a distinction absent from the family. -/
theorem joint_refines_selection (observe : (i : I) → X → Y i)
    (select : J → I) :
    Refines (joint observe) (joint (fun j => observe (select j))) := by
  intro x y hxy
  exact funext (fun j => congrFun hxy (select j))

/-- Repeated coordinates lose no information when every original index is selected. -/
theorem covering_selection_refines (observe : (i : I) → X → Y i)
    (select : J → I) (covers : ∀ i, ∃ j, select j = i) :
    Refines (joint (fun j => observe (select j))) (joint observe) := by
  intro x y hxy
  apply funext
  intro i
  obtain ⟨j, hj⟩ := covers i
  have h := congrFun hxy j
  change observe (select j) x = observe (select j) y at h
  simpa only [hj] using h

theorem determined_by_coordinate (observe : (i : I) → X → Y i)
    (i : I) {P : X → Prop} (h : Determined (observe i) P) :
    Determined (joint observe) P :=
  determined_of_refines (joint_refines_coordinate observe i) h

/-- Conjunction over any index type uses the corresponding coordinate witness. -/
theorem determined_forall (observe : (i : I) → X → Y i)
    (P : I → X → Prop) (h : ∀ i, Determined (observe i) (P i)) :
    Determined (joint observe) (fun x => ∀ i, P i x) := by
  intro x y hxy
  constructor
  · intro hx i
    exact (h i x y (congrFun hxy i)).mp (hx i)
  · intro hy i
    exact (h i x y (congrFun hxy i)).mpr (hy i)

/-- Existential families preserve the chosen index rather than inventing a new one. -/
theorem determined_exists (observe : (i : I) → X → Y i)
    (P : I → X → Prop) (h : ∀ i, Determined (observe i) (P i)) :
    Determined (joint observe) (fun x => ∃ i, P i x) := by
  intro x y hxy
  constructor
  · intro hx
    obtain ⟨i, hi⟩ := hx
    exact ⟨i, (h i x y (congrFun hxy i)).mp hi⟩
  · intro hy
    obtain ⟨i, hi⟩ := hy
    exact ⟨i, (h i x y (congrFun hxy i)).mpr hi⟩

/-- Eliminating every predicate-level blind spot is exactly point separation. -/
theorem all_predicates_iff_separates (observe : (i : I) → X → Y i) :
    (∀ P : X → Prop, Determined (joint observe) P) ↔
      (∀ x y, (∀ i, observe i x = observe i y) → x = y) := by
  rw [all_predicates_determined_iff_injective]
  constructor
  · intro h x y hxy
    exact h x y (funext hxy)
  · intro h x y hxy
    exact h x y (fun i => congrFun hxy i)

namespace Prefix

abbrev Sequence := Nat → Bool

/-- The observation retains exactly the first `n` Boolean coordinates. -/
def observe (n : Nat) (s : Sequence) : Fin n → Bool := fun i => s i.val

def AllTrue (s : Sequence) : Prop := ∀ k, s k = true

theorem longer_refines {n m : Nat} (h : n ≤ m) :
    Refines (observe m) (observe n) := by
  intro x y hxy
  apply funext
  intro i
  exact congrFun hxy ⟨i.val, Nat.lt_of_lt_of_le i.isLt h⟩

/-- No uniform finite bound is used in the reverse direction. -/
theorem same_all_prefixes_iff (x y : Sequence) :
    (∀ n, observe n x = observe n y) ↔ x = y := by
  constructor
  · intro h
    apply funext
    intro k
    exact congrFun (h (k + 1)) ⟨k, Nat.lt_succ_self k⟩
  · intro h
    subst y
    intro n
    rfl

theorem joint_prefixes_injective :
    ∀ x y, joint observe x = joint observe y → x = y := by
  intro x y h
  exact (same_all_prefixes_iff x y).mp (fun n => congrFun h n)

/-- This is a logical full-family result, not an executable finite decision. -/
theorem full_family_determines (P : Sequence → Prop) :
    Determined (joint observe) P :=
  (all_predicates_determined_iff_injective (joint observe)).mpr
    joint_prefixes_injective P

/-- The first unseen coordinate refutes every fixed-prefix completeness claim. -/
theorem finite_prefix_not_determined (n : Nat) :
    ¬ Determined (observe n) AllTrue := by
  apply not_determined_of_collision (observe n) AllTrue
    (x := fun _ => true) (y := fun k => if k = n then false else true)
  · apply funext
    intro i
    have different : i.val ≠ n := Nat.ne_of_lt i.isLt
    simp [observe, different]
  · intro k
    rfl
  · intro h
    have impossible := h n
    simp at impossible

/-- Soundness and completeness cannot both be recovered by relabeling a policy. -/
theorem no_exact_finite_policy (n : Nat) :
    ¬ ∃ policy : (Fin n → Bool) → Prop,
      Authorization.Policy.Sound (observe n) AllTrue policy ∧
      Authorization.Policy.Complete (observe n) AllTrue policy := by
  intro h
  exact finite_prefix_not_determined n
    ((Authorization.Policy.sound_complete_iff_determined (observe n) AllTrue).mp h)

/-- Quantifying over all finite observations is stronger than choosing one bound. -/
theorem all_true_iff_every_prefix (s : Sequence) :
    AllTrue s ↔ ∀ n, ∀ i : Fin n, observe n s i = true := by
  constructor
  · intro h n i
    exact h i.val
  · intro h k
    exact h (k + 1) ⟨k, Nat.lt_succ_self k⟩

end Prefix
end GRWTSK.Logic.Observation.Family
