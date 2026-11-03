/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib standard circle characters retain upstream attribution and licenses. -/
import GRWTSK.OperatorTheory.CyclicCharacterDispersionBridge
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section

/-! Standard Fourier characters supply the exact phase identity.
No physical gauge embedding or uniform volume gap is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicStandardFourierPhase
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicCharacterModes ArithmeticCyclicOperatorStability
open CyclicCharacterDispersionBridge CyclicContinuumDispersionError
variable (N : ℕ) [NeZero N]

def fourierCharacter (k : ℤ) : AddChar (ZMod N) ℂ :=
  (ZMod.stdAddChar (N := N)).mulShift (k : ZMod N)

def fourierAngle (k : ℤ) : ℝ := 2 * Real.pi * k / N

theorem standard_fourier_phase (k : ℤ) :
    fourierCharacter N k 1 + fourierCharacter N k (-1) =
      (2 * Real.cos (fourierAngle N k) : ℝ) := by
  have hp : fourierCharacter N k 1 =
      Complex.exp ((fourierAngle N k : ℂ) * Complex.I) := by
    simp only [fourierCharacter, AddChar.mulShift_apply, mul_one]
    rw [ZMod.stdAddChar_coe]
    congr 1
    unfold fourierAngle
    push_cast
    ring
  have hm : fourierCharacter N k (-1) =
      Complex.exp (-(fourierAngle N k : ℂ) * Complex.I) := by
    simp only [fourierCharacter, AddChar.mulShift_apply, mul_neg_one]
    rw [← Int.cast_neg, ZMod.stdAddChar_coe]
    congr 1
    unfold fourierAngle
    push_cast
    ring
  rw [hp, hm, ← Complex.two_cos]
  norm_cast

theorem actual_standard_fourier_dispersion (τ a ξ : ℝ) (ha : a ≠ 0)
    (k : ℤ) (hmesh : a*ξ = fourierAngle N k) :
    hamiltonianOperator N (-τ/a^2) (fun _ => 2*τ/a^2)
      (modeVector N (fourierCharacter N k)) =
      (discreteDispersion τ a ξ : ℂ) • modeVector N (fourierCharacter N k) := by
  apply actual_character_dispersion N τ a ξ ha
  rw [hmesh]
  exact standard_fourier_phase N k

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicStandardFourierPhase
