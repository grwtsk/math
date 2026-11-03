/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletUnitPhaseTotientExpansion

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Global residual identity for actual characters and the actual cyclic
Hamiltonian. No analytic zero-to-vector bridge is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGlobalResidualEnergy
open DirichletGenuineCharacterVectorNorm DirichletCyclicPhaseCancellation
open DirichletFullPhaseResidualDecomposition DirichletUnitPhaseTotientExpansion
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

def unitPhaseEnergy (χ : DirichletCharacter ℂ N) : ℝ :=
  ∑ i : ZMod N, if IsUnit i then (neighborPhase N (fun j => χ j) i)^2 else 0

def nonunitLeakageEnergy (χ : DirichletCharacter ℂ N) (t : ℝ) : ℝ :=
  ∑ i : ZMod N, if IsUnit i then 0 else ‖(t : ℂ)*neighborValue N χ i‖^2

def realDiagonalMismatch (χ : DirichletCharacter ℂ N) (t : ℝ)
    (q : ZMod N → ℝ) (λ : ℂ) : ℝ :=
  ∑ i : ZMod N, if IsUnit i then (q i-optimalRealDiagonal N χ t λ i)^2 else 0

theorem actual_global_residual_energy (χ : DirichletCharacter ℂ N)
    (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ) :
    ‖hamiltonianOperator N t q (characterVector N χ)-λ • characterVector N χ‖^2 =
      (Nat.totient N : ℝ)*λ.im^2+t^2*unitPhaseEnergy N χ+
        nonunitLeakageEnergy N χ t+realDiagonalMismatch N χ t q λ := by
  classical
  rw [full_phase_residual_decomposition]
  have he : (∑ i : ZMod N, if IsUnit i then
      (q i-optimalRealDiagonal N χ t λ i)^2+
        (t*(neighborValue N χ i*Complex.conj (χ i)).im-λ.im)^2
      else ‖(t : ℂ)*neighborValue N χ i‖^2) =
      realDiagonalMismatch N χ t q λ+
      (∑ i : ZMod N, if IsUnit i then
        (t*neighborPhase N (fun j => χ j) i-λ.im)^2 else 0)+
      nonunitLeakageEnergy N χ t := by
    unfold realDiagonalMismatch nonunitLeakageEnergy
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> simp [neighborPhase,neighborValue]
  rw [he,unit_phase_square_expansion]
  unfold unitPhaseEnergy
  ring

theorem optimal_real_diagonal_attains (χ : DirichletCharacter ℂ N) (t : ℝ) (λ : ℂ) :
    ‖hamiltonianOperator N t (optimalRealDiagonal N χ t λ) (characterVector N χ)-
      λ • characterVector N χ‖^2 =
      (Nat.totient N : ℝ)*λ.im^2+t^2*unitPhaseEnergy N χ+
        nonunitLeakageEnergy N χ t := by
  rw [actual_global_residual_energy]
  simp [realDiagonalMismatch]

/- The optimizer ranges over all real diagonals. Membership in the actual
three-channel arithmetic-potential family is a separate unsupplied condition. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGlobalResidualEnergy
