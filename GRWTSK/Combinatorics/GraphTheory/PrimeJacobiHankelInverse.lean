/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit and kernel replay: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiKrylovFrontier
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic

/-!
# The actual prime-Jacobi inverse Hankel matrix is an inverse Krylov Gram

All matrices here are the ORIGINAL matrices in PrimeKnotJacobiArithmetic,
PrimeJacobiMomentGram and PrimeJacobiKrylovFrontier, with bond n = the
real cast of Nat.nth Nat.Prime n. No zeta zeros, signed Weil positivity,
Alpoge final theorem, or conditional external spectral parameter enters.

The inverse factorization below is the exact algebraic part of the
source-specific conditioning theorem. The row-sum bound is proved under
an explicit coefficient-row hypothesis. To obtain the desired all-size
k(k+1)^2/4 bound unconditionally, the *remaining Lean obligation* is
that the first k prime-Jacobi orthonormal recurrence polynomials have
coefficient l1-norm at most (k+1)/2; its full elementary mathematical
induction appears in the adjacent Markdown record, but has NOT been
compiled/formalized against the actual Krylov polynomial source.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiHankelInverse

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiKrylovFrontier

/-- The inverse prime Krylov matrix, transposed to index polynomial
number first and monomial degree second. This is the actual source
matrix, not an independently fitted inverse. -/
def coeffMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  ((krylovMatrix N)⁻¹).transpose

/-- The prime-only triangular Krylov matrix has positive determinant. -/
theorem krylov_det_positive (N : ℕ) :
    0 < (krylovMatrix N).det := by
  rw [krylovMatrix_det_product]
  exact Finset.prod_pos (fun i _ => bondPrefix_pos i.val)

private theorem krylov_det_isUnit (N : ℕ) :
    IsUnit (krylovMatrix N).det := by
  exact isUnit_iff_ne_zero.mpr (ne_of_gt (krylov_det_positive N))

/-- An EXACT source-identity, not a generic inverse-moment assumption:
H_k⁻¹=RᵀR, where R is the inverse source Krylov coefficient matrix.
This consumes the actual prime-Krylov determinant and source Gram. -/
theorem hankel_inverse_eq_coeff_gram (N : ℕ) :
    (hankelMatrix N)⁻¹ = (coeffMatrix N).transpose * coeffMatrix N := by
  classical
  let V := krylovMatrix N
  have hV : IsUnit V.det := krylov_det_isUnit N
  have hVT : IsUnit V.transpose.det := by
    simpa only [Matrix.det_transpose] using hV
  have hRight : (hankelMatrix N) * (V⁻¹ * (V⁻¹).transpose) = 1 := by
    rw [hankelMatrix_eq_gram]
    change V.transpose * V * (V⁻¹ * (V⁻¹).transpose) = 1
    calc
      V.transpose * V * (V⁻¹ * (V⁻¹).transpose) =
          V.transpose * (V * V⁻¹) * (V⁻¹).transpose := by
            simp only [Matrix.mul_assoc]
      _ = V.transpose * (V⁻¹).transpose := by
            rw [Matrix.mul_nonsing_inv V hV, Matrix.mul_one]
      _ = V.transpose * V.transpose⁻¹ := by
            rw [Matrix.transpose_nonsing_inv]
      _ = 1 := Matrix.mul_nonsing_inv V.transpose hVT
  change (hankelMatrix N)⁻¹ = V⁻¹ * (V⁻¹).transpose
  exact Matrix.inv_eq_right_inv hRight

/-- Every entry of the actual inverse moment matrix is a literal sum
of products of inverse-prime-Krylov polynomial coefficients. -/
theorem hankel_inverse_entry (N : ℕ) (i j : Fin N) :
    (hankelMatrix N)⁻¹ i j =
      ∑ l : Fin N, coeffMatrix N l i * coeffMatrix N l j := by
  rw [hankel_inverse_eq_coeff_gram]
  simp only [Matrix.mul_apply, Matrix.transpose_apply]

/-- A conditional but source-bound all-row matrix inequality.
The coefficient-row condition is explicit and is NOT postulated to
follow merely from positivity of the source Hankel matrix. -/
theorem hankel_inverse_row_sum_le (N : ℕ) (C : ℝ) (hC : 0 ≤ C)
    (hcoeff : ∀ l : Fin N, ∑ j : Fin N, |coeffMatrix N l j| ≤ C)
    (i : Fin N) :
    (∑ j : Fin N, |(hankelMatrix N)⁻¹ i j|) ≤ (N : ℝ) * C ^ 2 := by
  classical
  simp_rw [hankel_inverse_entry]
  calc
    (∑ j : Fin N, |∑ l : Fin N,
        coeffMatrix N l i * coeffMatrix N l j|)
       ≤ ∑ j : Fin N, ∑ l : Fin N,
           |coeffMatrix N l i| * |coeffMatrix N l j| := by
             apply Finset.sum_le_sum
             intro j _
             calc
               |∑ l : Fin N, coeffMatrix N l i * coeffMatrix N l j| ≤
                   ∑ l : Fin N, |coeffMatrix N l i * coeffMatrix N l j| :=
                     Finset.abs_sum_le_sum_abs _ _
               _ = ∑ l : Fin N, |coeffMatrix N l i| * |coeffMatrix N l j| := by
                     simp only [abs_mul]
    _ = ∑ l : Fin N,
          |coeffMatrix N l i| * (∑ j : Fin N, |coeffMatrix N l j|) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro l _
          rw [Finset.mul_sum]
    _ ≤ ∑ l : Fin N, C * C := by
          apply Finset.sum_le_sum
          intro l _
          have hli : |coeffMatrix N l i| ≤ C :=
            (Finset.single_le_sum (fun j _ => abs_nonneg (coeffMatrix N l j))
              (Finset.mem_univ i)).trans (hcoeff l)
          exact mul_le_mul hli (hcoeff l)
            (Finset.sum_nonneg (fun j _ => abs_nonneg (coeffMatrix N l j))) hC
    _ = (N : ℝ) * C ^ 2 := by
          simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
          ring

/-- The desired prime-specific k(k+1)^2/4 inverse row bound is
available immediately from the explicit recurrence coefficient budget.
That budget is recorded as a separate, still open Lean obligation. -/
theorem hankel_inverse_row_sum_quadratic_of_coeff_bound (N : ℕ)
    (hcoeff : ∀ l : Fin N,
      (∑ j : Fin N, |coeffMatrix N l j|) ≤ ((N : ℝ) + 1) / 2)
    (i : Fin N) :
    (∑ j : Fin N, |(hankelMatrix N)⁻¹ i j|) ≤
      ((N : ℝ) * ((N : ℝ) + 1) ^ 2) / 4 := by
  have h := hankel_inverse_row_sum_le N (((N : ℝ) + 1) / 2)
    (by positivity) hcoeff i
  convert h using 1 <;> ring

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiHankelInverse
