/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
# Translation energy of real autocorrelations

Lebesgue translation preserves the full squared energy. With an explicit L2
hypothesis, every mixed product is integrable and the autocorrelation defect
is exactly half the full squared translation difference. No compact-source,
endpoint-jump, differentiability or arithmetic hypothesis is discharged here.
-/

namespace GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy

open MeasureTheory

noncomputable section

/-- The actual full-line correlation of a real profile with its translation. -/
def autocorrelation (g : ℝ → ℝ) (h : ℝ) : ℝ :=
  ∫ x : ℝ, g x * g (x - h)

theorem translated_memLp {g : ℝ → ℝ} (square : MemLp g 2 volume) (h : ℝ) :
    MemLp (fun x : ℝ ↦ g (x - h)) 2 volume := by
  exact square.comp_measurePreserving (measurePreserving_sub_right volume h)

theorem translated_product_integrable {g : ℝ → ℝ} (square : MemLp g 2 volume)
    (h : ℝ) : Integrable (fun x : ℝ ↦ g x * g (x - h)) := by
  exact square.integrable_mul (translated_memLp square h)

theorem translated_difference_square_integrable {g : ℝ → ℝ}
    (square : MemLp g 2 volume) (h : ℝ) :
    Integrable (fun x : ℝ ↦ (g x - g (x - h)) ^ 2) := by
  exact (square.sub (translated_memLp square h)).integrable_sq

theorem zero_eq_square_integral (g : ℝ → ℝ) :
    autocorrelation g 0 = ∫ x : ℝ, g x ^ 2 := by
  simp only [autocorrelation, sub_zero, pow_two]

/-- Translation and the full mixed product give evenness without assuming profile parity. -/
theorem even (g : ℝ → ℝ) : Function.Even (autocorrelation g) := by
  intro h
  unfold autocorrelation
  rw [← integral_sub_right_eq_self (fun x : ℝ ↦ g x * g (x - -h)) h]
  apply integral_congr_ae
  filter_upwards [] with x
  have cancel : x - h - -h = x := by ring
  rw [cancel, mul_comm]

/-- Both original squares and the complete signed cross term are retained. -/
theorem defect_eq_half_translation_energy {g : ℝ → ℝ}
    (square : MemLp g 2 volume) (h : ℝ) :
    autocorrelation g 0 - autocorrelation g h =
      (1 / 2 : ℝ) * ∫ x : ℝ, (g x - g (x - h)) ^ 2 := by
  have originalSquare : Integrable (fun x : ℝ ↦ g x ^ 2) := square.integrable_sq
  have shiftedSquare : Integrable (fun x : ℝ ↦ g (x - h) ^ 2) :=
    (translated_memLp square h).integrable_sq
  have mixed : Integrable (fun x : ℝ ↦ g x * g (x - h)) :=
    translated_product_integrable square h
  have expansion : (fun x : ℝ ↦ (g x - g (x - h)) ^ 2) =
      fun x ↦ g x ^ 2 + g (x - h) ^ 2 - 2 * (g x * g (x - h)) := by
    funext x
    ring
  have translatedIntegral : (∫ x : ℝ, g (x - h) ^ 2) = ∫ x : ℝ, g x ^ 2 :=
    integral_sub_right_eq_self (fun x : ℝ ↦ g x ^ 2) h
  have combinedSquare : Integrable (fun x : ℝ ↦ g x ^ 2 + g (x - h) ^ 2) :=
    originalSquare.add shiftedSquare
  rw [expansion, integral_sub combinedSquare (mixed.const_mul 2),
    integral_add originalSquare shiftedSquare, integral_const_mul, translatedIntegral,
    zero_eq_square_integral]
  unfold autocorrelation
  ring

theorem defect_nonneg {g : ℝ → ℝ} (square : MemLp g 2 volume) (h : ℝ) :
    0 ≤ autocorrelation g 0 - autocorrelation g h := by
  rw [defect_eq_half_translation_energy square h]
  exact mul_nonneg (by norm_num) (integral_nonneg (fun x ↦ sq_nonneg _))

end

end GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy
