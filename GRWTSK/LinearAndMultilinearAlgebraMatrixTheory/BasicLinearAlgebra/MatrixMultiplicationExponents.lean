/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.MatrixMultiplicationSemantics
import OAI.LinearAlgebra.SpectralBooks.ExactExponent

/-! # Compatibility of matrix multiplication exponents

The exponents from the earlier complex-field adaptation measure pointwise
correctness. The formal exponents use polynomial identities and place the weights
of the inner, column and row dimensions in that order. The infinite-field
semantics equivalence transports witnesses at their unchanged gate cost.
-/

namespace GRWTSK.LinearAlgebra.MatrixMultiplication

open OAI.MatrixMultiplication.Arithmetic
open OAI.LinearAlgebra.SpectralBooks

private theorem unit_wireDimension (n : ℕ) : wireDimension n 1 = n := by
  simp [wireDimension]

/-- The earlier square exponent and the formal exponent have the same admissible set. -/
theorem omega_eq_formalOmega (F : Type*) [Field F] [Infinite F] :
    omega F = formalOmega F 1 1 1 := by
  simp only [omega, formalOmega, AdmissibleExponent, FormalAdmissibleExponent,
    unit_wireDimension, formalCorrect_iff_correct]

/-- The earlier rectangular convention varies the inner dimension. -/
theorem rectangularOmega_eq_formalOmega (F : Type*) [Field F] [Infinite F] (k : ℝ) :
    rectangularOmega F k = formalOmega F k 1 1 := by
  have inner (n : ℕ) : wireDimension n k = innerSize n k := rfl
  simp only [rectangularOmega, formalOmega, RectangularAdmissibleExponent,
    FormalAdmissibleExponent, unit_wireDimension, inner, formalCorrect_iff_correct]

/-- The two complex dual exponents compare the same shapes by cyclic symmetry. -/
theorem complexAlpha_eq_formalAlpha : complexAlpha = formalAlpha ℂ := by
  unfold complexAlpha formalAlpha dualExponent
  congr 1
  ext t
  simp only [Set.mem_ofPred_eq]
  apply and_congr_right
  intro ht
  have h : rectangularOmega ℂ t = formalOmega ℂ 1 1 t := by
    rw [rectangularOmega_eq_formalOmega, formalOmega_eq_integral, formalOmega_eq_integral,
      OAI.LinearAlgebra.MatrixExponent.Integral.agreement ℂ zero_le_one zero_le_one ht.1,
      OAI.LinearAlgebra.MatrixExponent.Integral.agreement ℂ ht.1 zero_le_one zero_le_one,
      OAI.LinearAlgebra.MatrixExponent.Rectangle.cycle ℂ ht.1 zero_le_one zero_le_one]
  rw [h]

/-- Exact square value in the earlier pointwise-correctness model over infinite fields. -/
theorem omega_eq_nine_quarters (F : Type*) [Field F] [Infinite F] :
    omega F = (9 : ℝ) / 4 :=
  (omega_eq_formalOmega F).trans (square_exponent F)

/-- Exact dual value in the earlier complex-field convention. -/
theorem complexAlpha_eq_one_half : complexAlpha = (1 : ℝ) / 2 :=
  complexAlpha_eq_formalAlpha.trans (dual_exponent ℂ)

/-- Exact value at the aspect 0.709 measured by the earlier strict upper bound. -/
theorem complex_rectangularOmega_709 :
    rectangularOmega ℂ ((709 : ℝ) / 1000) = (1461681 : ℝ) / 709000 := by
  rw [rectangularOmega_eq_formalOmega, rectangular_exponent]
  norm_num [max_def, min_def]

/-- Every formally correct square division-free program has at least half the
exact asymptotic-rank value in multiplication gates at its finite order. -/
theorem square_multiplicationCount_lower_bound (F : Type*) [Field F] {n : ℕ}
    (hn : 2 ≤ n) {P : MatrixAlgorithm F n n n} (hP : FormalCorrect P) :
    (n : ℝ) ^ ((9 : ℝ) / 4) ≤ 2 * (multiplicationCount P.program : ℝ) := by
  rw [← square_exponent F]
  exact (rpow_formalOmega_le_tensorRank F hn).trans (by
    exact_mod_cast matrixTensor_rank_le_twice_multiplicationCount hP)

end GRWTSK.LinearAlgebra.MatrixMultiplication
