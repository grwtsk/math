# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeOffGridCorrectionBounds.Variant71cbbfc206c39985ee96fb035754e73fe9a551866a023ffe83aef48ea9519aff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30e23da595ca01c7857202f234808485716abc1e` · SHA-256 `71cbbfc206c39985ee96fb035754e73fe9a551866a023ffe83aef48ea9519aff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridModeBounds

/-!
# Uniform correction bounds at every real native radius A>=100

The literal four-term endpoint tail pays its full norm price, and the
reflected endpoint retains its exponential. Rational denominator and Taylor
bounds give ||F_A-1||<1/20 and ||F_A^2-1||<1/8. These exact uniform estimates
prepare the integer/half-integer native readout consumer. Human unchanged
source and uniform-threshold direction: grwtsk contributors. Local complex
triangle and numerical consumer: OpenAI Codex. No arithmetic signed lower
bound or RH conclusion follows from this comparison-source estimate.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCorrectionBounds
open NativeOffGridDensity NativeOffGridModeBounds ActualComplexLaplacePrimitive
noncomputable section

def endpointMinus (w : ℂ) : ℂ := 1 - 10 / w + 45 / w ^ 2 - 105 / w ^ 3 + 105 / w ^ 4
def endpointPlus (w : ℂ) : ℂ := 1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3 + 105 / w ^ 4
def tailPrice (w : ℂ) : ℝ := 10 / ‖w‖ + 45 / ‖w‖ ^ 2 + 105 / ‖w‖ ^ 3 + 105 / ‖w‖ ^ 4

theorem endpoint_minus_tail_norm (w : ℂ) : ‖endpointMinus w - 1‖ ≤ tailPrice w := by
  have he : endpointMinus w - 1 = -(10 / w) + 45 / w ^ 2 - 105 / w ^ 3 + 105 / w ^ 4 := by
    unfold endpointMinus
    ring
  rw [he]
  calc
    _ ≤ ‖-(10 / w) + 45 / w ^ 2 - 105 / w ^ 3‖ + ‖(105 : ℂ) / w ^ 4‖ := norm_add_le _ _
    _ ≤ (‖-(10 / w) + 45 / w ^ 2‖ + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_sub_le _ _
    _ ≤ ((‖-(10 / w)‖ + ‖(45 : ℂ) / w ^ 2‖) + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_add_le _ _
    _ = tailPrice w := by norm_num [tailPrice, norm_div, norm_pow]

theorem endpoint_plus_norm (w : ℂ) : ‖endpointPlus w‖ ≤ 1 + tailPrice w := by
  unfold endpointPlus
  calc
    _ ≤ ‖1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3‖ + ‖(105 : ℂ) / w ^ 4‖ := norm_add_le _ _
    _ ≤ (‖1 + 10 / w + 45 / w ^ 2‖ + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_add_le _ _
    _ ≤ ((‖1 + 10 / w‖ + ‖(45 : ℂ) / w ^ 2‖) + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_add_le _ _
    _ ≤ (((‖(1 : ℂ)‖ + ‖(10 : ℂ) / w‖) + ‖(45 : ℂ) / w ^ 2‖) + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_add_le _ _
    _ = _ := by norm_num [tailPrice, norm_div, norm_pow]; ring

theorem literal_tail_price_le_one_twenty_fifth {A : ℝ} (hA : 100 ≤ A) :
    tailPrice ((A : ℂ) * mode) ≤ 1 / 25 := by
  have hpos : 0 < A := by linarith
  have hm := literal_mode_norm_gt_three
  have hw : ‖(A : ℂ) * mode‖ = A * ‖mode‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hpos]
  have hx : (300 : ℝ) ≤ A * ‖mode‖ := by
    nlinarith [mul_nonneg (by linarith : 0 ≤ A - 100) (by linarith : 0 ≤ ‖mode‖ - 3)]
  have h1 : (10 : ℝ) / (A * ‖mode‖) ≤ 10 / 300 := by gcongr
  have h2 : (45 : ℝ) / (A * ‖mode‖) ^ 2 ≤ 45 / 300 ^ 2 := by gcongr
  have h3 : (105 : ℝ) / (A * ‖mode‖) ^ 3 ≤ 105 / 300 ^ 3 := by gcongr
  have h4 : (105 : ℝ) / (A * ‖mode‖) ^ 4 ≤ 105 / 300 ^ 4 := by gcongr
  unfold tailPrice
  rw [hw]
  norm_num at h1 h2 h3 h4 ⊢
  linarith

theorem literal_reflected_complex_exponential_norm (A : ℝ) :
    ‖Complex.exp (-2 * (A : ℂ) * mode)‖ = Real.exp (-A / 2) := by
  rw [Complex.norm_exp]
  congr 1
  norm_num [mode, Complex.mul_re, Complex.mul_im]
  ring

theorem literal_endpoint_correction_lt_one_twentieth {A : ℝ} (hA : 100 ≤ A) :
    ‖complexEndpointCorrection A mode - 1‖ < 1 / 20 := by
  have he : complexEndpointCorrection A mode - 1 =
      (endpointMinus ((A : ℂ) * mode) - 1) -
        Complex.exp (-2 * (A : ℂ) * mode) * endpointPlus ((A : ℂ) * mode) := by
    unfold complexEndpointCorrection endpointMinus endpointPlus
    ring
  have htail := literal_tail_price_le_one_twenty_fifth hA
  have hminus := (endpoint_minus_tail_norm ((A : ℂ) * mode)).trans htail
  have hplus : ‖endpointPlus ((A : ℂ) * mode)‖ ≤ 26 / 25 := by
    have h := endpoint_plus_norm ((A : ℂ) * mode)
    linarith
  have hexp : ‖Complex.exp (-2 * (A : ℂ) * mode)‖ ≤ 1 / 1024 := by
    rw [literal_reflected_complex_exponential_norm]
    exact (literal_reflected_exponential_lt_one_thousand_twenty_fourth hA).le
  rw [he]
  calc
    _ ≤ ‖endpointMinus ((A : ℂ) * mode) - 1‖ +
        ‖Complex.exp (-2 * (A : ℂ) * mode) * endpointPlus ((A : ℂ) * mode)‖ := norm_sub_le _ _
    _ ≤ 1 / 25 + (1 / 1024) * (26 / 25) := by
      rw [norm_mul]
      exact add_le_add hminus (mul_le_mul hexp hplus (norm_nonneg _) (by norm_num))
    _ < 1 / 20 := by norm_num

theorem correction_square_lt_one_eighth {w : ℂ} (hw : ‖w - 1‖ < 1 / 20) :
    ‖w ^ 2 - 1‖ < 1 / 8 := by
  have he : w + 1 = (w - 1) + 2 := by ring
  have hp : ‖w + 1‖ ≤ 41 / 20 := by
    rw [he]
    have h := norm_add_le (w - 1) (2 : ℂ)
    norm_num at h
    linarith
  have hfactor : w ^ 2 - 1 = (w - 1) * (w + 1) := by ring
  rw [hfactor, norm_mul]
  have hpaid := mul_le_mul hw.le hp (norm_nonneg (w + 1)) (by norm_num : (0 : ℝ) ≤ 1 / 20)
  exact lt_of_le_of_lt hpaid (by norm_num)

theorem literal_endpoint_correction_square_lt_one_eighth {A : ℝ} (hA : 100 ≤ A) :
    ‖complexEndpointCorrection A mode ^ 2 - 1‖ < 1 / 8 :=
  correction_square_lt_one_eighth (literal_endpoint_correction_lt_one_twentieth hA)

theorem literal_endpoint_correction_square_real_bounds {A : ℝ} (hA : 100 ≤ A) :
    7 / 8 < (complexEndpointCorrection A mode ^ 2).re ∧
      (complexEndpointCorrection A mode ^ 2).re < 9 / 8 := by
  have h := (Complex.abs_re_le_norm (complexEndpointCorrection A mode ^ 2 - 1)).trans_lt
    (literal_endpoint_correction_square_lt_one_eighth hA)
  rw [Complex.sub_re, Complex.one_re] at h
  have h' := abs_lt.mp h
  constructor <;> linarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCorrectionBounds
```
