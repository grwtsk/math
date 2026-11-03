/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCyclicPhaseCancellation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full unit/nonunit residual decomposition for genuine characters.
All coordinates retained. Analytic-zero identification remains unsupplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullPhaseResidualDecomposition
open DirichletGenuineCharacterVectorNorm DirichletUnitPhaseResidualSquare
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

def neighborValue (χ : DirichletCharacter ℂ N) (i : ZMod N) : ℂ :=
  χ (i+1)+χ (i-1)

def optimalRealDiagonal (χ : DirichletCharacter ℂ N) (t : ℝ) (λ : ℂ)
    (i : ZMod N) : ℝ :=
  λ.re-t*(neighborValue N χ i*Complex.conj (χ i)).re

theorem full_phase_residual_decomposition (χ : DirichletCharacter ℂ N)
    (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ) :
    ‖hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ‖^2 =
      ∑ i : ZMod N, if IsUnit i then
        (q i-optimalRealDiagonal N χ t λ i)^2+
          (t*(neighborValue N χ i*Complex.conj (χ i)).im-λ.im)^2
        else ‖(t : ℂ)*neighborValue N χ i‖^2 := by
  classical
  rw [PiLp.norm_sq_eq_of_L2]
  apply Finset.sum_congr rfl
  intro i _
  have h := congrFun (hamiltonianOperator_mulVec N t q (characterVector N χ)) i
  change hamiltonianOperator N t q (characterVector N χ) i = _ at h
  change ‖hamiltonianOperator N t q (characterVector N χ) i-λ*χ i‖^2 = _
  rw [h,hamiltonian_mulVec]
  change ‖(t : ℂ)*neighborValue N χ i+(q i : ℂ)*χ i-λ*χ i‖^2 = _
  by_cases hu : IsUnit i
  · rw [if_pos hu]
    have hn : ‖χ i‖=1 := by
      simpa only [hu.unit_spec] using χ.unit_norm_eq_one hu.unit
    have he : (t : ℂ)*neighborValue N χ i+(q i : ℂ)*χ i-λ*χ i =
        (t : ℂ)*neighborValue N χ i+((q i : ℂ)-λ)*χ i := by ring
    rw [he,unit_residual_square _ _ _ _ _ hn]
    unfold optimalRealDiagonal
    ring
  · rw [if_neg hu,χ.map_nonunit hu]
    simp

theorem full_phase_residual_floor (χ : DirichletCharacter ℂ N)
    (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ) :
    (∑ i : ZMod N, if IsUnit i then
        (t*(neighborValue N χ i*Complex.conj (χ i)).im-λ.im)^2
      else ‖(t : ℂ)*neighborValue N χ i‖^2) ≤
      ‖hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ‖^2 := by
  classical
  rw [full_phase_residual_decomposition]
  apply Finset.sum_le_sum
  intro i _
  split_ifs <;> nlinarith [sq_nonneg (q i-optimalRealDiagonal N χ t λ i)]

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullPhaseResidualDecomposition
