# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSixthCensusOrder.Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac073defd5ee3f5d5897294cd67dd1ed70970fb4` · SHA-256 `6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSixthCensusBarrier
import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedNormUpper

/-!
# Two fixed positive constants for the actual sixth census

The full bilateral source moment is compared with the complete absolute norm,
then the entire finite census error is paid. Combined with the retained edge
lower bound, this gives two positive constants and one eventual threshold
for exp(A/3)/A^9. It establishes the growth order of the actual unit-coefficient
census, without certifying the exact paper leading coefficient or any signed
exceptional-Gram lower bound. Human square/sixth source direction:
grwtsk contributors. Local next census consumer: OpenAI Codex. Qualified source
and Mathlib results retain their own origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusOrder
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity ActualSourceLaplaceMoment ActualLogarithmicIntegral
open ActualCensusCutoff ActualCensusMoment ActualSixthCensusBarrier
open ActualWeightedTransformNorm ActualWeightedNormUpper MeasureTheory Set Filter
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem actual_laplace_square_le_full_absolute_norm {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (testMoment A σ) ^ 2 ≤ normPrice A σ := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hf : Continuous (fun t ↦ Real.exp (σ * t) * C A t) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hc
  have hreflect : (∫ t in -(2 * A)..0, Real.exp (σ * t) * C A t) =
      ∫ t in (0 : ℝ)..2 * A, Real.exp ((-σ) * t) * C A t := by
    calc
      _ = ∫ t in (0 : ℝ)..2 * A, Real.exp (σ * (-t)) * C A (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg (fun t ↦ Real.exp (σ * t) * C A t)
            (a := 0) (b := 2 * A)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [sourceCorrelation_even A t]
        congr 2
        ring
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (a := -(2 * A)) (b := 0) (c := 2 * A)
    (hf.intervalIntegrable _ _) (hf.intervalIntegrable _ _)
  rw [hreflect] at hs
  have hm := actual_full_moment_retains_negative_half hA σ
  have heq : (testMoment A σ) ^ 2 =
      ∫ t in (-2 * A)..2 * A, Real.exp (σ * t) * C A t := by
    have hn : -(2 * A) = -2 * A := by ring
    rw [hn] at hs
    linarith
  rw [heq]
  apply intervalIntegral.integral_mono_on (by linarith : -2 * A ≤ 2 * A)
    (hf.intervalIntegrable _ _) (full_weighted_norm_integrand_intervalIntegrable hA σ)
  intro t _
  simpa only [mul_comm] using
    mul_le_mul_of_nonneg_right (le_abs_self (C A t)) (Real.exp_pos (σ * t)).le

theorem actual_sixth_census_complete_upper {A : ℝ} (hA : 8 ≤ A) :
    actualCensus A 6 ≤ (max 1 (upperConstant (1 / 6)) / 6) *
      (Real.exp (A / 3) / A ^ 9) + 15 := by
  have hA1 : 1 ≤ A := by linarith
  have hc := actual_complete_census_moment_error_le_fifteen hA
    (by norm_num : (0 : ℝ) < 6) (by norm_num)
  have hm := actual_laplace_square_le_full_absolute_norm hA1 (1 / 6)
  have hn := full_actual_weighted_norm_upper hA1 (by norm_num : (0 : ℝ) < 1 / 6)
  have he : 2 * (1 / 6 : ℝ) * A = A / 3 := by ring
  rw [he] at hn
  have hprice0 : 0 ≤ Real.exp (A / 3) / A ^ 9 := by positivity
  have hu := mul_le_mul_of_nonneg_left (le_max_right 1 (upperConstant (1 / 6))) hprice0
  have hn' : normPrice A (1 / 6) ≤ max 1 (upperConstant (1 / 6)) *
      (Real.exp (A / 3) / A ^ 9) := hn.trans (by simpa only [mul_comm] using hu)
  have ht := (abs_le.mp hc).2
  nlinarith

theorem actual_sixth_census_two_eventual_positive_constants :
    ∃ c K R : ℝ, 0 < c ∧ 0 < K ∧ 8 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * (Real.exp (A / 3) / A ^ 9) ≤ actualCensus A 6 ∧
        actualCensus A 6 ≤ K * (Real.exp (A / 3) / A ^ 9) := by
  let c : ℝ := (1 / 243) * Real.exp (-2 / 3)
  let K : ℝ := max 1 (upperConstant (1 / 6)) / 6 + 15
  have hc : 0 < c := by dsimp only [c]; positivity
  have hK : 0 < K := by
    have hmax : 1 ≤ max 1 (upperConstant (1 / 6)) := le_max_left _ _
    dsimp only [K]
    linarith
  have hevent : ∀ᶠ A : ℝ in atTop,
      max 1 (15 / c) ≤ Real.exp (A / 3) / A ^ 9 := by
    simpa only [Real.rpow_natCast, one_div_mul_eq_div] using
      (tendsto_exp_mul_div_rpow_atTop (9 : ℕ) (1 / 3) (by norm_num)).eventually
        (eventually_ge_atTop (max 1 (15 / c)))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  refine ⟨c, K, max S 8, hc, hK, le_max_right _ _, ?_⟩
  intro A hAR
  have hA8 : 8 ≤ A := (le_max_right S 8).trans hAR
  have hApos : 0 < A := by linarith
  have hp := hS A ((le_max_left S 8).trans hAR)
  have hp1 : 1 ≤ Real.exp (A / 3) / A ^ 9 := (le_max_left _ _).trans hp
  have hp15 : 15 / c ≤ Real.exp (A / 3) / A ^ 9 := (le_max_right _ _).trans hp
  have hpaid : 15 ≤ c * (Real.exp (A / 3) / A ^ 9) := by
    have h := (div_le_iff₀ hc).mp hp15
    nlinarith
  constructor
  · have hl := actual_sixth_census_exponential_lower hA8
    have heq : (2 / 243 : ℝ) * (Real.exp ((A - 2) / 3) / A ^ 9) =
        2 * c * (Real.exp (A / 3) / A ^ 9) := by
      dsimp only [c]
      have he : Real.exp ((A - 2) / 3) = Real.exp (-2 / 3) * Real.exp (A / 3) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    rw [heq] at hl
    nlinarith
  · have hu := actual_sixth_census_complete_upper hA8
    dsimp only [K]
    nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusOrder
```
