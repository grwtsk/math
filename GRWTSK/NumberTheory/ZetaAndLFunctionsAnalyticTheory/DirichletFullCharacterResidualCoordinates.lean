/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGenuineCharacterVectorNorm

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual complete character residual with all phases and nonunit coordinates.
No small residual or analytic-zero identification is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullCharacterResidualCoordinates
open DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

def residualReal (χ : DirichletCharacter ℂ N) (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ)
    (i : ZMod N) : ℝ :=
  t*((χ (i+1)).re+(χ (i-1)).re)+(q i-λ.re)*(χ i).re+λ.im*(χ i).im

def residualImag (χ : DirichletCharacter ℂ N) (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ)
    (i : ZMod N) : ℝ :=
  t*((χ (i+1)).im+(χ (i-1)).im)+(q i-λ.re)*(χ i).im-λ.im*(χ i).re

theorem actual_residual_real (χ : DirichletCharacter ℂ N) (t : ℝ)
    (q : ZMod N → ℝ) (λ : ℂ) (i : ZMod N) :
    ((hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ) i).re =
      residualReal N χ t q λ i := by
  have h := congrFun (hamiltonianOperator_mulVec N t q (characterVector N χ)) i
  change hamiltonianOperator N t q (characterVector N χ) i = _ at h
  change (hamiltonianOperator N t q (characterVector N χ) i-λ*χ i).re = _
  rw [h, hamiltonian_mulVec]
  simp [characterVector, residualReal, Complex.mul_re, Complex.mul_im]
  <;> ring

theorem actual_residual_imag (χ : DirichletCharacter ℂ N) (t : ℝ)
    (q : ZMod N → ℝ) (λ : ℂ) (i : ZMod N) :
    ((hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ) i).im =
      residualImag N χ t q λ i := by
  have h := congrFun (hamiltonianOperator_mulVec N t q (characterVector N χ)) i
  change hamiltonianOperator N t q (characterVector N χ) i = _ at h
  change (hamiltonianOperator N t q (characterVector N χ) i-λ*χ i).im = _
  rw [h, hamiltonian_mulVec]
  simp [characterVector, residualImag, Complex.mul_re, Complex.mul_im]
  <;> ring

theorem actual_full_residual_norm_sq (χ : DirichletCharacter ℂ N) (t : ℝ)
    (q : ZMod N → ℝ) (λ : ℂ) :
    ‖hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ‖^2 =
      ∑ i : ZMod N, (residualReal N χ t q λ i)^2+(residualImag N χ t q λ i)^2 := by
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro i _
  have hs (z : ℂ) : ‖z‖^2=z.re^2+z.im^2 := by
    simp [Complex.sq_norm, Complex.normSq_apply, pow_two]
  rw [hs, actual_residual_real, actual_residual_imag]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullCharacterResidualCoordinates
