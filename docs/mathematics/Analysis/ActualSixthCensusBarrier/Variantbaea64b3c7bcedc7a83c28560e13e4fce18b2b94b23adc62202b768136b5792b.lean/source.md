# Complete source: GRWTSK.Analysis.ActualSixthCensusBarrier.Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98f35bbf918b355a2131d9a6c63579833bdfc9a4` · SHA-256 `baea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCensusMoment
import FormalResearch.RiemannHypothesis.Conversation.ActualSixthLaplaceGrowth
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Actual sixth census growth after its complete finite error payment

The unchanged sixth census retains its full native integer inventory. The
positive edge source moment survives the uniformly bounded quadrature and
negative-half correction, so every eventual polynomial upper bound fails.
This coarse exponential lower bound does not certify the exact paper leading
coefficient or transfer positivity to the signed exceptional arithmetic Gram.
Human square/sixth and full-source direction: grwtsk contributors. Local next
census and asymptotic consumer: OpenAI Codex. Qualified sources and upstream
limit theorems retain their own origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusBarrier
open ActualCensusCutoff ActualCensusMoment ActualSixthLaplaceGrowth PolynomialMertensReduction
open Filter
noncomputable section

theorem actual_sixth_census_exponential_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) - 15 ≤ actualCensus A 6 :=
  (sub_le_sub_right (actual_sixth_squared_moment_lower hA) 15).trans
    (actual_sixth_census_retains_moment hA)

theorem actual_sixth_census_has_no_eventual_polynomial_upper :
    ¬ EventuallyPolynomialUpper (fun A ↦ actualCensus A 6) := by
  rintro ⟨m, D, R, hD, _hR, hcap⟩
  have hevent : ∀ᶠ A : ℝ in atTop,
      (243 / 2) * (D + 15) * Real.exp (2 / 3) + 1 <
        Real.exp ((1 / 3) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (1 / 3) (by norm_num)).eventually
        (eventually_gt_atTop ((243 / 2) * (D + 15) * Real.exp (2 / 3) + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  let A := max S (max R 8)
  have hA8 : 8 ≤ A := (le_max_right R 8).trans (le_max_right S _)
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have hAR : R ≤ A := (le_max_left R 8).trans (le_max_right S _)
  have hpow1 : 1 ≤ A ^ m := one_le_pow₀ hA1
  have hsmall := (actual_sixth_census_exponential_lower hA8).trans (hcap A hAR)
  have hupper : (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) ≤
      (D + 15) * A ^ m := by nlinarith
  rw [← mul_div_assoc] at hupper
  have hpaid := (div_le_iff₀ (pow_pos hApos 9)).mp hupper
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A (le_max_left _ _))
  have heq : Real.exp ((1 / 3) * A) =
      Real.exp ((A - 2) / 3) * Real.exp (2 / 3) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hmult := mul_le_mul_of_nonneg_right hpaid (Real.exp_pos (2 / 3)).le
  rw [heq, pow_add] at hbig
  nlinarith [mul_pos (pow_pos hApos m) (pow_pos hApos 9)]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusBarrier
```
