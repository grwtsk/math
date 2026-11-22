/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axioms, fresh kernel replay: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiPolynomialActionCompatibility
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiCoefficientEnvelope
import Mathlib.Tactic

/-!
# Unconditional, source-prime coefficient contraction and linear Hankel inverse bound

This SOURCE PROOF CANDIDATE removes the formerly explicit hCoeff
premise by (i) the actual prime-Jacobi finite coefficient recursion,
(ii) the independent coefficient-to-Krylov proof candidate, and
(iii) the strict integer prime gap a_(n+1) >= a_n+1.
The mathematical proof is complete, but this file and all its
transitive imported SOURCE_PROOF_CANDIDATE modules still need a
real pinned Lean build, independent checker and axiom audit.
No RH theorem, zeta zero, or Alpoge final result is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialCoefficientContraction

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiHankelInverse
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiCoefficientEnvelope
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialActionCompatibility

/-- Actual finite coefficient l1 norm of the original prime-Jacobi
three-term polynomial at degree n. It is finite by construction. -/
def rowCoefficientAbs (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range (n + 1),
    |recurrencePolynomialCoefficient n j|

theorem rowCoefficientAbs_zero : rowCoefficientAbs 0 = 1 := by
  simp [rowCoefficientAbs, recurrencePolynomialCoefficient]

theorem rowCoefficientAbs_one :
    rowCoefficientAbs 1 = 1 / bond 0 := by
  have hb : 0 < bond 0 := bond_pos 0
  simp [rowCoefficientAbs, recurrencePolynomialCoefficient,
    abs_inv, abs_of_pos hb, one_div]

/-- Finite l1 shift leaves its total coefficient magnitude unchanged. -/
theorem rowCoefficientShiftAbs (n : ℕ) :
    (∑ j ∈ Finset.range (n + 3),
      |shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j|) =
    rowCoefficientAbs (n + 1) := by
  rw [Finset.sum_range_succ']
  simp [rowCoefficientAbs, shiftedCoeff]

/-- Higher-than-degree coefficients contribute nothing, even if the
temporary summation length is n+3 rather than n+1. -/
theorem rowCoefficientHighZero (n : ℕ) :
    (∑ j ∈ Finset.range (n + 3),
      |recurrencePolynomialCoefficient n j|) =
      rowCoefficientAbs n := by
  have hsum : n + 1 ≤ n + 3 := by omega
  rw [rowCoefficientAbs,
    ← Finset.sum_range_add_sum_Ico
      (fun j => |recurrencePolynomialCoefficient n j|) hsum]
  have hzero :
      (∑ j ∈ Finset.Ico (n + 1) (n + 3),
        |recurrencePolynomialCoefficient n j|) = 0 := by
    apply Finset.sum_eq_zero
    intro j hj
    have hj' : n < j := by
      have := (Finset.mem_Ico.mp hj).1
      omega
    simp [recurrencePolynomialCoefficient_support n j hj']
  simp [hzero]

/-- The genuine prime-polynomial coefficient sums obey the exact
source-bond three-term triangle recurrence at every natural index. -/
theorem rowCoefficientAbs_step (n : ℕ) :
    rowCoefficientAbs (n + 2) ≤
      rowCoefficientAbs (n + 1) / bond (n + 1) +
      (bond n / bond (n + 1)) * rowCoefficientAbs n := by
  have hb : 0 < bond (n + 1) := bond_pos _
  unfold rowCoefficientAbs
  have hTerm (j : ℕ) :
      |recurrencePolynomialCoefficient (n + 2) j| ≤
      (|shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j| +
        bond n * |recurrencePolynomialCoefficient n j|) /
        bond (n + 1) := by
    change |(shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j -
        bond n * recurrencePolynomialCoefficient n j) /
          bond (n + 1)| ≤ _
    rw [abs_div, abs_of_pos hb]
    have h := abs_sub_le
      (shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j)
      (bond n * recurrencePolynomialCoefficient n j)
    rw [abs_mul, abs_of_pos (bond_pos n)] at h
    exact div_le_div_of_nonneg_right h hb.le
  calc
    (∑ j ∈ Finset.range (n + 3),
       |recurrencePolynomialCoefficient (n + 2) j|)
      ≤ ∑ j ∈ Finset.range (n + 3),
        (|shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j| +
          bond n * |recurrencePolynomialCoefficient n j|) /
          bond (n + 1) :=
          Finset.sum_le_sum (fun j _ => hTerm j)
    _ = (∑ j ∈ Finset.range (n + 3),
          |shiftedCoeff (recurrencePolynomialCoefficient (n + 1)) j|) /
            bond (n + 1) +
        (bond n / bond (n + 1)) *
        (∑ j ∈ Finset.range (n + 3),
          |recurrencePolynomialCoefficient n j|) := by
          simp only [Finset.sum_div, Finset.sum_add_distrib,
            ← Finset.mul_sum]
          ring
    _ = rowCoefficientAbs (n + 1) / bond (n + 1) +
      (bond n / bond (n + 1)) * rowCoefficientAbs n := by
        rw [rowCoefficientShiftAbs, rowCoefficientHighZero]

/-- Complete prime-polynomial l1 contraction by two-step induction,
using the existing source-specific scalar envelope. -/
theorem rowCoefficientAbs_le_envelope (n : ℕ) :
    rowCoefficientAbs n ≤ coeffEnvelope n := by
  induction n using Nat.twoStepInduction with
  | zero => simp [rowCoefficientAbs_zero, coeffEnvelope]
  | one => rw [rowCoefficientAbs_one]; rfl
  | more n ih ih1 =>
      calc
        rowCoefficientAbs (n + 2) ≤
          rowCoefficientAbs (n + 1) / bond (n + 1) +
            (bond n / bond (n + 1)) * rowCoefficientAbs n :=
              rowCoefficientAbs_step n
        _ ≤ coeffEnvelope (n + 1) / bond (n + 1) +
            (bond n / bond (n + 1)) * coeffEnvelope n := by
              apply add_le_add
              · exact div_le_div_of_nonneg_right ih1 (bond_pos _).le
              · exact mul_le_mul_of_nonneg_left ih
                  (div_nonneg (bond_pos _).le (bond_pos _).le)
        _ = coeffEnvelope (n + 2) := rfl

theorem rowCoefficientAbs_le_one (n : ℕ) : rowCoefficientAbs n ≤ 1 :=
  (rowCoefficientAbs_le_envelope n).trans (coeffEnvelope_le_one n)

/-- Exact bridge of finite coefficient row sums. The supporting
high-degree entries are zero, so no moment or Krylov term is lost. -/
theorem coeffMatrix_row_abs_eq_rowCoefficientAbs
    (N : ℕ) (n : Fin N) :
    (∑ j : Fin N, |coeffMatrix N n j|) =
       rowCoefficientAbs n.val := by
  classical
  rw [← recurrencePolynomialMatrix_eq_coeffMatrix N]
  change (∑ j : Fin N,
    |recurrencePolynomialCoefficient n.val j.val|) =
      rowCoefficientAbs n.val
  rw [Fin.sum_univ_eq_sum_range]
  have hle : n.val + 1 ≤ N := Nat.succ_le_iff.mpr n.isLt
  rw [rowCoefficientAbs,
      ← Finset.sum_range_add_sum_Ico
        (fun j => |recurrencePolynomialCoefficient n.val j|) hle]
  have hzero : (∑ j ∈ Finset.Ico (n.val + 1) N,
      |recurrencePolynomialCoefficient n.val j|) = 0 := by
    apply Finset.sum_eq_zero
    intro j hj
    have hj' : n.val < j := by
      have h := (Finset.mem_Ico.mp hj).1
      omega
    simp [recurrencePolynomialCoefficient_support n.val j hj']
  simp [hzero]

/-- The all-rank source-specific prime-Hankel conditioning theorem.
No coefficient or RH assumption remains in the STATEMENT. This
is a full Lean proof candidate and not yet compiler evidence. -/
theorem prime_hankel_inverse_row_linear (N : ℕ) (i : Fin N) :
    (∑ j : Fin N, |(hankelMatrix N)⁻¹ i j|) ≤ (N : ℝ) := by
  apply hankel_inverse_row_sum_le N 1 (by norm_num) ?_ i
  intro n
  rw [coeffMatrix_row_abs_eq_rowCoefficientAbs]
  exact rowCoefficientAbs_le_one n.val

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialCoefficientContraction
