# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualXiDampedTailReturn.Variantdf063f56a04efab753193e73cd322562eeea5defca45000ee3e6fcbe301d8d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ce60da34b65a08435e9fb844a741f5530bdb3b2` · SHA-256 `9d1b518473c3fd7498687059951777db625898ebe0e86c85b28f8aac9566aae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualDampedXiReturnTest.Variantd1f0d5027d491c962149efa5a323ea444d32f012f60f06ca4fcc0b1242e9b19c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1f0d5027d491c962149efa5a323ea444d32f012f60f06ca4fcc0b1242e9b19c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualDampedXiReturnTest.Variantd1f0d5027d491c962149efa5a323ea444d32f012f60f06ca4fcc0b1242e9b19c","mathematical_subject":"Analysis.Calculus","original_sha256":"d1f0d5027d491c962149efa5a323ea444d32f012f60f06ca4fcc0b1242e9b19c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-xi-damped-tail-return/native02/SourceActualXiDampedTailReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiDampedFiniteBound
import RootActualXiTailPrimitiveAbel
import ActualSupportEdgeMangoldtRow

/-!
The literal actual signed fixed-damping primitive returns to the unchanged Xi
source tail by finite AC Abel. Both traces and genuine L1 precede evaluation.
The actual support-edge jets give a growing unsigned 536 budget, not an
undamped mean witness or an assertion of growth of the actual signed tail.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualDampedXiReturnTest.Variantd1f0d5027d491c962149efa5a323ea444d32f012f60f06ca4fcc0b1242e9b19c

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiDampedTailReturn
open MeasureTheory Set
open scoped Interval
open SourceActualXiDampedFiniteBound RootActualXiTailPrimitive RootActualXiTailPrimitiveAbel
open ActualSupportEdgeMangoldtRow SourceSamplingCoefficients SourcePairing
open RH16CompleteXiTail RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The independently literal test left by undoing the fixed half damping. -/
def actualDampedXiReturnTest (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
    deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- Its actual signed third-minus-quarter-first density, with the full exponential weight. -/
def actualDampedXiReturnDensity (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t -
    deriv (sourceCorrelation explicitSecondDerivative A) t / 4)

/-- Genuine finite source L1 gives the signed damped primitive finite AC. -/
theorem actualDampedXiFinitePrimitive_absolutelyContinuous {b : ℝ} (hb : Real.log 7 ≤ b) :
    AbsolutelyContinuousOnInterval actualDampedXiFinitePrimitive (Real.log 7) b :=
  (actualDampedXiFinitePrimitive_intervalIntegrable hb).absolutelyContinuousOnInterval_intervalIntegral (by simp)

/-- The actual cumulative AE derivative retains its source and exact fixed damping. -/
theorem actualDampedXiFinitePrimitive_ae_hasDerivAt {b : ℝ} (hb : Real.log 7 ≤ b) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) b → HasDerivAt actualDampedXiFinitePrimitive
      (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2)) t := by
  filter_upwards [(actualDampedXiFinitePrimitive_intervalIntegrable hb).ae_hasDerivAt_integral] with t ht hm
  exact ht hm (Real.log 7) (by simp)

/-- The actual lower primitive trace is retained and is exactly its empty integral. -/
theorem actualDampedXiFinitePrimitive_at_lower :
    actualDampedXiFinitePrimitive (Real.log 7) = 0 := by
  simp [actualDampedXiFinitePrimitive]

/-- Differentiation keeps the exponential cross term and its quarter coefficient. -/
theorem actualDampedXiReturnTest_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (actualDampedXiReturnTest A) (actualDampedXiReturnDensity A t) t := by
  have hc := actual_correlation_contDiff_four A hA
  have h2 : HasDerivAt (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ] using
      ((hc.differentiable_iteratedDeriv 2 (by norm_num)) t).hasDerivAt
  have h1 : HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      ((hc.differentiable_iteratedDeriv 1 (by norm_num)) t).hasDerivAt
  have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp)
  convert he.mul (h2.sub (h1.div_const 2)) using 1 <;> try rfl
  simp only [id_eq, Pi.sub_apply]
  unfold actualDampedXiReturnDensity
  ring

private theorem first_jet_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
    (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1 (by norm_num)

private theorem returnTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualDampedXiReturnTest A) := by
  have hc := actual_correlation_contDiff_four A hA
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun t => (actualDampedXiReturnTest_hasDerivAt A t hA).differentiableAt, ?_⟩
  have he : deriv (actualDampedXiReturnTest A) = actualDampedXiReturnDensity A :=
    funext (fun t => (actualDampedXiReturnTest_hasDerivAt A t hA).deriv)
  rw [he]
  unfold actualDampedXiReturnDensity
  exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub
      ((first_jet_continuous hA).div_const 4))

/-- Only the true closed support endpoint kills this upper test. -/
theorem actualDampedXiReturnTest_at_upper {A : ℝ} (hA : 91 ≤ A) :
    actualDampedXiReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h1 := actual_correlation_first_edge_abs_le (z := 2 * A) hA le_rfl
  simp only [sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0), mul_zero, zero_div] at h2
  simp only [sub_self, zero_pow (by norm_num : (3 : ℕ) ≠ 0), mul_zero, zero_div,
    iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have hz2 := abs_nonpos_iff.mp h2
  have hz1 := abs_nonpos_iff.mp h1
  simp [actualDampedXiReturnTest, hz2, hz1]

/-- The full original tail returns through genuine AC Abel with both real traces evaluated. -/
theorem completeXiTail_eq_damped_primitive_return {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = ∫ t in Real.log 7..2 * A,
      actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hp : 0 < A := by linarith
  have hJ := actualDampedXiFinitePrimitive_absolutelyContinuous hlb
  have hH := (returnTest_contDiff hp).contDiffOn.absolutelyContinuousOnInterval
    (a := Real.log 7) (b := 2 * A)
  have hi1 : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t *
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) volume
        (Real.log 7) (2 * A) := by
    have hc := actual_correlation_contDiff_four A hp
    have hi := (actualAnchoredXiTailPrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
    exact hi.mul_continuousOn
      (((hc.continuous_iteratedDeriv 2 (by norm_num)).sub
        ((first_jet_continuous hp).div_const 2)).continuousOn)
  have hi2 : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
    have hi := hH.intervalIntegrable_deriv.continuousOn_mul hJ.continuousOn
    have he : deriv (actualDampedXiReturnTest A) = actualDampedXiReturnDensity A :=
      funext (fun t => (actualDampedXiReturnTest_hasDerivAt A t hp).deriv)
    rwa [he] at hi
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualDampedXiFinitePrimitive t * actualDampedXiReturnTest A t +
        actualDampedXiFinitePrimitive t * deriv (actualDampedXiReturnTest A) t) =
      (∫ t in Real.log 7..2 * A, actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) +
      ∫ t in Real.log 7..2 * A, actualDampedXiFinitePrimitive t *
        actualDampedXiReturnDensity A t := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualDampedXiFinitePrimitive_ae_hasDerivAt hlb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv,
      (actualDampedXiReturnTest_hasDerivAt A t hp).deriv]
    unfold actualDampedXiReturnTest
    have hex : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
      rw [← Real.exp_add, show -t / 2 + t / 2 = 0 by ring, Real.exp_zero]
    calc
      _ = actualAnchoredXiTailPrimitive t * (Real.exp (-t / 2) * Real.exp (t / 2)) *
          (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2) +
          actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t := by ring
      _ = _ := by rw [hex]; ring
  have hh := hJ.integral_deriv_mul_eq_sub hH
  rw [he, actualDampedXiReturnTest_at_upper hA, actualDampedXiFinitePrimitive_at_lower,
    mul_zero, zero_mul, sub_self] at hh
  rw [completeXiTail_eq_anchored_primitive hA]
  linarith

/-- The genuine actual third/first support-edge jets bound the returned density. -/
theorem actualDampedXiReturnDensity_edge_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht : t ≤ 2 * A) :
    |actualDampedXiReturnDensity A t| ≤
      67 / A ^ 4 * Real.exp (t / 2) *
        ((2 * A - t) + (2 * A - t) ^ 3 / 24) := by
  have h3 := actual_correlation_third_edge_abs_le hA ht
  have h1 := actual_correlation_first_edge_abs_le hA ht
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have he := Real.exp_pos (t / 2)
  unfold actualDampedXiReturnDensity
  rw [abs_mul, abs_of_pos he]
  have hs := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hs
  have hx : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t / 4| ≤
      67 / A ^ 4 * ((2 * A - t) + (2 * A - t) ^ 3 / 24) := by
    linarith
  calc
    _ ≤ Real.exp (t / 2) * (67 / A ^ 4 *
        ((2 * A - t) + (2 * A - t) ^ 3 / 24)) :=
      mul_le_mul_of_nonneg_left hx he.le
    _ = _ := by ring

private theorem exponential_truncated_moment_le (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (L - t) ^ j * Real.exp (t / 2)) ≤
      Real.exp (L / 2) * ((2 : ℝ) ^ (j + 1) * (j.factorial : ℝ)) := by
  have hi := exponential_half_integrable j
  have hn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)), 0 ≤ t ^ j * Real.exp (-t / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact mul_nonneg (pow_nonneg ht.le j) (Real.exp_pos _).le
  have hm := setIntegral_mono_set (s := Ioc (0 : ℝ) L) (t := Ioi (0 : ℝ)) hi hn
    (Filter.Eventually.of_forall (fun _ ht => ht.1))
  rw [← intervalIntegral.integral_of_le hL, exponential_half_integral] at hm
  have hs := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => t ^ j * Real.exp (-t / 2)) (a := (0 : ℝ)) (b := L) L
  simp only [sub_self, sub_zero] at hs
  calc
    _ = Real.exp (L / 2) * (∫ t in 0..L, (L - t) ^ j * Real.exp (-(L - t) / 2)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      rw [show Real.exp (t / 2) = Real.exp (L / 2) * Real.exp (-(L - t) / 2) by
        rw [← Real.exp_add]; congr 1; ring]
      ring
    _ = Real.exp (L / 2) * (∫ t in 0..L, t ^ j * Real.exp (-t / 2)) := by rw [hs]
    _ ≤ _ := mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le

/-- The full returned norm receives an unconditional growing method budget only. -/
theorem completeXiTail_abs_le_damped_edge_budget {A : ℝ} (hA : 91 ≤ A) :
    |completeXiTail A| ≤ 536 * actualDampedXiFiniteBudget * Real.exp A / A ^ 4 := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  let W : ℝ → ℝ := fun t => Real.exp (t / 2) *
    ((2 * A - t) + (2 * A - t) ^ 3 / 24)
  let B : ℝ := 67 / A ^ 4 * actualDampedXiFiniteBudget
  have hB : 0 ≤ B := by unfold B actualDampedXiFiniteBudget RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant; positivity
  have hW : Continuous W := by unfold W; fun_prop
  have hiW : IntervalIntegrable W volume 0 (2 * A) := hW.intervalIntegrable _ _
  have hiG : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
    have hc := actual_correlation_contDiff_four A hp
    apply (actualDampedXiFinitePrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable.mul_continuousOn
    unfold actualDampedXiReturnDensity
    exact ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub
        ((first_jet_continuous hp).div_const 4))).continuousOn
  have hiBW : IntervalIntegrable (fun t => B * W t) volume (Real.log 7) (2 * A) :=
    (hW.intervalIntegrable _ _).const_mul B
  have hm : (∫ t in Real.log 7..2 * A,
      |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t|) ≤
      ∫ t in Real.log 7..2 * A, B * W t := by
    apply intervalIntegral.integral_mono_on hlb hiG.abs hiBW
    intro t ht
    have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht.1
    have hD := actualDampedXiReturnDensity_edge_abs_le hA ht.2
    rw [abs_mul]
    have hh := mul_le_mul hJ hD (abs_nonneg _) (by
      unfold actualDampedXiFiniteBudget RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant; positivity)
    convert hh using 1 <;> try { dsimp only [B, W] } <;> ring
  have hs : (∫ t in Real.log 7..2 * A, W t) ≤ ∫ t in 0..2 * A, W t := by
    apply intervalIntegral.integral_mono_interval ha hlb le_rfl _ hiW
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    unfold W
    have hu : 0 ≤ 2 * A - t := sub_nonneg.mpr ht.2
    exact mul_nonneg (Real.exp_pos _).le (by positivity)
  have he : (∫ t in 0..2 * A, W t) ≤ 8 * Real.exp A := by
    have h1 := exponential_truncated_moment_le 1 (show 0 ≤ 2 * A by positivity)
    have h3 := exponential_truncated_moment_le 3 (show 0 ≤ 2 * A by positivity)
    have hi1 := (by fun_prop : Continuous (fun t : ℝ => (2 * A - t) * Real.exp (t / 2))).intervalIntegrable 0 (2 * A)
    have hi3 := (by fun_prop : Continuous (fun t : ℝ => (2 * A - t) ^ 3 * Real.exp (t / 2))).intervalIntegrable 0 (2 * A)
    have hw : W = (fun t => (2 * A - t) * Real.exp (t / 2)) +
        (fun t => (2 * A - t) ^ 3 * Real.exp (t / 2) / 24) := by
      funext t; dsimp only [W, Pi.add_apply]; ring
    rw [hw, intervalIntegral.integral_add hi1 (hi3.div_const 24),
      intervalIntegral.integral_div_const]
    norm_num only [pow_one, Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat,
      show 2 * A / 2 = A by ring] at h1 h3
    linarith
  rw [completeXiTail_eq_damped_primitive_return hA]
  calc
    _ ≤ ∫ t in Real.log 7..2 * A,
        |actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t| :=
      intervalIntegral.abs_integral_le_integral_abs hlb
    _ ≤ B * ∫ t in Real.log 7..2 * A, W t := by
      simpa only [intervalIntegral.integral_const_mul] using hm
    _ ≤ B * (8 * Real.exp A) := mul_le_mul_of_nonneg_left (hs.trans he) hB
    _ = _ := by unfold B; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiDampedTailReturn
```
