# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualXiExponentialEnvelope.Variantf1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e0a0cf4d4529cf53bab07a5206c71dcbbe781b6` · SHA-256 `f1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualXiTailPrimitive
import Mathlib.MeasureTheory.Integral.ExpDecay

/-!
The literal shifted Chebyshev primitive has an unconditional exponential
envelope, with every closed prime power and gamma head retained. This supplies
its genuine Laplace integrability only to the right of one half. It supplies
no uniform primitive average or original signed arithmetic witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiExponentialEnvelope
open MeasureTheory Set Filter
open scoped Interval Topology
open RootActualXiTailPrimitive RH16ActualPsiNegativeBlock
noncomputable section

/-- The explicit coefficient uses the actual original gamma correction. -/
def actualXiExponentialEnvelopeConstant : ℝ :=
  Real.log 4 + 5 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|

private theorem coefficient_nonneg : 0 ≤ actualXiExponentialEnvelopeConstant := by
  unfold actualXiExponentialEnvelopeConstant
  positivity

/-- The true closed arithmetic density has an unconditional exponential envelope. -/
theorem actualXiTailTimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualXiTailTimeDensity t| ≤ actualXiExponentialEnvelopeConstant * Real.exp (t / 2) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht
  have he1 : 1 ≤ Real.exp t := Real.one_le_exp_iff.mpr ht0
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have ha : |shiftedActualChebyshev (Real.exp t)| ≤
      actualXiExponentialEnvelopeConstant * Real.exp t := by
    have hh := (abs_add_le (Chebyshev.psi (Real.exp t) - Real.exp t) c).trans
      (add_le_add_right (abs_sub (Chebyshev.psi (Real.exp t)) (Real.exp t)) |c|)
    rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_pos (Real.exp_pos _)] at hh
    unfold shiftedActualChebyshev actualXiExponentialEnvelopeConstant
    change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤
      (Real.log 4 + 5 + |c|) * Real.exp t
    nlinarith [abs_nonneg c]
  rw [actualXiTailTimeDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (actualXiExponentialEnvelopeConstant * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right ha (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2 <;> ring

/-- Genuine finite L1 precedes integration of the original signed density. -/
theorem actualAnchoredXiTailPrimitive_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualAnchoredXiTailPrimitive t| ≤
      2 * actualXiExponentialEnvelopeConstant * (Real.exp (t / 2) - Real.sqrt 7) := by
  let D := actualXiExponentialEnvelopeConstant
  have hi : IntervalIntegrable (fun r : ℝ => D * Real.exp (r / 2)) volume
      (Real.log 7) t := (by fun_prop : Continuous (fun r : ℝ => D * Real.exp (r / 2)))
        .intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact actualXiTailTimeDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * D * Real.exp (r / 2))
      (D * Real.exp (r / 2)) r := by
    convert (((hasDerivAt_id r).div_const 2).exp.const_mul (2 * D)) using 1 <;> ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  rw [he, Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at hh
  change |∫ r in Real.log 7..t, actualXiTailTimeDensity r| ≤ _
  simpa only [Real.norm_eq_abs, D, mul_sub] using hh

end
end FormalResearch.RiemannHypothesis.RootActualXiExponentialEnvelope
```
