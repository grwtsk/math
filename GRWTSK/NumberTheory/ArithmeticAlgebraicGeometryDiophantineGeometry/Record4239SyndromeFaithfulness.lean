/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239SyndromeHamiltonian

set_option autoImplicit false
noncomputable section

/-! SOURCE_PROOF_CANDIDATE / NOT_RUN. Faithfulness of the finite reflection
representation; no global descent specialization or analytic BSD claim. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator

theorem reflectionOperator_injective (level : ℕ) (χ : DirichletCharacter ℂ level) :
    Function.Injective (reflectionOperator level χ) := by
  intro c d h
  have hsum : c + d = 0 := by
    apply (reflectionOperator_eq_one_iff level χ (c + d)).mp
    rw [reflectionOperator_add, h, reflectionOperator_involutive]
  have hself : d + d = 0 := by
    funext i
    change d i + d i = 0
    generalize d i = b
    fin_cases b <;> decide
  calc
    c = (c + d) + d := by rw [add_assoc, hself, add_zero]
    _ = d := by rw [hsum, zero_add]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator
