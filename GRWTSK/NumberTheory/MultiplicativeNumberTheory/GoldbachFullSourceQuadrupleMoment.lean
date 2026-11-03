/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWindowSecondMoment
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full-source second moment as actual ordered prime-pair correlations.
No quadruple upper bound is supplied. The diagonal bound is a LOWER
bound and cannot be used to eliminate exceptional targets.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFullSourceQuadrupleMoment
open GoldbachWeighted

def orderedQuadrupleTerm (N : ℕ) (uv rs : ℕ × ℕ) : ℝ :=
  goldbachLogTerm N uv * goldbachLogTerm N rs

theorem actual_full_source_square (N : ℕ) :
    goldbachLogMass N ^ 2 =
      ∑ uv ∈ goldbachBox N, ∑ rs ∈ goldbachBox N, orderedQuadrupleTerm N uv rs := by
  simp only [goldbachLogMass, pow_two, Finset.sum_mul_sum, orderedQuadrupleTerm]

theorem actual_window_quadruple_moment (W : Finset ℕ) (h : ℕ → ℝ) :
    (∑ N ∈ W, goldbachLogMass N ^ 2 / h N) =
      ∑ N ∈ W, (∑ uv ∈ goldbachBox N, ∑ rs ∈ goldbachBox N,
        orderedQuadrupleTerm N uv rs) / h N := by
  apply Finset.sum_congr rfl
  intro N _
  rw [actual_full_source_square]

theorem ordered_diagonal_le_full_square (N : ℕ) :
    (∑ uv ∈ goldbachBox N, goldbachLogTerm N uv ^ 2) ≤ goldbachLogMass N ^ 2 := by
  exact Finset.sum_sq_le_sq_sum_of_nonneg
    (fun uv _ => goldbachLogTerm_nonneg N uv)

theorem weighted_diagonal_le_full_moment (W : Finset ℕ) (h : ℕ → ℝ)
    (hh : ∀ N ∈ W, 0 ≤ h N) :
    (∑ N ∈ W, (∑ uv ∈ goldbachBox N, goldbachLogTerm N uv ^ 2) / h N) ≤
      ∑ N ∈ W, goldbachLogMass N ^ 2 / h N := by
  apply Finset.sum_le_sum
  intro N hN
  exact div_le_div_of_nonneg_right (ordered_diagonal_le_full_square N) (hh N hN)

end GRWTSK.NumberTheory.Primes.GoldbachFullSourceQuadrupleMoment
