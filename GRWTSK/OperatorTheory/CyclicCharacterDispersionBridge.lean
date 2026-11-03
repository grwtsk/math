/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterModes
import GRWTSK.OperatorTheory.CyclicContinuumDispersionError

set_option autoImplicit false
noncomputable section

/-! Actual cyclic character eigenvectors with an explicit phase supplier.
The phase identity is retained as a premise, not inferred for arbitrary
characters or physical gauge modes. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicCharacterDispersionBridge
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicCharacterModes ArithmeticCyclicOperatorStability
open CyclicContinuumDispersionError

lemma cosine_half_angle_dispersion (τ a ξ : ℝ) (ha : a ≠ 0) :
    (-τ / a^2) * (2 * Real.cos (a*ξ)) + 2*τ/a^2 =
      discreteDispersion τ a ξ := by
  have hc := Real.cos_two_mul' (a*ξ/2)
  have hs := Real.sin_sq_add_cos_sq (a*ξ/2)
  have he : 2*(a*ξ/2) = a*ξ := by ring
  rw [he] at hc
  have ht : 2 - 2*Real.cos (a*ξ) = 4*Real.sin (a*ξ/2)^2 := by
    nlinarith
  unfold discreteDispersion
  field_simp
  nlinarith

theorem actual_character_dispersion (N : ℕ) [NeZero N]
    (τ a ξ : ℝ) (ha : a ≠ 0) (ψ : AddChar (ZMod N) ℂ)
    (hphase : ψ 1 + ψ (-1) = (2 * Real.cos (a*ξ) : ℝ)) :
    hamiltonianOperator N (-τ/a^2) (fun _ => 2*τ/a^2) (modeVector N ψ) =
      (discreteDispersion τ a ξ : ℂ) • modeVector N ψ := by
  rw [actual_character_eigenvector]
  have hp : modeParameter N (-τ/a^2) (2*τ/a^2) ψ =
      (discreteDispersion τ a ξ : ℂ) := by
    unfold modeParameter
    rw [hphase]
    exact_mod_cast cosine_half_angle_dispersion τ a ξ ha
  rw [hp]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicCharacterDispersionBridge
