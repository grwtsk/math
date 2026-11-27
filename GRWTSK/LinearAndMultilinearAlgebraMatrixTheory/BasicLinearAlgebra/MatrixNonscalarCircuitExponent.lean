/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.MatrixNonscalarCircuitRank
import OAI.LinearAlgebra.SpectralBooks.ExactExponent

/-! # The square matrix multiplication lower bound for nonscalar gates -/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.MatrixNonscalarCircuitExponent

open OAI.LinearAlgebra.SpectralBooks
open GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.MatrixNonscalarCircuitRank

/-- At side length at least two, formal rational matrix multiplication over
any field needs at least the stated number of nonscalar product and quotient gates. -/
theorem square_nonscalarCount_lower {F : Type*} [Field F] {n : ℕ} (hn : 2 ≤ n)
    {P : RationalMatrixAlgorithm F n n n} (hP : P.Correct) :
    ⌈(n : ℝ) ^ ((9 : ℝ) / 4) / 2⌉₊ ≤ nonscalarCount P.program := by
  have hRank := rpow_formalOmega_le_tensorRank (AlgebraicClosure F) hn
  rw [square_exponent (AlgebraicClosure F)] at hRank
  have hCount : (n : ℝ) ^ ((9 : ℝ) / 4) ≤ 2 * (nonscalarCount P.program : ℝ) :=
    hRank.trans (by exact_mod_cast algebraicClosure_rank_le_twice_nonscalarCount hP)
  exact Nat.ceil_le.mpr (by linarith)

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.MatrixNonscalarCircuitExponent
