/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.MatrixMultiplicationSemantics
import OAI.LinearAlgebra.SpectralBooks.FormalBlockStep

/-! # Exact comparison of finite rectangular block programs

A supplied rank decomposition and a formally correct block routine determine a
finite straight-line program. Its dense input and output transforms have exact
gate costs, including the work of assembling every output. The comparison uses
an incumbent lower bound for the same arithmetic gate coordinate and compares
both complete input/output functions. The stated cost counts arithmetic gates.
-/

namespace GRWTSK.LinearAlgebra.MatrixMultiplication

open OAI.MatrixMultiplication.Arithmetic
open OAI.MatrixMultiplication.Arithmetic.RecursiveBlock
open OAI.MatrixMultiplication.Foundation
open OAI.LinearAlgebra.SpectralBooks
open scoped BigOperators

/-- A witnessed rectangular rank decomposition gives a strict improvement
whenever the exact synthesized arithmetic cost is below a bound valid for the
incumbent. The theorem compares the two programs on every input pair. -/
theorem rectangularBlock_strict_gate_improvement {F : Type*} [Field F]
    {n₁ n₂ n₃ m₁ m₂ m₃ r lower : ℕ}
    (u : Fin r → Fin n₁ × Fin n₂ → F)
    (v : Fin r → Fin n₂ × Fin n₃ → F)
    (w : Fin r → Fin n₃ × Fin n₁ → F)
    (decomposition : matrixTensor F n₂ n₃ n₁ =
      fun x y z => ∑ q, Tensor.rankOne (u q) (v q) (w q) x y z)
    (block : MatrixAlgorithm F m₁ m₂ m₃) (blockCorrect : FormalCorrect block)
    (incumbent : MatrixAlgorithm F (n₁ * m₁) (n₂ * m₂) (n₃ * m₃))
    (incumbentCorrect : incumbent.Correct) (incumbentBound : lower ≤ incumbent.cost)
    (improvement : r * block.cost +
        2 * r * (n₁ * n₂ * m₁ * m₂ + n₂ * n₃ * m₂ * m₃ + n₁ * n₃ * m₁ * m₃) < lower) :
    FormalCorrect (algorithm u v w block) ∧
      (∀ A B, (algorithm u v w block).eval A B = incumbent.eval A B) ∧
      (algorithm u v w block).cost < incumbent.cost := by
  have replacementCorrect := formalCorrect_blockAlgorithm u v w decomposition block blockCorrect
  refine ⟨replacementCorrect, fun A B => ?_, ?_⟩
  · exact (correct_of_formalCorrect replacementCorrect A B).trans (incumbentCorrect A B).symm
  · rw [algorithm_cost]
    exact improvement.trans_le incumbentBound

end GRWTSK.LinearAlgebra.MatrixMultiplication
