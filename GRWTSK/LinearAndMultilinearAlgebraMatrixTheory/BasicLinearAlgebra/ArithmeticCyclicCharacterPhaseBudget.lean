/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterPhase
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Complete error propagation for two genuine-character observation channels

The observations approximate the character-only potentials at labels m and k*m
for the same genuine character. Their errors are charged independently. The
nonzero imaginary multiplier is retained in the denominator; no uniform
conditioning across characters or levels is assumed.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This supplies finite-sample error propagation, not an L-function estimate,
analytic continuation, or GRH. A uniform phase-selection theorem is separate.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterPhaseBudget

open ArithmeticCyclicCharacterPhase

def reconstructedSample (level : ℕ) (χ : DirichletCharacter ℂ level)
    (k : ℕ) (r₀ rₖ : ℝ) : ℂ :=
  (r₀ : ℂ) +
    ((((χ (k : ZMod level)).re * r₀ - rₖ) / (χ (k : ZMod level)).im : ℝ) : ℂ) * Complex.I

variable (N : ℕ) [hN : NeZero N]
include hN

theorem imaginary_error_bound (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (k : ℕ) (hk : (χ (k : ZMod level)).im ≠ 0)
    (i : ZMod N) (r₀ rₖ ε₀ εₖ : ℝ)
    (h₀ : |characterPotential N level χ m i - r₀| ≤ ε₀)
    (hₖ : |characterPotential N level χ (fun j => k * m j) i - rₖ| ≤ εₖ) :
    |(χ (m i : ZMod level)).im -
        ((χ (k : ZMod level)).re * r₀ - rₖ) / (χ (k : ZMod level)).im| ≤
      (|(χ (k : ZMod level)).re| * ε₀ + εₖ) / |(χ (k : ZMod level)).im| := by
  rw [imaginary_part_recovery N level χ m k hk i]
  have heq :
      ((χ (k : ZMod level)).re * characterPotential N level χ m i -
          characterPotential N level χ (fun j => k * m j) i) / (χ (k : ZMod level)).im -
        ((χ (k : ZMod level)).re * r₀ - rₖ) / (χ (k : ZMod level)).im =
      ((χ (k : ZMod level)).re * (characterPotential N level χ m i - r₀) -
        (characterPotential N level χ (fun j => k * m j) i - rₖ)) /
          (χ (k : ZMod level)).im := by ring
  rw [heq, abs_div]
  apply div_le_div_of_nonneg_right _ (abs_nonneg _)
  calc
    _ ≤ |(χ (k : ZMod level)).re * (characterPotential N level χ m i - r₀)| +
        |characterPotential N level χ (fun j => k * m j) i - rₖ| := by
      simpa only [Real.norm_eq_abs] using
        norm_sub_le ((χ (k : ZMod level)).re * (characterPotential N level χ m i - r₀))
          (characterPotential N level χ (fun j => k * m j) i - rₖ)
    _ ≤ |(χ (k : ZMod level)).re| * ε₀ + εₖ := by
      rw [abs_mul]
      exact add_le_add (mul_le_mul_of_nonneg_left h₀ (abs_nonneg _)) hₖ

theorem complex_error_bound (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (k : ℕ) (hk : (χ (k : ZMod level)).im ≠ 0)
    (i : ZMod N) (r₀ rₖ ε₀ εₖ : ℝ)
    (h₀ : |characterPotential N level χ m i - r₀| ≤ ε₀)
    (hₖ : |characterPotential N level χ (fun j => k * m j) i - rₖ| ≤ εₖ) :
    ‖χ (m i : ZMod level) - reconstructedSample level χ k r₀ rₖ‖ ≤
      ε₀ + (|(χ (k : ZMod level)).re| * ε₀ + εₖ) / |(χ (k : ZMod level)).im| := by
  have hre : |(χ (m i : ZMod level) - reconstructedSample level χ k r₀ rₖ).re| ≤ ε₀ := by
    simpa [reconstructedSample, characterPotential_eq_re] using h₀
  have him : |(χ (m i : ZMod level) - reconstructedSample level χ k r₀ rₖ).im| ≤
      (|(χ (k : ZMod level)).re| * ε₀ + εₖ) / |(χ (k : ZMod level)).im| := by
    simpa [reconstructedSample] using imaginary_error_bound N level χ m k hk i r₀ rₖ ε₀ εₖ h₀ hₖ
  exact (Complex.norm_le_abs_re_add_abs_im _).trans (add_le_add hre him)

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterPhaseBudget
