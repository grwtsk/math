# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCesaroPrimitiveConsumer.Variantbba63fd5ff047d390fb2b42dd9248f027c68a56f8af1e487e26ddaa214fb5a8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4a51f5566dcb28ef527e5cc3422303d23ebf555` · SHA-256 `74025fc8caf25c62d3fc2d78d3277764230c538a2e28b81ce10dc2c10b594b72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CenteredCriticalPrimitive.Variant03f3713ac7ec75d8aee0aa77c1339b44603e5278a7587bd62c39d32eb48bda72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03f3713ac7ec75d8aee0aa77c1339b44603e5278a7587bd62c39d32eb48bda72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CenteredCriticalPrimitive.Variant03f3713ac7ec75d8aee0aa77c1339b44603e5278a7587bd62c39d32eb48bda72","mathematical_subject":"Analysis.Integration","original_sha256":"03f3713ac7ec75d8aee0aa77c1339b44603e5278a7587bd62c39d32eb48bda72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-cesaro-replay/SourceCesaroPrimitiveConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCesaroKernelBudget
import ActualCriticalPrimitive
import SourceFirstAtomDirectConsumer

/-!
Independent actual Mangoldt primitives for the source Cesaro route.
The signed global primitive budget remains an explicit arithmetic obligation.
Direction: grwtsk contributors. AI formal construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CenteredCriticalPrimitive.Variant03f3713ac7ec75d8aee0aa77c1339b44603e5278a7587bd62c39d32eb48bda72

set_option autoImplicit false
noncomputable section

namespace RH16CesaroPrimitive

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive
open RH16CesaroKernel RH16IndependentChallengeNext
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Actual exponential Mangoldt primitive centered at the literal first-atom threshold. -/
def centeredCriticalPrimitive (t : ℝ) : ℝ :=
  criticalPrimitive t - criticalPrimitive (Real.log 2)

/-- The actual second primitive retains its lower threshold and all closed prime powers. -/
def actualCesaroPrimitive (t : ℝ) : ℝ :=
  ∫ s in Real.log 2..t, centeredCriticalPrimitive s

theorem centeredCriticalPrimitive_at_first_atom :
    centeredCriticalPrimitive (Real.log 2) = 0 := by
  simp [centeredCriticalPrimitive]

theorem actualCesaroPrimitive_at_first_atom : actualCesaroPrimitive (Real.log 2) = 0 := by
  simp [actualCesaroPrimitive]

private theorem first_atom_interval_subset (A : ℝ) (hA : 1 ≤ A) :
    uIcc (Real.log 2) (2 * A) ⊆ uIcc 0 (2 * A) := by
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [uIcc_of_le (by linarith : Real.log (2 : ℝ) ≤ 2 * A),
    uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)]
  exact Icc_subset_Icc hl0 le_rfl

theorem centeredCriticalPrimitive_absolutelyContinuous (A : ℝ) (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval centeredCriticalPrimitive (Real.log 2) (2 * A) := by
  have hf := (criticalPrimitive_absolutelyContinuous (2 * A) (by linarith)).mono
    (first_atom_interval_subset A hA)
  have hc : AbsolutelyContinuousOnInterval (fun _ : ℝ => criticalPrimitive (Real.log 2))
      (Real.log 2) (2 * A) :=
    (show ContDiff ℝ 1 (fun _ : ℝ => criticalPrimitive (Real.log 2))
      from contDiff_const).contDiffOn.absolutelyContinuousOnInterval
  exact hf.sub hc

theorem actualCesaroPrimitive_absolutelyContinuous (A : ℝ) (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval actualCesaroPrimitive (Real.log 2) (2 * A) := by
  have hi : IntervalIntegrable centeredCriticalPrimitive volume (Real.log 2) (2 * A) :=
    (centeredCriticalPrimitive_absolutelyContinuous A hA).continuousOn.intervalIntegrable
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

theorem actual_centered_second_primitive_parts (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t) =
      ∫ t in Real.log 2..2 * A,
        actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hp : 0 < A := by linarith
  have hF := centeredCriticalPrimitive_absolutelyContinuous A hA
  have hG := actualCesaroPrimitive_absolutelyContinuous A hA
  have hk1 : ContDiff ℝ 1 (cesaroWeight A) := by
    exact criticalKernel_contDiff A hp
  have hk2 : ContDiff ℝ 1 (deriv (cesaroWeight A)) := by
    apply contDiff_one_iff_deriv.mpr
    constructor
    · intro t
      have he : deriv (cesaroWeight A) = fun u =>
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
            deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
        funext fun u => (cesaroWeight_hasDerivAt A u hp).deriv
      rw [he]
      exact ((actual_correlation_third_derivative A hp t).add
        (((sourceCorrelation_deriv_contDiff hp).differentiable
          (by norm_num) t).hasDerivAt.div_const 2)).differentiableAt
    · exact cesaroWeight_second_deriv_continuous A hp
  have hup : cesaroWeight A (2 * A) = 0 := by
    have ht := actual_correlation_three_upper_traces A hp
    simp only [cesaroWeight, ht.1, sourceCorrelation_upper_endpoint A hp, zero_div, add_zero]
  have hup1 : deriv (cesaroWeight A) (2 * A) = 0 := by
    rw [(cesaroWeight_hasDerivAt A (2 * A) hp).deriv]
    have ht := actual_correlation_three_upper_traces A hp
    simp only [ht.1, ht.2.1, zero_div, add_zero]
  have hparts1 := hF.integral_mul_deriv_eq_deriv_mul
    hk1.contDiffOn.absolutelyContinuousOnInterval
  rw [centeredCriticalPrimitive_at_first_atom, hup] at hparts1
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts1
  have hderF : (∫ t in Real.log 2..2 * A,
      deriv centeredCriticalPrimitive t * cesaroWeight A t) =
      ∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt (2 * A) (by linarith)] with t ht hm
    have hd := (ht (first_atom_interval_subset A hA (uIoc_subset_uIcc hm))).sub_const
      (criticalPrimitive (Real.log 2))
    rw [show deriv centeredCriticalPrimitive t = primitiveDensity t from hd.deriv]
  rw [hderF] at hparts1
  have hparts2 := hG.integral_mul_deriv_eq_deriv_mul
    hk2.contDiffOn.absolutelyContinuousOnInterval
  rw [actualCesaroPrimitive_at_first_atom, hup1] at hparts2
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts2
  have hderG : (∫ t in Real.log 2..2 * A,
      deriv actualCesaroPrimitive t * deriv (cesaroWeight A) t) =
      ∫ t in Real.log 2..2 * A,
        centeredCriticalPrimitive t * deriv (cesaroWeight A) t := by
    have hi : IntervalIntegrable centeredCriticalPrimitive volume (Real.log 2) (2 * A) :=
      hF.continuousOn.intervalIntegrable
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
    rw [show deriv actualCesaroPrimitive t = centeredCriticalPrimitive t from
      (ht (uIoc_subset_uIcc hm) (Real.log 2) (by simp)).deriv]
  rw [hderG] at hparts2
  linarith

/-- Exact original remaining work, retaining its nonzero gamma boundary at the first atom. -/
theorem remainingAtomWork_eq_cesaro_integral (A : ℝ) (hA : 1 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        ∫ t in Real.log 2..2 * A,
          actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hp : 0 < A := by linarith
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A hp
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    hlA (criticalPrimeTest A) hf
  have hg : IntervalIntegrable (fun t => Real.eulerMascheroniConstant *
      deriv (criticalPrimeTest A) t) volume (Real.log 2) (2 * A) :=
    (hf.continuous_deriv_one.intervalIntegrable (Real.log 2) (2 * A)).const_mul _
  have hder : (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) =
      -criticalPrimeTest A (Real.log 2) := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp, zero_sub]
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : (∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t) =
      remainingAtomWork A + Real.eulerMascheroniConstant *
        (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) := by
    have heq (t : ℝ) : primitiveDensity t * cesaroWeight A t =
        mangoldtLogError t * deriv (criticalPrimeTest A) t +
          Real.eulerMascheroniConstant * deriv (criticalPrimeTest A) t := by
      rw [criticalPrimeTest_deriv A t hp]
      unfold primitiveDensity cesaroWeight
      ring
    simp_rw [heq]
    rw [intervalIntegral.integral_add hi hg, intervalIntegral.integral_const_mul]
    rfl
  rw [hder] at he
  have hparts := actual_centered_second_primitive_parts A hA
  linarith

theorem criticalPrimeTest_at_first_atom_nonneg (A : ℝ) (hA : 91 ≤ A) :
    0 ≤ criticalPrimeTest A (Real.log 2) := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := sourceCorrelation_sub_one_abs_le (by linarith : 1 ≤ A) (Real.log 2)
  rw [abs_of_nonneg hl0] at hc
  have hb : 5 * Real.log 2 / A ≤ 1 := (div_le_iff₀ hp).mpr (by linarith)
  have hcn : 0 ≤ sourceCorrelation explicitSecondDerivative A (Real.log 2) := by
    linarith [(abs_le.mp hc).1]
  exact mul_nonneg (Real.exp_pos _).le hcn

/-- The global signed Cesaro primitive premise supplies the actual remaining-work witness. -/
theorem remainingAtomWork_lower_of_cesaro (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    -((2061 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hgc := (actualCesaroPrimitive_absolutelyContinuous A hA1).continuousOn
  have hi : IntervalIntegrable (fun t => actualCesaroPrimitive t *
      deriv (deriv (cesaroWeight A)) t) volume (Real.log 2) (2 * A) :=
    (hgc.mul hc.continuousOn).intervalIntegrable
  have hmain : |∫ t in Real.log 2..2 * A,
      actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
        M * (∫ t in Real.log 2..2 * A,
          (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
    calc
      _ ≤ ∫ t in Real.log 2..2 * A,
          |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| :=
        intervalIntegral.abs_integral_le_integral_abs hlA
      _ ≤ ∫ t in Real.log 2..2 * A,
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
        apply intervalIntegral.integral_mono_on hlA hi.abs
          ((continuous_const.mul
            ((continuous_id.sub continuous_const).mul hc.abs)).intervalIntegrable
            _ _)
        intro t ht
        change |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|)
        rw [abs_mul, ← mul_assoc]
        exact mul_le_mul_of_nonneg_right (hG t ht.1) (abs_nonneg _)
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hb := mul_le_mul_of_nonneg_left
    (cesaroWeight_weighted_second_budget_sharp_uniform A hA) hM
  have hgamma : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hhead := mul_nonneg hgamma (criticalPrimeTest_at_first_atom_nonneg A hA)
  rw [remainingAtomWork_eq_cesaro_integral A hA1]
  have hbound := hmain.trans hb
  linarith [(abs_le.mp hbound).1]

/-- Conditional return to the exact original all-real theorem at the checked analytic radius. -/
theorem estimate_of_actual_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail ((2061 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_cesaro M A hM hA hG

/-- The complete lower constant preserves the finite prefix and actual baseline correction. -/
theorem all_real_source_lower_of_actual_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 *
          ((2061 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail ((2061 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_cesaro M A hM hA hG

/-- This constructs the original estimate only from an explicitly supplied arithmetic witness. -/
theorem estimate_of_actual_cesaro_global_exists
    (h : ∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  rcases h with ⟨M, hM, hG⟩
  exact ⟨min (originalPrefixLower 91)
      (archimedeanMultiplier 0 - 2 *
        ((2061 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)),
    all_real_source_lower_of_actual_cesaro_global M hM hG⟩

end RH16CesaroPrimitive
```
