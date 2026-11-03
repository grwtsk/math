/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGlobalResidualEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Directional normal-equation consumer with actual arithmetic-family
closure. No nonsingular Gram matrix or analytic bridge is assumed. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletArithmeticFitDirectionalEnergy
open DirichletGlobalResidualEnergy DirichletFullPhaseResidualDecomposition
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def fitCross (χ : DirichletCharacter ℂ N) (t : ℝ) (λ : ℂ)
    (q v : ZMod N → ℝ) : ℝ :=
  ∑ i : ZMod N, if IsUnit i then (q i-optimalRealDiagonal N χ t λ i)*v i else 0

def unitDirectionMass (v : ZMod N → ℝ) : ℝ :=
  ∑ i : ZMod N, if IsUnit i then v i^2 else 0

theorem directional_mismatch_expansion (χ : DirichletCharacter ℂ N)
    (t s : ℝ) (λ : ℂ) (q v : ZMod N → ℝ) :
    realDiagonalMismatch N χ t (fun i => q i+s*v i) λ =
      realDiagonalMismatch N χ t q λ+2*s*fitCross N χ t λ q v+
        s^2*unitDirectionMass N v := by
  classical
  unfold realDiagonalMismatch fitCross unitDirectionMass
  simp only [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  split_ifs <;> ring

theorem orthogonal_direction_cannot_improve (χ : DirichletCharacter ℂ N)
    (t s : ℝ) (λ : ℂ) (q v : ZMod N → ℝ)
    (hnormal : fitCross N χ t λ q v=0) :
    realDiagonalMismatch N χ t q λ ≤
      realDiagonalMismatch N χ t (fun i => q i+s*v i) λ := by
  rw [directional_mismatch_expansion,hnormal]
  have hv : 0 ≤ unitDirectionMass N v := by
    apply Finset.sum_nonneg
    intro i _
    split_ifs <;> positivity
  nlinarith [mul_nonneg (sq_nonneg s) hv]

theorem actual_arithmetic_family_line (level : ℕ) (ψ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u v w du dv dw s : ℝ) :
    arithmeticPotential N level ψ m (u+s*du) (v+s*dv) (w+s*dw) =
      fun i => arithmeticPotential N level ψ m u v w i+
        s*arithmeticPotential N level ψ m du dv dw i := by
  funext i
  unfold arithmeticPotential
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletArithmeticFitDirectionalEnergy
