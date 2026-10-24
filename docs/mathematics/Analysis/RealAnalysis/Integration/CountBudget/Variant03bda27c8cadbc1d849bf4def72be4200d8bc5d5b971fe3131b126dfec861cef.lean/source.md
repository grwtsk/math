# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CountBudget.Variant03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cecdb253bb0c844418c5f46c464d94f69d600d55` · SHA-256 `03bda27c8cadbc1d849bf4def72be4200d8bc5d5b971fe3131b126dfec861cef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountBudgetReduction
import scratch.common_mean_stieltjes_20261004.LogMoments

/-!
The actual corrected count-to-sixth-tail budget. All count-integral convergence,
strict endpoint subtraction, logarithmic moments and rational error coefficients
are proved. The literal Bellotti--Wong count theorem is the sole named external
input here; no accepted representation of that theorem is asserted.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex.
-/
set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory Set CommonMeanScratch

theorem count_main_kernel_eq (T t : ℝ) (hT : 0 < T) (ht : 0 < t) :
    zeroCountMain t/t^7 = (1/(2*Real.pi))*(Real.log (t/T)/t^6 +
      (Real.log (T/(2*Real.pi))-1)*(1/t^6)) := by
  have hp : 2*Real.pi ≠ 0 := by positivity
  have hl : Real.log (t/(2*Real.pi)) = Real.log (t/T)+Real.log (T/(2*Real.pi)) := by
    rw [Real.log_div ht.ne' hp, Real.log_div ht.ne' hT.ne', Real.log_div hT.ne' hp]
    ring
  rw [count_main_endpoint t ht, hl]
  field_simp
  ring

theorem count_main_seventh_integrable (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => zeroCountMain t/t^7) (Ioi T) := by
  have hpower : IntegrableOn (fun t : ℝ => 1/t^6) (Ioi T) :=
    inverse_power_integrable 5 (by norm_num) T hT
  have hlog := log_ratio_sixth_integrable T hT
  have hi : IntegrableOn (fun t : ℝ => (1/(2*Real.pi))*(Real.log (t/T)/t^6 +
      (Real.log (T/(2*Real.pi))-1)*(1/t^6))) (Ioi T) :=
    (hlog.add (hpower.const_mul _)).const_mul _
  apply hi.congr_fun _ measurableSet_Ioi
  intro t ht
  exact (count_main_kernel_eq T t hT (hT.trans ht)).symm

theorem count_main_seventh_integral (T : ℝ) (hT : 0 < T) :
    (∫ t : ℝ in Ioi T, zeroCountMain t/t^7) =
      (1/(2*Real.pi))*((Real.log (T/(2*Real.pi))-1)/(5*T^5)+1/(25*T^5)) := by
  have hpower : IntegrableOn (fun t : ℝ => 1/t^6) (Ioi T) :=
    inverse_power_integrable 5 (by norm_num) T hT
  have hlog := log_ratio_sixth_integrable T hT
  have he : (∫ t : ℝ in Ioi T, zeroCountMain t/t^7) =
      ∫ t : ℝ in Ioi T, (1/(2*Real.pi))*(Real.log (t/T)/t^6 +
        (Real.log (T/(2*Real.pi))-1)*(1/t^6)) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    exact count_main_kernel_eq T t hT (hT.trans ht)
  rw [he, integral_const_mul]
  have hadd := integral_add hlog (hpower.const_mul (Real.log (T/(2*Real.pi))-1))
  rw [hadd, integral_const_mul, log_ratio_sixth_integral T hT,
    inverse_power_integral 5 (by norm_num) T hT]
  norm_num only [Nat.cast_ofNat]
  ring

/-- Literal corrected count input implies the archived Stieltjes budget;
the negative CLOSED endpoint and complete STRICT integral are retained. -/
theorem corrected_count_budget (T : ℝ) (hT : Real.exp 1 ≤ T)
    (hBW : CorrectedBellottiWongCount) :
    -actualPositiveZeroCount T/T^6 +
      6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        positiveSixthPowerCountEnvelope T := by
  have hp : 0 < T := (Real.exp_pos 1).trans_le hT
  exact corrected_count_budget_of_integral_moments T hT hBW
    (count_main_seventh_integrable T hp) (count_main_seventh_integral T hp)
    (inverse_power_integrable 6 (by norm_num) T hp)
    (inverse_power_integral 6 (by norm_num) T hp)
    (log_ratio_seventh_integrable T hp) (log_ratio_seventh_integral T hp)

theorem actual_positive_sixth_count_bound (T : ℝ) (hT : Real.exp 1 ≤ T)
    (hBW : CorrectedBellottiWongCount) :
    actualPositiveSixthPowerTail T ≤ positiveSixthPowerCountEnvelope T := by
  have hs : 3/2 ≤ T := by linarith [Real.add_one_le_exp (1 : ℝ)]
  rw [(actual_positive_sixth_stieltjes T hs).2.2]
  exact corrected_count_budget T hT hBW

end CommonMeanStieltjes
```
