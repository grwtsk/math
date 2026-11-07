/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore

/-!
# A diagonal charge for rectangular entry errors

For a nonnegative entry-radius matrix `R`, weighted Cauchy--Schwarz
bounds each squared readout error by
`(∑ j, R i j) * ∑ j, R i j * v j ^ 2`. Summing the rows gives the
diagonal charge `∑ i, R i j * ∑ k, R i k` in input coordinate `j`.
The argument uses the actual entry comparisons, including every row
and column, and does not need invertibility or a positive pivot.

The consumer is the reconstructed literal odd-window residual. This
charge may preserve useful coordinate dependence that a single
Frobenius charge discards. Neither charge uniformly dominates the
other for every radius matrix. Zero rows and singular matrices are
allowed. Source comparison, omitted rows and infinite tails remain
separate from this finite inequality. This is the standard weighted
Cauchy--Schwarz mechanism, with no novelty claim; an independent
analytic review has not been performed.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.EntrywiseResidualMajorant

open Matrix QuadraticCertificates

variable {ρ ι : Type*} [Fintype ρ] [Fintype ι]

/-- Coordinate prices obtained by summing each radius against its row sum. -/
def diagonalPrice (R : Matrix ρ ι ℝ) (j : ι) : ℝ :=
  ∑ i, R i j * ∑ k, R i k

/-- A nonnegative radius matrix gives nonnegative coordinate prices. -/
theorem diagonalPrice_nonneg (R : Matrix ρ ι ℝ) (hR : ∀ i j, 0 ≤ R i j) (j : ι) :
    0 ≤ diagonalPrice R j :=
  Finset.sum_nonneg fun i _ => mul_nonneg (hR i j) (Finset.sum_nonneg fun k _ => hR i k)

/-- Entrywise enclosures bound all squared readout errors by a diagonal
quadratic form in the input coordinates. -/
theorem errorSq_le (A B R : Matrix ρ ι ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |A i j - B i j| ≤ R i j) :
    (∑ i, (A.mulVec v i - B.mulVec v i) ^ 2) ≤
      ∑ j, diagonalPrice R j * (v j) ^ 2 := by
  have hR (i : ρ) (j : ι) : 0 ≤ R i j := (abs_nonneg _).trans (hentry i j)
  have hrow (i : ρ) :
      (A.mulVec v i - B.mulVec v i) ^ 2 ≤
        (∑ j, R i j) * ∑ j, R i j * (v j) ^ 2 := by
    have heq : A.mulVec v i - B.mulVec v i = ∑ j, (A i j - B i j) * v j := by
      simp only [Matrix.mulVec, dotProduct, sub_mul, Finset.sum_sub_distrib]
    rw [heq]
    refine Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul Finset.univ
      (fun j _ => hR i j) (fun j _ => mul_nonneg (hR i j) (sq_nonneg _)) ?_
    intro j _
    have hsq : (A i j - B i j) ^ 2 ≤ (R i j) ^ 2 := by
      simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) (hentry i j) 2
    calc
      ((A i j - B i j) * v j) ^ 2 = (A i j - B i j) ^ 2 * (v j) ^ 2 := mul_pow _ _ _
      _ ≤ (R i j) ^ 2 * (v j) ^ 2 := mul_le_mul_of_nonneg_right hsq (sq_nonneg _)
      _ = R i j * (R i j * (v j) ^ 2) := by ring
  calc
    _ ≤ ∑ i, (∑ j, R i j) * ∑ j, R i j * (v j) ^ 2 :=
      Finset.sum_le_sum fun i _ => hrow i
    _ = ∑ j, diagonalPrice R j * (v j) ^ 2 := by
      simp only [diagonalPrice, Finset.mul_sum, Finset.sum_mul]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro j _
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro k _
      ring

variable [DecidableEq ι]

/-- The coordinate prices as a diagonal matrix. -/
def diagonalCharge (R : Matrix ρ ι ℝ) : Matrix ι ι ℝ :=
  Matrix.diagonal (diagonalPrice R)

theorem quadratic_diagonalCharge (R : Matrix ρ ι ℝ) (v : ι → ℝ) :
    quadratic (diagonalCharge R) v = ∑ j, diagonalPrice R j * (v j) ^ 2 := by
  simp only [quadratic, diagonalCharge, Matrix.mulVec_diagonal, dotProduct]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Matrix-form return for a finite lower-matrix assembler. -/
theorem errorSq_le_quadratic (A B R : Matrix ρ ι ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |A i j - B i j| ≤ R i j) :
    (∑ i, (A.mulVec v i - B.mulVec v i) ^ 2) ≤ quadratic (diagonalCharge R) v := by
  rw [quadratic_diagonalCharge]
  exact errorSq_le A B R v hentry

end GRWTSK.Algebra.LinearAlgebra.EntrywiseResidualMajorant
