/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-! Exact Young-parameter optimization for projected nonnegative forms.
The square-root sector/vacuum inputs must be supplied by actual physical
estimates. No Yang--Mills construction is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumProjectionMarginOptimization

def youngMargin (a b θ : ℝ) : ℝ := a ^ 2 / (1 + θ) - b ^ 2 / θ

theorem exact_margin_loss (a b θ : ℝ) (hθ : 0 < θ) :
    (a - b) ^ 2 - youngMargin a b θ =
      ((a - b) * θ - b) ^ 2 / (θ * (1 + θ)) := by
  unfold youngMargin
  have ht : θ ≠ 0 := ne_of_gt hθ
  have hp : 1 + θ ≠ 0 := by linarith
  field_simp [ht, hp]
  <;> ring

theorem youngMargin_le_square (a b θ : ℝ) (hθ : 0 < θ) :
    youngMargin a b θ ≤ (a - b) ^ 2 := by
  have h := div_nonneg (sq_nonneg ((a - b) * θ - b))
    (le_of_lt (mul_pos hθ (by linarith : 0 < 1 + θ)))
  rw [← exact_margin_loss a b θ hθ] at h
  linarith

theorem optimizing_parameter_pos (a b : ℝ) (hb : 0 < b) (hab : b < a) :
    0 < b / (a - b) := div_pos hb (sub_pos.mpr hab)

theorem attained_margin (a b : ℝ) (hb : 0 < b) (hab : b < a) :
    youngMargin a b (b / (a - b)) = (a - b) ^ 2 := by
  have hθ := optimizing_parameter_pos a b hb hab
  have hc : (a - b) * (b / (a - b)) - b = 0 := by
    field_simp [ne_of_gt (sub_pos.mpr hab)]
    <;> ring
  have h := exact_margin_loss a b (b / (a - b)) hθ
  rw [hc] at h
  simp only [zero_pow, zero_div] at h
  linarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumProjectionMarginOptimization
