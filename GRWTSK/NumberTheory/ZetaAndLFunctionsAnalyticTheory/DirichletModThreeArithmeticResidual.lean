/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeQuadraticConstruction

set_option autoImplicit false
noncomputable section

/-! Literal arithmetic labels and full complex residual for the constructed
genuine character. No analytic L-zero bridge is asserted. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeArithmeticResidual
open DirichletModThreeQuadraticConstruction DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

theorem actual_constant_label_potential (u v w : ℝ) :
    arithmeticPotential 3 3 modThreeQuadratic (fun _ => 1) u v w = fun _ => w := by
  funext i
  simp [arithmeticPotential,modThreeQuadratic_one]

theorem actual_arithmetic_modThree_eigenvector (t u v w : ℝ) :
    hamiltonianOperator 3 t
      (arithmeticPotential 3 3 modThreeQuadratic (fun _ => 1) u v w)
      (characterVector 3 modThreeQuadratic) =
      ((w-t : ℝ) : ℂ) • characterVector 3 modThreeQuadratic := by
  rw [actual_constant_label_potential]
  exact constructed_modThree_exact_eigenvector t w

theorem actual_arithmetic_modThree_residual_sq (t u v w : ℝ) (λ : ℂ) :
    ‖hamiltonianOperator 3 t
        (arithmeticPotential 3 3 modThreeQuadratic (fun _ => 1) u v w)
        (characterVector 3 modThreeQuadratic)-λ • characterVector 3 modThreeQuadratic‖^2 =
      2*‖((w-t : ℝ) : ℂ)-λ‖^2 := by
  rw [actual_arithmetic_modThree_eigenvector,← sub_smul,norm_smul,mul_pow,
    characterVector_norm_sq]
  norm_num
  ring

/- The real coefficient w can fit a desired real eigenvalue only by changing
the operator. No analytic zero or fixed spectral realization enters here. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeArithmeticResidual
