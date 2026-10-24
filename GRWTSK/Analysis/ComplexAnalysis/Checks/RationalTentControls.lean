/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

set_option autoImplicit false

/-! Source controls, not executed tests or zeta-zero certificates.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.ComplexAnalysis.Checks.RationalTentControls

open RationalRoundedArithmetic
open RationalTentEvaluation

theorem quotient_conjugates_denominator :
    QComplex.div ⟨1, 2⟩ ⟨3, -4⟩ = ⟨-1 / 5, 2 / 5⟩ := by
  ext <;> norm_num [QComplex.div, QComplex.normSq]

theorem zero_quotient_not_guarded :
    ¬ (0 < (1 : ℚ) ∧ (1 : ℚ) ^ 2 ≤ 4 * QComplex.normSq QComplex.zero) := by
  norm_num [QComplex.normSq, QComplex.zero]

theorem negative_lower_cannot_pass_square_alone :
    (-1 : ℚ) ^ 2 ≤ 4 ∧ ¬ (0 < (-1 : ℚ)) := by norm_num

theorem center_zero_rejected (x h : ℚ) (p : Input) (hc : p.center = QComplex.zero) :
    ¬ Admissible x h p := by
  intro hp
  have hd := hp.2.2.2.2.1
  have hs := hp.2.2.2.2.2.1
  simp [hc, QComplex.normSq, QComplex.zero] at hs
  nlinarith

theorem center_minus_one_rejected (x h : ℚ) (p : Input) (hc : p.center = ⟨-1, 0⟩) :
    ¬ Admissible x h p := by
  intro hp
  have hd := hp.2.2.2.2.1
  have hs := hp.2.2.2.2.2.1
  simp [exponent, hc, QComplex.add, QComplex.one, QComplex.normSq] at hs
  nlinarith

theorem negative_coordinate_error_rejected (x h : ℚ) (p : Input)
    (hr : p.coordinateError < 0) : ¬ Admissible x h p := by
  intro hp
  exact (not_le_of_gt hr) hp.2.2.2.1

theorem middle_error_has_two_copies :
    (1 : ℚ) + 2 * 3 + 5 = 12 ∧ (1 : ℚ) + 3 + 5 ≠ 12 := by norm_num

theorem multiplicity_scales_whole_error :
    (3 : ℚ) * (1 / 10 + 1 / 20) = 9 / 20 := by norm_num

theorem final_rounding_is_not_free : roundoffQ 4 = 1 / 8 := by
  norm_num [roundoffQ, scaleQ]

theorem signed_division_control :
    QComplex.div ⟨0, 1⟩ ⟨0, 1⟩ = QComplex.one := by
  ext <;> norm_num [QComplex.div, QComplex.normSq, QComplex.one]

/-- A same-size arbitrary correspondence is not a bijection. -/
theorem repeated_key_not_injective : ¬ Function.Injective (fun _ : Fin 2 => (0 : Fin 2)) := by
  intro h
  have he := h (a₁ := (0 : Fin 2)) (a₂ := (1 : Fin 2)) rfl
  norm_num at he

theorem tolerance_equality_not_strict_prime_margin :
    (0 : ℚ) ≤ 0 ∧ ¬ (0 < (0 : ℝ)) := by norm_num

end GRWTSK.Analysis.ComplexAnalysis.Checks.RationalTentControls
