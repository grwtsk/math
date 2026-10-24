# Complete source: GRWTSK.Analysis.Real.ClassicalRawCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2b7d91a2321c6764b1a5f087974d52914115809` · SHA-256 `7afd86367a387c7ba405b1bec9926f375bc002f308bbf1e940464a18e61adc68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.Analysis.Real.ClassicalRieszCorrection

/-! # The classical raw logarithmic correction
This identifies the differentiated rational correction with -log(1-x^-2)/2.
It does not identify the independent affine coefficient of the arithmetic source. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Real.ClassicalRawCorrection
open ClassicalRieszCorrection

theorem slope_eq_raw_log (x : ℝ) (hx : 1 < x) :
    slope x = -Real.log (1-(x⁻¹)^2)/2 := by
  have h0 : x ≠ 0 := by linarith
  have hm : x-1 ≠ 0 := by linarith
  have hp : x+1 ≠ 0 := by linarith
  have he : 1-(x⁻¹)^2 = (x-1)*(x+1)/(x^2) := by field_simp; ring
  rw [he,Real.log_div (mul_ne_zero hm hp) (pow_ne_zero 2 h0),Real.log_mul hm hp,Real.log_pow]
  unfold ClassicalRieszCorrection.slope
  ring

theorem slope_pos_le (x : ℝ) (hx : 1 < x) :
    0 < slope x ∧ slope x ≤ 1/(2*(x^2-1)) := by
  have h0 : x ≠ 0 := by linarith
  have hsq : 0 < x^2-1 := by nlinarith
  have he : 1-(x⁻¹)^2 = (x^2-1)/(x^2) := by field_simp
  have hr : 0 < 1-(x⁻¹)^2 := by rw [he]; exact div_pos hsq (sq_pos_of_ne_zero h0)
  have hr1 : 1-(x⁻¹)^2 < 1 := by have := sq_pos_of_ne_zero (inv_ne_zero h0); linarith
  rw [slope_eq_raw_log x hx]
  refine ⟨by have := Real.log_neg hr hr1; linarith,?_⟩
  have hl := Real.one_sub_inv_le_log_of_pos hr
  have hi : (1-(x⁻¹)^2)⁻¹-1 = 1/(x^2-1) := by rw [he]; field_simp; ring
  have hb : -Real.log (1-(x⁻¹)^2) ≤ (1-(x⁻¹)^2)⁻¹-1 := by linarith
  rw [hi] at hb
  have h := div_le_div_of_nonneg_right hb (by norm_num : (0:ℝ) ≤ 2)
  simpa only [div_div, mul_comm] using h
end GRWTSK.Analysis.Real.ClassicalRawCorrection
```
