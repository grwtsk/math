import OAI.LinearAlgebra.MatrixExponent.Integral.RingFormula
import OAI.LinearAlgebra.SpectralBooks.BorderComparison
import OAI.LinearAlgebra.SpectralBooks.CircuitRankSpecialization
import OAI.LinearAlgebra.SpectralBooks.DivisionExponent
import OAI.LinearAlgebra.SpectralBooks.ExactExponent
import OAI.LinearAlgebra.SpectralBooks.SquareExponent

/-!
# Formal Matrix Multiplication

Local attribution: grwtsk contributors.
Exact upstream interfaces for the isolated family 379 environment.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FormalMatrixMultiplication

export OAI.LinearAlgebra.SpectralBooks (square_exponent)
export OAI.LinearAlgebra.SpectralBooks (dual_exponent)
export OAI.LinearAlgebra.SpectralBooks (rectangular_exponent)
export OAI.LinearAlgebra.SpectralBooks (divisionOmega_square_eq_formalOmega)
export OAI.LinearAlgebra.SpectralBooks (square_asymptoticRank_eq_rpow_formalOmega)
export OAI.LinearAlgebra.MatrixExponent.Integral (exponent_eq)
export OAI.LinearAlgebra.SpectralBooks (asymptoticRank_le_geometricBorderRank)
export OAI.LinearAlgebra.SpectralBooks (algebraicClosure_rank_le_twice_productQuotientCount)

open OAI.LinearAlgebra.SpectralBooks

/-- The asymptotic rank of a square matrix multiplication tensor at every
side length at least two. -/
theorem square_asymptoticRank_exact (F : Type*) [Field F] {n : ℕ} (hn : 2 ≤ n) :
    asymptoticRank (matrixTensor F n n n) = (n : ℝ) ^ ((9 : ℝ) / 4) := by
  rw [square_asymptoticRank_eq_rpow_formalOmega F hn, square_exponent F]

/-- The exact square exponent yields a lower bound for the geometric border
rank over the base field, including finite fields. -/
theorem square_geometricBorderRank_lower (F : Type*) [Field F] {n : ℕ} (hn : 2 ≤ n) :
    (n : ℝ) ^ ((9 : ℝ) / 4) ≤ geometricBorderRank (matrixTensor F n n n) := by
  rw [← square_asymptoticRank_exact F hn]
  exact asymptoticRank_le_geometricBorderRank _

/-- A finite square rational program with exact identity semantics uses at
least half the square rank lower bound in total product and quotient gates. -/
theorem square_total_productQuotient_lower {F : Type*} [Field F] {n : ℕ} (hn : 2 ≤ n)
    {P : RationalMatrixAlgorithm F n n n} (hP : P.Correct) :
    (n : ℝ) ^ ((9 : ℝ) / 4) ≤ 2 * (P.program.productQuotientCount : ℝ) := by
  have hRank := rpow_formalOmega_le_tensorRank (AlgebraicClosure F) hn
  rw [square_exponent (AlgebraicClosure F)] at hRank
  exact hRank.trans (by exact_mod_cast algebraicClosure_rank_le_twice_productQuotientCount hP)

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FormalMatrixMultiplication
