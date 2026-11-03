/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeArithmeticResidual

set_option autoImplicit false
noncomputable section

/-! Fixed-source shrinking residual consumer. The all-epsilon budget is an
explicit missing premise; it is not obtained from an analytic zero. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFixedResidualBudget
open DirichletModThreeQuadraticConstruction DirichletModThreeArithmeticResidual
open DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

def fixedCharacterResidual (t u v w : ℝ) (λ : ℂ) : ℝ :=
  ‖hamiltonianOperator 3 t
      (arithmeticPotential 3 3 modThreeQuadratic (fun _ => 1) u v w)
      (characterVector 3 modThreeQuadratic)-λ • characterVector 3 modThreeQuadratic‖

theorem fixed_source_shrinking_budget_identifies_parameter (t u v w : ℝ) (λ : ℂ)
    (hbudget : ∀ ε : ℝ, 0<ε → fixedCharacterResidual t u v w λ ≤ ε) :
    λ=((w-t : ℝ) : ℂ) := by
  have hz : fixedCharacterResidual t u v w λ=0 := by
    by_contra hn
    have hp : 0<fixedCharacterResidual t u v w λ :=
      lt_of_le_of_ne (norm_nonneg _) (Ne.symm hn)
    have hh := hbudget (fixedCharacterResidual t u v w λ/2) (by linarith)
    linarith
  have hs := actual_arithmetic_modThree_residual_sq t u v w λ
  change fixedCharacterResidual t u v w λ^2=2*‖((w-t : ℝ) : ℂ)-λ‖^2 at hs
  rw [hz] at hs
  have hn : ‖((w-t : ℝ) : ℂ)-λ‖=0 := by nlinarith [norm_nonneg (((w-t : ℝ) : ℂ)-λ)]
  exact (sub_eq_zero.mp (norm_eq_zero.mp hn)).symm

/- An analytic L-zero to hbudget construction remains UNSUPPLIED. Varying
w with epsilon or lambda would not satisfy this fixed-source statement. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFixedResidualBudget
