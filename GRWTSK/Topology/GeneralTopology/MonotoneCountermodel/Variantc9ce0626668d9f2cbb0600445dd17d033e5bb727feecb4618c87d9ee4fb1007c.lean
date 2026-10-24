import MonotoneSourceReadout
import ActualMomentDictionary

/-!
Whole-real-scale assembly of the optional monotone measure diagnostic, using
the independently replayed literal actual-source transform. This is a generic
measure countermodel, not an actual-prime or zeta-zero construction.
Direction: grwtsk contributors. Lean and review assisted by OpenAI Codex.
-/
set_option autoImplicit false
namespace ContinuousResearch.MonotoneCountermodel
open MeasureTheory Filter
open scoped Topology
open ContinuousResearch.MonotoneMatchingMeasure
open ContinuousResearch.MonotoneSourceReadout
open ContinuousResearch.ActualRealMode
open ContinuousResearch.ActualMomentDictionary
noncomputable section

theorem sourceModeMoment_dictionary (A : ℝ) (hA : 1 ≤ A) :
    sourceModeMoment A = normalizedSquare A (1 / 4) := by
  unfold sourceModeMoment sourceMode
  rw [show -(2 * A) = -2 * A by ring]
  calc
    _ = ∫ t in (-2 * A)..2 * A, Real.exp ((1 / 4 : ℝ) * t) *
        FormalResearch.RiemannHypothesis.SourcePairing.sourceCorrelation
          FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.explicitSecondDerivative A t := by
      apply intervalIntegral.integral_congr
      intro t _
      exact congrArg (fun u : ℝ => Real.exp u *
        FormalResearch.RiemannHypothesis.SourcePairing.sourceCorrelation
          FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.explicitSecondDerivative A t)
        (show t / 4 = (1 / 4 : ℝ) * t by ring)
    _ = _ := interval_correlation_square A hA (1 / 4)

theorem sourceReadout_actual_square (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = amplitude / 4 * normalizedSquare A (1 / 4) - headRemainder A := by
  rw [sourceReadout_exact A hA, sourceModeMoment_dictionary A hA]

theorem actual_sourceReadout_tendsto : Tendsto sourceReadout atTop atTop :=
  bounded_remainder_transfer sourceReadout headRemainder amplitude 3 amplitude_pos
    sourceReadout_actual_square (fun A hA => (headRemainder_abs_lt_three A hA).le)

theorem actual_sourceReadout_scaled_limit :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) * sourceReadout A) atTop
      (𝓝 (36294635520 * amplitude)) := by
  have hQ := quarter_scaled_limit.const_mul (amplitude / 4)
  have hR := scaled_bounded_remainder headRemainder 3
    (fun A hA => (headRemainder_abs_lt_three A hA).le)
  have he : (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) * sourceReadout A) =ᶠ[atTop]
      (fun A => amplitude / 4 * (A ^ 9 * Real.exp (-A / 2) * normalizedSquare A (1 / 4)) -
        A ^ 9 * Real.exp (-A / 2) * headRemainder A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [sourceReadout_actual_square A hA]
    ring
  apply Tendsto.congr' he.symm
  convert hQ.sub hR using 1
  ring

theorem actual_sourceReadout_boundary_limit :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) * sourceReadout A) atTop (𝓝 0) := by
  have hE : Tendsto (fun A : ℝ => Real.exp (-A / 2)) atTop (𝓝 0) :=
    Real.tendsto_exp_atBot.comp (tendsto_neg_atTop_atBot.atBot_div_const (by norm_num))
  have h := actual_sourceReadout_scaled_limit.mul hE
  have he : (fun A : ℝ => A ^ 9 * Real.exp (-A) * sourceReadout A) =
      fun A => (A ^ 9 * Real.exp (-A / 2) * sourceReadout A) * Real.exp (-A / 2) := by
    funext A
    rw [show -A = -A / 2 + -A / 2 by ring, Real.exp_add]
    ring
  rw [he]
  simpa only [mul_zero] using h

theorem model_counting_power_saving (x : ℝ) (hx : 2 ≤ x) :
    |weightedPrefix (Real.log x) - x| < 3 * x ^ (3 / 4 : ℝ) := by
  have hx0 : 0 < x := by linarith
  have hp0 := Real.rpow_pos_of_pos hx0 (3 / 4 : ℝ)
  have hp1 : 1 ≤ x ^ (3 / 4 : ℝ) := Real.one_le_rpow (by linarith) (by norm_num)
  have h2 : (2 : ℝ) ^ (3 / 4 : ℝ) ≤ 2 := by
    simpa only [Real.rpow_one] using Real.rpow_le_rpow_of_exponent_le
      (by norm_num : (1 : ℝ) ≤ 2) (by norm_num : (3 / 4 : ℝ) ≤ 1)
  have h20 := Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 2) (3 / 4 : ℝ)
  rw [counting_exact x hx]
  have hnorm : |x - 2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) - x| ≤
      2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) + (2 : ℝ) ^ (3 / 4 : ℝ)) := by
    have he : x - 2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) - x =
      -2 + amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)) := by ring
    rw [he]
    have ht := abs_add_le (-2 : ℝ) (amplitude / 3 * (x ^ (3 / 4 : ℝ) - (2 : ℝ) ^ (3 / 4 : ℝ)))
    rw [abs_mul, abs_of_pos (div_pos amplitude_pos (by norm_num))] at ht
    have hs := abs_sub (x ^ (3 / 4 : ℝ)) ((2 : ℝ) ^ (3 / 4 : ℝ))
    rw [abs_of_pos hp0, abs_of_pos h20] at hs
    norm_num at ht
    have hm := mul_le_mul_of_nonneg_left hs (div_nonneg amplitude_pos.le (by norm_num : (0 : ℝ) ≤ 3))
    linarith
  have ha : amplitude < 1 := amplitude_lt_one_fifth.trans (by norm_num)
  have hm := mul_lt_mul_of_pos_right ha hp0
  have hgap := mul_nonneg (sub_nonneg.mpr hp1) amplitude_pos.le
  have htail := mul_le_mul_of_nonneg_left h2 (div_nonneg amplitude_pos.le (by norm_num : (0 : ℝ) ≤ 3))
  nlinarith

#check sourceModeMoment_dictionary
#print axioms sourceModeMoment_dictionary
#check sourceReadout_actual_square
#print axioms sourceReadout_actual_square
#check actual_sourceReadout_tendsto
#print axioms actual_sourceReadout_tendsto
#check actual_sourceReadout_scaled_limit
#print axioms actual_sourceReadout_scaled_limit
#check actual_sourceReadout_boundary_limit
#print axioms actual_sourceReadout_boundary_limit
#check model_counting_power_saving
#print axioms model_counting_power_saving
end
end ContinuousResearch.MonotoneCountermodel
