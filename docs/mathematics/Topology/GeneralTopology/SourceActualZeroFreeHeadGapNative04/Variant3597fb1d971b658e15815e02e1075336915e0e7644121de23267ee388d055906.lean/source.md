# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualZeroFreeHeadGapNative04.Variant3597fb1d971b658e15815e02e1075336915e0e7644121de23267ee388d055906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05bd2adcb37006058d96929bbfdd0575a6569ed0` · SHA-256 `3597fb1d971b658e15815e02e1075336915e0e7644121de23267ee388d055906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalZeroHead
import Zeta23.FromPNTPlus.ZetaBounds

/-!
The genuine classical zero-free strip gives an actual-carrier gap at each finite
height. At the accepted exponential moving height this gap only subtracts an
inverse eighth-power correction from the source exponential exponent. The low
ordinate prefix |Im rho| <= 3 remains outside the gap theorem and is never deleted.
The growing scalar allowance below is not a lower bound for any signed zero sum.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroFreeHeadGap
open Zeta23 Set Filter
open scoped Topology
open SourceActualBumpMovingHeight
noncomputable section

private theorem actual_zero_upper_gap (a : ℝ)
    (hf : ∀ (sigma t : ℝ), 3 < |t| →
      sigma ∈ Ico (1 - a / (Real.log |t|) ^ 9) 1 →
      riemannZeta ((sigma : ℂ) + (t : ℂ) * Complex.I) ≠ 0)
    (rho : ℂ) (hrho : IsNontrivialZero rho) (ht : 3 < |rho.im|) :
    rho.re < 1 - a / (Real.log |rho.im|) ^ 9 := by
  by_contra hn
  have hne := hf rho.re rho.im ht ⟨le_of_not_gt hn, hrho.2.2⟩
  have he : ((rho.re : ℂ) + (rho.im : ℂ) * Complex.I) = rho := by
    apply Complex.ext <;> simp
  rw [he] at hne
  exact hne hrho.1

/-- Both sides of the actual zero strip have a genuine ordinate-dependent gap. -/
theorem actualCarrier_zero_free_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ rho : (zetaZeros zetaSeam).carrier, 3 < |(rho : ℂ).im| →
        a / (Real.log |(rho : ℂ).im|) ^ 9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log |(rho : ℂ).im|) ^ 9 := by
  obtain ⟨a, ha, hf⟩ := ZetaZeroFree
  refine ⟨a, ha, fun rho ht => ?_⟩
  have hrho : IsNontrivialZero (rho : ℂ) := rho.2
  have hu := actual_zero_upper_gap a hf rho hrho ht
  have hl := actual_zero_upper_gap a hf (reflect rho)
    (zetaSeam.reflect_zero rho hrho) (by simpa [reflect] using ht)
  have he : (reflect (rho : ℂ)).re = 1 - (rho : ℂ).re := by simp [reflect]
  have hi : (reflect (rho : ℂ)).im = (rho : ℂ).im := by simp [reflect]
  rw [he, hi] at hl
  exact ⟨by linarith, hu⟩

/-- The exact open-height head retains the low ordinate prefix; the rest has this finite gap. -/
theorem actualCarrier_below_height_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ R : ℝ, 3 < R → ∀ rho : (zetaZeros zetaSeam).carrier,
        3 < |(rho : ℂ).im| → |(rho : ℂ).im| < R →
        a / (Real.log R) ^ 9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log R) ^ 9 := by
  obtain ⟨a, ha, hg⟩ := actualCarrier_zero_free_gap
  refine ⟨a, ha, fun R hR rho ht hheight => ?_⟩
  have htpos : 0 < |(rho : ℂ).im| := by linarith
  have hl : 0 < Real.log |(rho : ℂ).im| := Real.log_pos (by linarith)
  have hlR : Real.log |(rho : ℂ).im| ≤ Real.log R :=
    Real.log_le_log htpos hheight.le
  have hd : (Real.log |(rho : ℂ).im|) ^ 9 ≤ (Real.log R) ^ 9 :=
    pow_le_pow_left₀ hl.le hlR 9
  have hratio : a / (Real.log R) ^ 9 ≤ a / (Real.log |(rho : ℂ).im|) ^ 9 :=
    div_le_div_of_nonneg_left ha.1.le (by positivity) hd
  have hh := hg rho ht
  exact ⟨hratio.trans_lt hh.1, hh.2.trans_le (by linarith)⟩

/-- The accepted moving height only changes the exponential exponent by O(A^-8). -/
theorem actualZeroFreeMovingExponent_eq (a c A : ℝ) (hc : 1 < c) (hA : 0 < A) :
    A - 2 * a * A / (Real.log (actualBumpMovingHeight A c)) ^ 9 =
      A - (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) / A ^ 8 := by
  unfold actualBumpMovingHeight
  rw [Real.log_exp]
  have hc0 : 2 * c - 1 ≠ 0 := by linarith
  have hA0 := ne_of_gt hA
  field_simp

/-- The moving-height exponent correction actually tends to zero, not to infinity. -/
theorem actualZeroFreeMovingCorrection_tendsto_zero (a c : ℝ) :
    Tendsto (fun A : ℝ => (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) / A ^ 8)
      atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ)) := tendsto_inv_atTop_zero
  have hp : Tendsto (fun A : ℝ => (A ^ 8)⁻¹) atTop (𝓝 (0 : ℝ)) := by
    simpa only [inv_pow, zero_pow (by norm_num : (8 : ℕ) ≠ 0)] using hi.pow 8
  change Tendsto (fun A : ℝ =>
    (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) * (A ^ 8)⁻¹) atTop (𝓝 0)
  simpa only [mul_zero] using hp.const_mul (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9)

/-- This method's scalar norm allowance grows; no actual signed contribution is asserted. -/
theorem actualZeroFreeMovingAllowance_tendsto_atTop (a c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ =>
      Real.exp (A - 2 * a * A / (Real.log (actualBumpMovingHeight A c)) ^ 9) / A ^ 9)
      atTop atTop := by
  have he : Tendsto (fun A : ℝ =>
      Real.exp (-(2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) / A ^ 8)) atTop (𝓝 1) := by
    have hh := (Real.continuous_exp.tendsto (0 : ℝ)).comp
      (actualZeroFreeMovingCorrection_tendsto_zero a c).neg
    simpa only [Function.comp_def, neg_zero, Real.exp_zero, neg_div] using hh
  have hh := (Real.tendsto_exp_div_pow_atTop 9).atTop_mul_pos (by norm_num : (0 : ℝ) < 1) he
  apply hh.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [actualZeroFreeMovingExponent_eq a c A hc hA, Real.exp_sub]
  simp only [Real.exp_neg, neg_div]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroFreeHeadGap
```
