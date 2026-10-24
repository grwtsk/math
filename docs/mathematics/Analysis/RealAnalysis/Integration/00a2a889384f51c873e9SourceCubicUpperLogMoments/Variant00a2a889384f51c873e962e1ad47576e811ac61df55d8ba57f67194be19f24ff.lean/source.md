# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.00a2a889384f51c873e9SourceCubicUpperLogMoments.Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce2d52f630ec274745be9552a44092446177056f` · SHA-256 `00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
import SourceSignedSamplingExplicitBudget
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Actual upper logarithmic moments for the cubic source row

AI attribution: OpenAI Codex. The literal u>1 domain has fourth and fifth
logarithmic moments 768 and 7680. The analytic centered sawtooth is fract(u)-1/2;
it is distinct from the finite arithmetic centeredBeta prefix. The full short
divisor inventory is retained in the conditional sum estimate. This module
supplies no quadrature identity or complete signed arithmetic reconstruction.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCubicUpperLogMoments

open MeasureTheory Set
open scoped BigOperators
open SourceSamplingCoefficients SourceSignedSamplingExplicitBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateMertensAbel

noncomputable section

/-- Literal upper logarithmic density, with the positive-axis power convention. -/
def upperLogWeight (j : ℕ) (u : ℝ) : ℝ :=
  u ^ (-(3 : ℝ) / 2) * (Real.log u) ^ j

theorem exp_mul_upperLogWeight (j : ℕ) (t : ℝ) :
    Real.exp t * upperLogWeight j (Real.exp t) = t ^ j * Real.exp (-t / 2) := by
  unfold upperLogWeight
  rw [Real.rpow_def_of_pos (Real.exp_pos t), Real.log_exp]
  rw [← mul_assoc, ← Real.exp_add]
  rw [show t + t * (-(3 : ℝ) / 2) = -t / 2 by ring]
  ring

/-- The genuine semi-infinite substitution evaluates every nonnegative integer degree. -/
theorem upperLogWeight_integral (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), upperLogWeight j u) =
      (2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) := by
  have hs := integral_comp_exp_Ioi (upperLogWeight j) (0 : ℝ)
  simp only [Real.exp_zero, smul_eq_mul] at hs
  rw [← hs]
  simp_rw [exp_mul_upperLogWeight]
  exact exponential_half_integral j

/-- Integrability is established for the actual density, not assumed from formal moments. -/
theorem upperLogWeight_integrable (j : ℕ) :
    IntegrableOn (upperLogWeight j) (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by rw [upperLogWeight_integral]; positivity)

theorem upperLogWeight_nonneg (j : ℕ) {u : ℝ} (hu : 1 ≤ u) :
    0 ≤ upperLogWeight j u := by
  unfold upperLogWeight
  exact mul_nonneg (Real.rpow_nonneg (by linarith) _)
    (pow_nonneg (Real.log_nonneg hu) _)

theorem upper_fourth_log_moment :
    (∫ u in Ioi (1 : ℝ), u ^ (-(3 : ℝ) / 2) * (Real.log u) ^ 4) = 768 := by
  change (∫ u in Ioi (1 : ℝ), upperLogWeight 4 u) = _
  rw [upperLogWeight_integral]
  norm_num

theorem upper_fifth_log_moment :
    (∫ u in Ioi (1 : ℝ), u ^ (-(3 : ℝ) / 2) * (Real.log u) ^ 5) = 7680 := by
  change (∫ u in Ioi (1 : ℝ), upperLogWeight 5 u) = _
  rw [upperLogWeight_integral]
  norm_num

/-- Independent cubic derivative envelope on the literal upper interval. -/
def cubicUpperMajorant (A k u : ℝ) : ℝ :=
  67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * upperLogWeight 4 u + upperLogWeight 5 u / 48)

theorem cubicUpperMajorant_integrable (A k : ℝ) :
    IntegrableOn (cubicUpperMajorant A k) (Ioi (1 : ℝ)) :=
  (((upperLogWeight_integrable 4).const_mul (5 / 24 : ℝ)).add
    ((upperLogWeight_integrable 5).div_const 48)).const_mul _

theorem cubicUpperMajorant_nonneg (A k : ℝ) {u : ℝ} (hu : 1 ≤ u) :
    0 ≤ cubicUpperMajorant A k u := by
  unfold cubicUpperMajorant
  have h4 := upperLogWeight_nonneg 4 hu
  have h5 := upperLogWeight_nonneg 5 hu
  positivity

/-- All upper cubic derivative remainder mass, before centering, is exactly 320. -/
theorem cubicUpperMajorant_integral (A k : ℝ) :
    (∫ u in Ioi (1 : ℝ), cubicUpperMajorant A k u) =
      320 * 67 / (A ^ 4 * Real.sqrt k) := by
  unfold cubicUpperMajorant
  rw [integral_const_mul,
    integral_add ((upperLogWeight_integrable 4).const_mul (5 / 24 : ℝ))
      ((upperLogWeight_integrable 5).div_const 48),
    integral_const_mul, integral_div, upperLogWeight_integral, upperLogWeight_integral]
  norm_num
  ring

/-- Literal centered periodic sawtooth; no arithmetic-prefix identification is made. -/
def centeredSawtooth (u : ℝ) : ℝ := Int.fract u - 1 / 2

theorem centeredSawtooth_abs_le_half (u : ℝ) : |centeredSawtooth u| ≤ 1 / 2 := by
  unfold centeredSawtooth
  have hl := Int.fract_nonneg u
  have hu := (Int.fract_lt_one u).le
  apply abs_le.mpr
  constructor <;> linarith

theorem centeredSawtooth_measurable : Measurable centeredSawtooth :=
  measurable_fract.sub measurable_const

/-- Every measurable derivative error dominated by the actual cubic envelope is integrable. -/
theorem centered_cubic_row_integrable_of_bound (A k : ℝ) {f : ℝ → ℝ}
    (hf : AEStronglyMeasurable f (volume.restrict (Ioi (1 : ℝ))))
    (hbound : ∀ u : ℝ, 1 < u → |f u| ≤ cubicUpperMajorant A k u) :
    IntegrableOn (fun u => centeredSawtooth u * f u) (Ioi (1 : ℝ)) := by
  apply ((cubicUpperMajorant_integrable A k).div_const 2).mono'
  · exact centeredSawtooth_measurable.aestronglyMeasurable.mul hf
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (1 / 2 : ℝ) * cubicUpperMajorant A k u :=
        mul_le_mul (centeredSawtooth_abs_le_half u) (hbound u hu)
          (abs_nonneg _) (by norm_num)
      _ = _ := by ring

/-- The actual centered row budget retains its half factor and both logarithmic moments. -/
theorem centered_cubic_row_abs_le_of_bound (A k : ℝ) {f : ℝ → ℝ}
    (hbound : ∀ u : ℝ, 1 < u → |f u| ≤ cubicUpperMajorant A k u) :
    |∫ u in Ioi (1 : ℝ), centeredSawtooth u * f u| ≤
      160 * 67 / (A ^ 4 * Real.sqrt k) := by
  have hn := norm_integral_le_of_norm_le
    (f := fun u => centeredSawtooth u * f u)
    ((cubicUpperMajorant_integrable A k).div_const 2) (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      rw [Real.norm_eq_abs, abs_mul]
      calc
        _ ≤ (1 / 2 : ℝ) * cubicUpperMajorant A k u :=
          mul_le_mul (centeredSawtooth_abs_le_half u) (hbound u hu)
            (abs_nonneg _) (by norm_num)
        _ = _ := by ring)
  rw [Real.norm_eq_abs, integral_div, cubicUpperMajorant_integral] at hn
  convert hn using 1
  ring

/-- The full original short cutoff sum costs A cubed, without deleting any d in 1..U. -/
theorem full_short_divisor_row_sum_abs_le (A : ℝ) (hA : 1 ≤ A) (row : ℕ → ℝ)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |row d| ≤ 160 * 67 / (A ^ 4 * Real.sqrt (d : ℝ))) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * row d| ≤
      320 * 67 / A ^ 3 := by
  have hc : 0 ≤ 160 * 67 / A ^ 4 := by positivity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d * row d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (160 * 67 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      apply (mul_le_mul_of_nonneg_left (hrow d hd) (abs_nonneg _)).trans
      apply le_of_eq
      ring
    _ = (160 * 67 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (160 * 67 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A hA) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring

end
end FormalResearch.RiemannHypothesis.SourceCubicUpperLogMoments
```
