/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterModes
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Constant-mode blindness of actual cyclic Laplacian energy.
The signed prefix statistic retains its full constant mode. A source-
specific Mertens cancellation estimate remains missing.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CyclicConstantModeSignedPrefixObstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicCharacterModes ArithmeticCyclicOperatorStability
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
variable (N : ℕ) [NeZero N]

def constantVector : EuclideanSpace ℂ (ZMod N) := modeVector N (1 : AddChar (ZMod N) ℂ)

theorem constant_mode_null (t : ℝ) :
    hamiltonianOperator N t (fun _ => -2 * t) (constantVector N) = 0 := by
  rw [constantVector, actual_character_eigenvector]
  have hp : modeParameter N t (-2 * t) (1 : AddChar (ZMod N) ℂ) = 0 := by
    simp [modeParameter]
    <;> push_cast
    <;> ring
  rw [hp, zero_smul]

theorem energy_invariant_under_constant_shift (t : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (c : ℂ) :
    hamiltonianEnergy N t (fun _ => -2 * t) (x + c • constantVector N) =
      hamiltonianEnergy N t (fun _ => -2 * t) x := by
  have hv : hamiltonianOperator N t (fun _ => -2 * t) (c • constantVector N) = 0 := by
    rw [map_smul, constant_mode_null, smul_zero]
  have hs : inner ℂ (c • constantVector N)
      (hamiltonianOperator N t (fun _ => -2 * t) x) = 0 := by
    have h := (hamiltonianOperator_isSelfAdjoint N t (fun _ => -2 * t)).isSymmetric
      (c • constantVector N) x
    rw [hv, inner_zero_left] at h
    exact h.symm
  unfold hamiltonianEnergy
  rw [map_add, hv, add_zero, inner_add_left, hs, add_zero]

def signedPrefixStatistic (x : ZMod N → ℝ) : ℝ :=
  (∑ i, x i) ^ 2 - ∑ i, x i ^ 2

theorem signed_prefix_constant_shift (x : ZMod N → ℝ) (c : ℝ) :
    signedPrefixStatistic N (fun i => x i + c) = signedPrefixStatistic N x +
      2 * c * ((N : ℝ) - 1) * (∑ i, x i) + (N : ℝ) * ((N : ℝ) - 1) * c ^ 2 := by
  have h1 : (∑ i : ZMod N, (x i + c)) = (∑ i, x i) + (N : ℝ) * c := by
    simp [Finset.sum_add_distrib, nsmul_eq_mul]
  have h2 : (∑ i : ZMod N, (x i + c) ^ 2) =
      (∑ i, x i ^ 2) + 2 * c * (∑ i, x i) + (N : ℝ) * c ^ 2 := by
    calc
      _ = ∑ i : ZMod N, (x i ^ 2 + (2 * c) * x i + c ^ 2) := by
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum]
        simp [nsmul_eq_mul]
  unfold signedPrefixStatistic
  rw [h1, h2]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.CyclicConstantModeSignedPrefixObstruction
