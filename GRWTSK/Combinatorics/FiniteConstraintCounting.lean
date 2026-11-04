/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Card
import Lean.Elab.Tactic.Omega

/-!
# Exact finite constraint counting and binary integer regions

Reuse Mathlib's finite sets, finite function types and equivalences. A finite
candidate universe and a predicate define the exact solution set; its cardinality
is independent of enumerator order and obeys monotonicity and inclusion-exclusion.
Counting under a changed representation requires a genuine feasibility-preserving
equivalence, not matching names, similar outputs, or duplicated descriptions.

The binary specialization uses `Fin n → Fin 2`: dimension and Boolean bounds are
in the type. Integer affine inequalities are evaluated over every coordinate.
An explicit embedding and inverse identify assignments with precisely the
0/1 integer points satisfying those inequalities. Thus arbitrary finite linear
eligibility, exclusion and resource constraints can be counted without claiming
that a convex relaxation has no spurious points.

Primary argument: filter membership, finite-set cardinality, and mutually inverse
coordinate maps. Consumer: complete bounded allocation inventories and overlap
accounting. Counts do not establish availability, fairness, independence of
reviewers, authorization, or efficient large-dimensional enumeration. There is
no identification with an unspecified Putnam method or a symmetry quotient.
Mathlib source inspected at d13f23b723b8a846827a245b89c10fc7d3f11612.
Upstream mathematical/library results retain their authorship and licenses.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.ConstraintCounting

universe u v
variable {A : Type u} {B : Type v} [Fintype A] [Fintype B]

noncomputable def solutions (predicate : A → Prop) : Finset A := by
  classical
  exact Finset.univ.filter predicate

noncomputable def count (predicate : A → Prop) : Nat := (solutions predicate).card

@[simp] theorem mem_solutions (predicate : A → Prop) (a : A) :
    a ∈ solutions predicate ↔ predicate a := by
  classical
  simp [solutions]

/-- Positivity is equivalent to actual feasibility in the supplied finite universe. -/
theorem count_positive_iff (predicate : A → Prop) :
    0 < count predicate ↔ ∃ a, predicate a := by
  classical
  change 0 < (solutions predicate).card ↔ _
  rw [Finset.card_pos]
  constructor
  · intro h
    obtain ⟨a, ha⟩ := h
    exact ⟨a, (mem_solutions predicate a).mp ha⟩
  · intro h
    obtain ⟨a, ha⟩ := h
    exact ⟨a, (mem_solutions predicate a).mpr ha⟩

theorem count_zero_iff (predicate : A → Prop) :
    count predicate = 0 ↔ ¬ ∃ a, predicate a := by
  have equivalent := count_positive_iff predicate
  constructor
  · intro zero witness
    have positive := equivalent.mpr witness
    omega
  · intro absent
    by_cases positive : 0 < count predicate
    · exact False.elim (absent (equivalent.mp positive))
    · omega

/-- Stronger constraints cannot increase the admitted set. -/
theorem count_mono {strong weak : A → Prop}
    (included : ∀ a, strong a → weak a) : count strong ≤ count weak := by
  apply Finset.card_le_card
  intro a ha
  exact (mem_solutions weak a).mpr (included a ((mem_solutions strong a).mp ha))

/-- This bound concerns mathematical cardinality, not running time or memory. -/
theorem count_le_universe (predicate : A → Prop) : count predicate ≤ Fintype.card A :=
  Finset.card_le_univ (solutions predicate)

theorem solutions_conjunction [DecidableEq A] (P Q : A → Prop) :
    solutions (fun a => P a ∧ Q a) = solutions P ∩ solutions Q := by
  classical
  ext a
  simp

theorem solutions_disjunction [DecidableEq A] (P Q : A → Prop) :
    solutions (fun a => P a ∨ Q a) = solutions P ∪ solutions Q := by
  classical
  ext a
  simp

/-- Overlapping eligible populations must not be counted twice. -/
theorem inclusion_exclusion (P Q : A → Prop) :
    count (fun a => P a ∨ Q a) + count (fun a => P a ∧ Q a) =
      count P + count Q := by
  classical
  unfold count
  rw [solutions_disjunction, solutions_conjunction]
  exact Finset.card_union_add_card_inter _ _

/-- Repeated descriptions of one condition do not create additional assignments. -/
theorem count_duplicate (P : A → Prop) : count (fun a => P a ∨ P a) = count P := by
  have same : (fun a => P a ∨ P a) = P := by
    funext a
    exact propext ⟨fun h => h.elim (fun hp => hp) (fun hp => hp), Or.inl⟩
  rw [same]

/-- A representation symmetry must preserve the full feasibility predicate. -/
theorem count_equiv (equivalence : A ≃ B) (P : A → Prop) (Q : B → Prop)
    (preserves : ∀ a, P a ↔ Q (equivalence a)) : count P = count Q := by
  classical
  let restricted : {a : A // P a} ≃ {b : B // Q b} := {
    toFun := fun a => ⟨equivalence a.val, (preserves a.val).mp a.property⟩
    invFun := fun b => ⟨equivalence.symm b.val,
      (preserves (equivalence.symm b.val)).mpr (by simpa using b.property)⟩
    left_inv := by
      intro a
      apply Subtype.ext
      exact equivalence.symm_apply_apply a.val
    right_inv := by
      intro b
      apply Subtype.ext
      exact equivalence.apply_symm_apply b.val
  }
  have leftCard : count P = Fintype.card {a : A // P a} := by
    exact (Fintype.card_of_subtype (solutions P) (mem_solutions P)).symm
  have rightCard : count Q = Fintype.card {b : B // Q b} := by
    exact (Fintype.card_of_subtype (solutions Q) (mem_solutions Q)).symm
  exact leftCard.trans ((Fintype.card_congr restricted).trans rightCard.symm)

namespace Binary

abbrev Assignment (n : Nat) := Fin n → Fin 2

structure Constraint (n : Nat) where
  coefficient : Fin n → Int
  bound : Int

/-- The affine inequality's left-hand side, over every coordinate exactly once. -/
def evaluate {n : Nat} (row : Constraint n) (point : Fin n → Int) : Int :=
  (List.finRange n).foldr (fun i total => row.coefficient i * point i + total) 0

def embed {n : Nat} (assignment : Assignment n) : Fin n → Int :=
  fun i => (assignment i).val

def BinaryPoint {n : Nat} (point : Fin n → Int) : Prop :=
  ∀ i, 0 ≤ point i ∧ point i ≤ 1

def satisfies {n : Nat} (rows : List (Constraint n)) (assignment : Assignment n) : Prop :=
  ∀ row, row ∈ rows → evaluate row (embed assignment) ≤ row.bound

/-- The original integer point is retained, with both binary bounds proved. -/
def decode {n : Nat} (point : Fin n → Int) (binary : BinaryPoint point) : Assignment n :=
  fun i => ⟨(point i).toNat, by have bounds := binary i; omega⟩

theorem embed_binary {n : Nat} (assignment : Assignment n) : BinaryPoint (embed assignment) := by
  intro i
  have bound := (assignment i).isLt
  change 0 ≤ ((assignment i).val : Int) ∧ ((assignment i).val : Int) ≤ 1
  omega

theorem embed_decode {n : Nat} (point : Fin n → Int) (binary : BinaryPoint point) :
    embed (decode point binary) = point := by
  funext i
  have bounds := binary i
  change ((point i).toNat : Int) = point i
  omega

theorem decode_embed {n : Nat} (assignment : Assignment n) :
    decode (embed assignment) (embed_binary assignment) = assignment := by
  funext i
  apply Fin.ext
  rfl

/-- Feasible finite functions and feasible integer points are the same objects up to coding. -/
theorem feasible_iff_integer_point {n : Nat} (rows : List (Constraint n)) :
    (∃ assignment : Assignment n, satisfies rows assignment) ↔
      ∃ point : Fin n → Int, BinaryPoint point ∧
        ∀ row, row ∈ rows → evaluate row point ≤ row.bound := by
  constructor
  · intro h
    obtain ⟨assignment, valid⟩ := h
    exact ⟨embed assignment, embed_binary assignment, valid⟩
  · intro h
    obtain ⟨point, binary, valid⟩ := h
    refine ⟨decode point binary, ?_⟩
    intro row hrow
    rw [embed_decode]
    exact valid row hrow

/-- Exact finite counting applies to arbitrary finite-dimensional binary constraints. -/
theorem count_positive_iff_integer_point {n : Nat} (rows : List (Constraint n)) :
    0 < count (satisfies rows) ↔
      ∃ point : Fin n → Int, BinaryPoint point ∧
        ∀ row, row ∈ rows → evaluate row point ≤ row.bound :=
  (count_positive_iff (satisfies rows)).trans (feasible_iff_integer_point rows)

/-- Adding constraints can only remove existing assignments. -/
theorem count_antitone_constraints {n : Nat} (old extra : List (Constraint n)) :
    count (satisfies (old ++ extra)) ≤ count (satisfies old) := by
  apply count_mono
  intro assignment valid row present
  exact valid row (List.mem_append.mpr (Or.inl present))

end Binary
end GRWTSK.Combinatorics.ConstraintCounting
