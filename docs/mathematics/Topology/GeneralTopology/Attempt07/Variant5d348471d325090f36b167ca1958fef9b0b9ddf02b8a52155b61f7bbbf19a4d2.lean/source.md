# Complete source: GRWTSK.Topology.GeneralTopology.Attempt07.Variant5d348471d325090f36b167ca1958fef9b0b9ddf02b8a52155b61f7bbbf19a4d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c75302c6e943ff6ba06cd7ac354cfd49c921370` · SHA-256 `5bec044bdee9ee23fb0cddb4fa40e7de125dbab0a37626d1bd49b4e7d36df30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualXiEarlyReturnedWork.Variant188f06c572a08c714380d33a8ed5f32cbc1adb52f56041f59a6f4e4b8ef19473","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"188f06c572a08c714380d33a8ed5f32cbc1adb52f56041f59a6f4e4b8ef19473","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualXiEarlyReturnedWork.Variant188f06c572a08c714380d33a8ed5f32cbc1adb52f56041f59a6f4e4b8ef19473","mathematical_subject":"Topology.GeneralTopology","original_sha256":"188f06c572a08c714380d33a8ed5f32cbc1adb52f56041f59a6f4e4b8ef19473","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-early-returned-work/attempt07.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiDampedTailReturn
import SourceLeadingFullKappaReduction

/-!
The actual fixed-damped primitive controls a genuine early part of the original
returned Xi tail. The source third jet and the quarter first jet are both kept.
This leaves the actual later signed work as the unresolved arithmetic sector.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualXiEarlyReturnedWork.Variant188f06c572a08c714380d33a8ed5f32cbc1adb52f56041f59a6f4e4b8ef19473

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork

open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualXiDampedFiniteBound SourceActualXiDampedTailReturn
open SourceLeadingFullKappaReduction SourceSamplingCoefficients SourcePairing
open RH16CompleteXiTail RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

/-- The literal early returned work, with the closed logarithmic split. -/
def actualXiEarlyReturnedWork (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * Real.log A,
    actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t

/-- The remaining actual signed work, without changing its source or kernel. -/
def actualXiLateReturnedWork (A : ℝ) : ℝ :=
  ∫ t in 2 * Real.log A..2 * A,
    actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t

/-- The early budget retains both genuine odd jets and the quarter coefficient. -/
def actualXiEarlyReturnedBudget (A : ℝ) : ℝ :=
  4 * actualDampedXiFiniteBudget * Real.log A * (67 / A ^ 3 + 5 / A)

/-- The split lies inside the actual original time interval at every real A>=91. -/
theorem actualXiEarlyReturned_split_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ 2 * Real.log A ∧ 2 * Real.log A ≤ 2 * A := by
  have hp : 0 < A := by linarith
  have hl : Real.log 7 ≤ Real.log A :=
    Real.log_le_log (by norm_num) (by linarith)
  have hn : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  constructor
  · linarith
  · linarith [Real.log_le_sub_one_of_pos hp]

/-- Genuine source continuity and finite L1 precede either partial integral. -/
theorem actualXiReturnedWork_intervalIntegrable {A b : ℝ} (hA : 91 ≤ A)
    (hb : Real.log 7 ≤ b) :
    IntervalIntegrable (fun t =>
      actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t)
      volume (Real.log 7) b := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_contDiff_four A hp
  have hfirst : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.continuous_iteratedDeriv 1 (by norm_num)
  have hi : IntervalIntegrable actualDampedXiFinitePrimitive volume (Real.log 7) b :=
    (actualDampedXiFinitePrimitive_absolutelyContinuous hb).continuousOn.intervalIntegrable
  apply hi.mul_continuousOn
  unfold actualDampedXiReturnDensity
  exact ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub
      (hfirst.div_const 4))).continuousOn

/-- Both actual odd zero traces control the source returned density near the origin. -/
theorem actualXiReturnDensity_origin_abs_le {A t : ℝ} (hA : 91 ≤ A) :
    |actualDampedXiReturnDensity A t| ≤
      Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * |t| := by
  have h3 := actualCorrelation_third_abs_le hA t
  have h1 := actualCorrelation_first_abs_le hA t
  unfold actualDampedXiReturnDensity
  simp only [iteratedDeriv_succ, iteratedDeriv_zero]
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  have hs := abs_sub
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hs
  have hh : |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t / 4| ≤
      (67 / A ^ 4 + 5 / A ^ 2) * |t| := by
    have hh1 : |deriv (sourceCorrelation explicitSecondDerivative A) t| / 4 ≤
        5 / A ^ 2 * |t| := by
      calc
        _ ≤ (20 / A ^ 2 * |t|) / 4 := div_le_div_of_nonneg_right h1 (by norm_num)
        _ = _ := by ring
    calc
      _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
          |deriv (sourceCorrelation explicitSecondDerivative A) t| / 4 := hs
      _ ≤ 67 / A ^ 4 * |t| + 5 / A ^ 2 * |t| := add_le_add h3 hh1
      _ = _ := by ring
  calc
    _ ≤ Real.exp (t / 2) * ((67 / A ^ 4 + 5 / A ^ 2) * |t|) :=
      mul_le_mul_of_nonneg_left hh (Real.exp_pos _).le
    _ = _ := by ring

private theorem integral_half_exp (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (a / 2)) := by
  have hd : ∀ t : ℝ, HasDerivAt (fun v : ℝ => 2 * Real.exp (v / 2))
      (Real.exp (t / 2)) t := by
    intro t
    convert (((hasDerivAt_id t).div_const (2 : ℝ)).exp).const_mul 2 using 1 <;>
      first | rfl | simp only [id_eq] | ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable a b)
  rw [he]
  ring

/-- The literal early work is small despite the retained exponential return. -/
theorem actualXiEarlyReturnedWork_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualXiEarlyReturnedWork A| ≤ actualXiEarlyReturnedBudget A := by
  have hp : 0 < A := by linarith
  have hord := actualXiEarlyReturned_split_orders hA
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hbudget : 0 ≤ actualDampedXiFiniteBudget := by
    unfold actualDampedXiFiniteBudget
      RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
    positivity
  let c : ℝ := actualDampedXiFiniteBudget *
    (67 / A ^ 4 + 5 / A ^ 2) * (2 * Real.log A)
  have hc : 0 ≤ c := by
    unfold c actualDampedXiFiniteBudget
      RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
    positivity
  have hi := actualXiReturnedWork_intervalIntegrable hA hord.1
  have hie : IntervalIntegrable (fun t : ℝ => c * Real.exp (t / 2)) volume
      (Real.log 7) (2 * Real.log A) :=
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _).const_mul c
  have hmono : (∫ t in Real.log 7..2 * Real.log A,
      |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t|) ≤
      ∫ t in Real.log 7..2 * Real.log A, c * Real.exp (t / 2) := by
    apply intervalIntegral.integral_mono_on hord.1 hi.abs hie
    intro t ht
    have ht0 : 0 ≤ t := ha.trans ht.1
    have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht.1
    have hD := actualXiReturnDensity_origin_abs_le (t := t) hA
    rw [abs_of_nonneg ht0] at hD
    rw [abs_mul]
    calc
      _ ≤ actualDampedXiFiniteBudget *
          (Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * t) :=
        mul_le_mul hJ hD (abs_nonneg _) (by
          unfold actualDampedXiFiniteBudget
            RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
          positivity)
      _ ≤ actualDampedXiFiniteBudget *
          (Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * (2 * Real.log A)) := by
        simpa only [mul_assoc] using mul_le_mul_of_nonneg_left ht.2
          (show 0 ≤ actualDampedXiFiniteBudget *
            (Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2)) by positivity)
      _ = c * Real.exp (t / 2) := by dsimp only [c]; ring
  have hex : Real.exp ((2 * Real.log A) / 2) = A := by
    rw [show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp]
  calc
    |actualXiEarlyReturnedWork A| ≤ ∫ t in Real.log 7..2 * Real.log A,
        |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t| :=
      intervalIntegral.abs_integral_le_integral_abs hord.1
    _ ≤ _ := hmono
    _ = c * (2 * (A - Real.exp (Real.log 7 / 2))) := by
      rw [intervalIntegral.integral_const_mul, integral_half_exp, hex]
    _ ≤ c * (2 * A) := mul_le_mul_of_nonneg_left (by
      linarith [Real.exp_pos (Real.log 7 / 2)]) hc
    _ = actualXiEarlyReturnedBudget A := by
      unfold c actualXiEarlyReturnedBudget
      field_simp
      ring

/-- This is a genuine full-tail partition, retaining the signed later integral. -/
theorem completeXiTail_eq_early_add_late {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = actualXiEarlyReturnedWork A + actualXiLateReturnedWork A := by
  have hord := actualXiEarlyReturned_split_orders hA
  have hi := actualXiReturnedWork_intervalIntegrable hA (hord.1.trans hord.2)
  have hi1 := actualXiReturnedWork_intervalIntegrable hA hord.1
  have hi2 := hi1.symm.trans hi
  rw [completeXiTail_eq_damped_primitive_return hA]
  unfold actualXiEarlyReturnedWork actualXiLateReturnedWork
  exact (intervalIntegral.integral_add_adjacent_intervals hi1 hi2).symm

/-- The checked early budget vanishes on the original real scale domain. -/
theorem actualXiEarlyReturnedBudget_tendsto_zero :
    Tendsto actualXiEarlyReturnedBudget atTop (𝓝 (0 : ℝ)) := by
  have hlog : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have hu : Tendsto (fun A : ℝ =>
      288 * actualDampedXiFiniteBudget * (Real.log A / A)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [mul_zero] using hlog.const_mul (288 * actualDampedXiFiniteBudget)
  apply squeeze_zero' _ _ hu
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    unfold actualXiEarlyReturnedBudget actualDampedXiFiniteBudget
      RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
    have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
    have hp : 0 < A := by linarith
    positivity
  · filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    have hp : 0 < A := by linarith
    have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
    have hb : 0 ≤ actualDampedXiFiniteBudget := by
      unfold actualDampedXiFiniteBudget
        RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant
      positivity
    have hsq : 1 ≤ A ^ 2 := by nlinarith
    have hpow : A ≤ A ^ 3 := by
      calc
        A = A * 1 := by ring
        _ ≤ A * A ^ 2 := mul_le_mul_of_nonneg_left hsq hp.le
        _ = A ^ 3 := by ring
    have hq : 67 / A ^ 3 ≤ 67 / A :=
      div_le_div_of_nonneg_left (by norm_num) hp hpow
    unfold actualXiEarlyReturnedBudget
    calc
      _ ≤ 4 * actualDampedXiFiniteBudget * Real.log A * (67 / A + 5 / A) :=
        mul_le_mul_of_nonneg_left (add_le_add hq le_rfl) (by positivity)
      _ = _ := by ring

/-- Actual early returned work, rather than a surrogate budget, tends to zero. -/
theorem actualXiEarlyReturnedWork_tendsto_zero :
    Tendsto actualXiEarlyReturnedWork atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    actualXiEarlyReturnedBudget_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact actualXiEarlyReturnedWork_abs_le hA

/-- The original tail differs from its concrete later signed work by a vanishing term. -/
theorem completeXiTail_sub_late_tendsto_zero :
    Tendsto (fun A : ℝ => completeXiTail A - actualXiLateReturnedWork A)
      atTop (𝓝 (0 : ℝ)) := by
  apply actualXiEarlyReturnedWork_tendsto_zero.congr'
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  rw [completeXiTail_eq_early_add_late hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork
```
