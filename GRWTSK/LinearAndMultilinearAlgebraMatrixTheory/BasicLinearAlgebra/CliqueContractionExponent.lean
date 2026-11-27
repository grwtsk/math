import OAI.LinearAlgebra.SpectralBooks.ExactExponent
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CliqueContractionShape

/-!
# Rectangular shape exponents of clique contractions

Local attribution: grwtsk contributors.

If a merge partitions the terminals into three parts of sizes `a,b,c`, its
three bond-product weights are `a*b,a*c,b*c`. This calculation concerns dense
rectangular products in the formal arithmetic model.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent

open OAI.LinearAlgebra.SpectralBooks

/-- Exact dense contraction shape for decreasing nonnegative part sizes,
including a merge at the root with no exterior terminals. -/
theorem clique_contraction_exponent (F : Type*) [Field F] (a b c : ℝ)
    (hc : 0 ≤ c) (hbc : c ≤ b) (hab : b ≤ a) :
    formalOmega F (a * b) (a * c) (b * c) =
      (a + b + c) ^ 2 / 4 - (max (a - (a + b + c) / 2) 0) ^ 2 := by
  rw [rectangular_exponent]
  exact clique_rectangular_formula a b c hc hbc hab

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent
