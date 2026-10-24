# Complete source: GRWTSK.Analysis.SpecialFunctions.CountErrorEnvelope.Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e` · SHA-256 `208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import Mathlib.Analysis.SpecialFunctions.Log.Monotone

/-!
First quantitative calculus step for the literal corrected count error. The
count theorem itself remains a named external premise. The log-log term uses
its tangent bound, retaining both rational coefficients and the endpoint.
This does not assert the remaining improper-integral budget or an arithmetic
witness. Originating direction: grwtsk contributors. Lean assistance: Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch

theorem loglog_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    Real.log (Real.log t) ≤ Real.log (Real.log T) +
      (Real.log t - Real.log T)/Real.log T := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have hLT : 0 < Real.log T := Real.log_pos hT
  have hLt : 0 < Real.log t := hLT.trans_le (Real.log_le_log hTp ht)
  have he := Real.log_le_sub_one_of_pos (div_pos hLt hLT)
  rw [Real.log_div hLt.ne' hLT.ne'] at he
  have hd : (Real.log t - Real.log T)/Real.log T =
      Real.log t/Real.log T - 1 := by
    field_simp
  rw [hd]
  linarith

theorem corrected_count_error_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    correctedBellottiWongError t ≤ correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T) * Real.log (t/T) := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have he := mul_le_mul_of_nonneg_left (loglog_tangent_upper T t hT ht)
    (by norm_num : (0 : ℝ) ≤ 12567/100000)
  calc
    correctedBellottiWongError t ≤
        (11200/100000 : ℝ)*Real.log t +
          (12567/100000 : ℝ)*(Real.log (Real.log T) +
            (Real.log t-Real.log T)/Real.log T) + (377417/100000 : ℝ) := by
      unfold correctedBellottiWongError
      linarith
    _ = correctedBellottiWongError T +
        ((11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
      rw [Real.log_div htp.ne' hTp.ne']
      unfold correctedBellottiWongError
      ring

theorem corrected_count_upper_of_external (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t ≤ zeroCountMain t + correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
  have h1 : 1 < T := (Real.one_lt_exp_iff.mpr (by norm_num : (0 : ℝ) < 1)).trans_le hT
  have hc := (le_abs_self (actualPositiveZeroCount t-zeroCountMain t)).trans (hBW t (hT.trans ht))
  have he := corrected_count_error_tangent_upper T t h1 ht
  linarith

theorem corrected_count_endpoint_lower_of_external (hBW : CorrectedBellottiWongCount)
    (T : ℝ) (hT : Real.exp 1 ≤ T) :
    zeroCountMain T - correctedBellottiWongError T ≤ actualPositiveZeroCount T := by
  have hc := (neg_abs_le (actualPositiveZeroCount T-zeroCountMain T)).trans' (neg_le_neg (hBW T hT))
  linarith

end CommonMeanStieltjes
```
