/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
# Boolean zeros of a nonnegative quadratic

The real quadratic `(∑ i, a i * x i - target)²` is nonnegative on every real
vector. Its restriction to Boolean vectors has a zero precisely when the
selected natural weights sum to the target. Every other Boolean value is at
least one, and a certified error strictly below one half preserves this
pointwise zero test.

These are mathematical encoding and separation results. No polynomial-time
solver, complexity-class equality, or reduction to a particular Weil kernel
is asserted. A real relaxation can have a zero while every Boolean value is
positive; the final example proves that distinction explicitly.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Combinatorics.BooleanQuadraticZeros

variable {ι : Type*} [Fintype ι]

/-- An actual real quadratic, evaluated before imposing Boolean constraints. -/
def energy (weights : ι → ℕ) (target : ℕ) (x : ι → ℝ) : ℝ :=
  ((∑ i, (weights i : ℝ) * x i) - (target : ℝ)) ^ 2

/-- Binary coordinates retain their values as real numbers. -/
def booleanVector (x : ι → Bool) : ι → ℝ :=
  fun i => if x i then 1 else 0

/-- The same real quadratic restricted to Boolean inputs. -/
def booleanEnergy (weights : ι → ℕ) (target : ℕ) (x : ι → Bool) : ℝ :=
  energy weights target (booleanVector x)

/-- The exact natural-number sum selected by a Boolean assignment. -/
def selectedWeight (weights : ι → ℕ) (x : ι → Bool) : ℕ :=
  ∑ i, if x i then weights i else 0

theorem energy_nonneg (weights : ι → ℕ) (target : ℕ) (x : ι → ℝ) :
    0 ≤ energy weights target x :=
  sq_nonneg _

theorem booleanEnergy_nonneg (weights : ι → ℕ) (target : ℕ) (x : ι → Bool) :
    0 ≤ booleanEnergy weights target x :=
  energy_nonneg weights target (booleanVector x)

/-- The real quadratic has exactly the intended integer-valued Boolean restriction. -/
theorem booleanEnergy_eq_square (weights : ι → ℕ) (target : ℕ) (x : ι → Bool) :
    booleanEnergy weights target x =
      ((selectedWeight weights x : ℝ) - (target : ℝ)) ^ 2 := by
  unfold booleanEnergy energy booleanVector selectedWeight
  simp only [Nat.cast_sum, Nat.cast_ite, Nat.cast_zero, mul_ite, mul_one, mul_zero]

/-- A Boolean zero is precisely a solution of the original integer equation. -/
theorem booleanEnergy_eq_zero_iff (weights : ι → ℕ) (target : ℕ) (x : ι → Bool) :
    booleanEnergy weights target x = 0 ↔ selectedWeight weights x = target := by
  rw [booleanEnergy_eq_square, sq_eq_zero_iff, sub_eq_zero]
  exact Nat.cast_inj

/-- A false integer equation is separated from zero by a full unit of energy. -/
theorem one_le_booleanEnergy_of_ne (weights : ι → ℕ) (target : ℕ) (x : ι → Bool)
    (hne : selectedWeight weights x ≠ target) :
    1 ≤ booleanEnergy weights target x := by
  have hz : (selectedWeight weights x : ℤ) - (target : ℤ) ≠ 0 := by
    intro h
    apply hne
    exact_mod_cast sub_eq_zero.mp h
  have hpos : (0 : ℤ) < ((selectedWeight weights x : ℤ) - (target : ℤ)) ^ 2 :=
    sq_pos_of_ne_zero hz
  have hgap : (1 : ℤ) ≤ ((selectedWeight weights x : ℤ) - (target : ℤ)) ^ 2 := by
    omega
  rw [booleanEnergy_eq_square]
  exact_mod_cast hgap

theorem booleanEnergy_eq_zero_or_one_le (weights : ι → ℕ) (target : ℕ)
    (x : ι → Bool) :
    booleanEnergy weights target x = 0 ∨ 1 ≤ booleanEnergy weights target x := by
  by_cases h : selectedWeight weights x = target
  · exact Or.inl ((booleanEnergy_eq_zero_iff weights target x).mpr h)
  · exact Or.inr (one_le_booleanEnergy_of_ne weights target x h)

/-- Exclusion certificates must cover every Boolean assignment. -/
theorem no_boolean_zero_iff_unit_lower (weights : ι → ℕ) (target : ℕ) :
    (¬ ∃ x : ι → Bool, booleanEnergy weights target x = 0) ↔
      ∀ x : ι → Bool, 1 ≤ booleanEnergy weights target x := by
  constructor
  · intro h x
    exact one_le_booleanEnergy_of_ne weights target x (fun hx =>
      h ⟨x, (booleanEnergy_eq_zero_iff weights target x).mpr hx⟩)
  · intro h ⟨x, hx⟩
    have := h x
    linarith

/-- An error below one half preserves the zero test for this supplied assignment.
It does not assert that the minimum over all assignments has been computed. -/
theorem booleanEnergy_zero_iff_estimate_lt_half
    (weights : ι → ℕ) (target : ℕ) (x : ι → Bool) (estimate : ℝ)
    (herror : |estimate - booleanEnergy weights target x| < 1 / 2) :
    booleanEnergy weights target x = 0 ↔ estimate < 1 / 2 := by
  obtain ⟨hlower, hupper⟩ := abs_lt.mp herror
  constructor
  · intro hzero
    linarith
  · intro hestimate
    rcases booleanEnergy_eq_zero_or_one_le weights target x with hzero | hgap
    · exact hzero
    · linarith

section FiniteSubset

variable [DecidableEq ι]

/-- The selected indices, with each index available at most once. -/
def selectedSet (x : ι → Bool) : Finset ι :=
  Finset.univ.filter fun i => x i = true

omit [DecidableEq ι] in
theorem selectedWeight_eq_sum_selectedSet (weights : ι → ℕ) (x : ι → Bool) :
    selectedWeight weights x = ∑ i ∈ selectedSet x, weights i := by
  simp [selectedWeight, selectedSet, Finset.sum_filter]

theorem selectedSet_of_finset (s : Finset ι) :
    selectedSet (fun i => decide (i ∈ s)) = s := by
  ext i
  simp [selectedSet]

/-- The usual indexed Subset Sum predicate. Equal weights at distinct indices
are permitted and remain distinct selectable items. -/
def SubsetSum (weights : ι → ℕ) (target : ℕ) : Prop :=
  ∃ s : Finset ι, (∑ i ∈ s, weights i) = target

theorem exists_boolean_zero_iff_subsetSum (weights : ι → ℕ) (target : ℕ) :
    (∃ x : ι → Bool, booleanEnergy weights target x = 0) ↔ SubsetSum weights target := by
  constructor
  · rintro ⟨x, hx⟩
    refine ⟨selectedSet x, ?_⟩
    rw [← selectedWeight_eq_sum_selectedSet]
    exact (booleanEnergy_eq_zero_iff weights target x).mp hx
  · rintro ⟨s, hs⟩
    refine ⟨fun i => decide (i ∈ s), (booleanEnergy_eq_zero_iff _ _ _).mpr ?_⟩
    rw [selectedWeight_eq_sum_selectedSet, selectedSet_of_finset]
    exact hs

theorem not_subsetSum_iff_unit_lower (weights : ι → ℕ) (target : ℕ) :
    ¬ SubsetSum weights target ↔ ∀ x : ι → Bool, 1 ≤ booleanEnergy weights target x := by
  rw [← exists_boolean_zero_iff_subsetSum, no_boolean_zero_iff_unit_lower]

end FiniteSubset

/-- A nonnegative quadratic with a real zero excluded by the Boolean restriction. -/
def relaxationEnergy (x : ℝ) : ℝ := (2 * x - 1) ^ 2

theorem relaxationEnergy_nonneg (x : ℝ) : 0 ≤ relaxationEnergy x := sq_nonneg _

theorem relaxationEnergy_half : relaxationEnergy (1 / 2) = 0 := by
  norm_num [relaxationEnergy]

theorem relaxationEnergy_boolean (b : Bool) :
    relaxationEnergy (if b then 1 else 0) = 1 := by
  cases b <;> norm_num [relaxationEnergy]

theorem real_zero_and_no_boolean_zero :
    (∃ x : ℝ, relaxationEnergy x = 0) ∧
      ¬ ∃ b : Bool, relaxationEnergy (if b then 1 else 0) = 0 := by
  refine ⟨⟨1 / 2, relaxationEnergy_half⟩, ?_⟩
  rintro ⟨b, hb⟩
  rw [relaxationEnergy_boolean] at hb
  norm_num at hb

end GRWTSK.Combinatorics.BooleanQuadraticZeros
