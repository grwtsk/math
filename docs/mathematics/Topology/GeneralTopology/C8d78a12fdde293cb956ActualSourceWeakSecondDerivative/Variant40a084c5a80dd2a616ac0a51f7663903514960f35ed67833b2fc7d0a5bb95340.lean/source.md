# Complete source: GRWTSK.Topology.GeneralTopology.C8d78a12fdde293cb956ActualSourceWeakSecondDerivative.Variant40a084c5a80dd2a616ac0a51f7663903514960f35ed67833b2fc7d0a5bb95340

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afe278b119066d3a3d33c4f93f3829a0f62ffa6d` · SHA-256 `36b479be3d723966f3151f0391e2ede1703101da2d6ef19a08aeff2598feaa1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormalizedInteriorSecondContinuous.Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormalizedInteriorSecondContinuous.Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/c8d78a12fdde293cb956-ActualSourceWeakSecondDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSecondEnergyCalibration

/-!
Actual weak second derivative of the unchanged normalized compact source.
Two finite polynomial integrations by parts retain both zero traces of q and
qprime. The nonzero interior qsecond traces are kept in its zero extension.
This supplies the distributional bridge required before a C4 correlation
argument; no arithmetic witness or C4 assertion is introduced here.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Topology.GeneralTopology.NormalizedInteriorSecondContinuous.Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set
open scoped ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

theorem normalizedInteriorSecond_continuous (A : ℝ) :
    Continuous (normalizedInteriorSecond A) := by
  unfold normalizedInteriorSecond fourthInterior unitFourth secondInterior
  fun_prop

/-- The actual weak profile includes the two closed endpoints with their interior values. -/
theorem actualSecondProfile_eq_indicator (A : ℝ) (hA : 0 < A) :
    actualSecondProfile A = (Icc (-A) A).indicator (normalizedInteriorSecond A) := by
  funext x
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, actualSecondProfile_eq_interior A x hA hx]
  · rw [indicator_of_notMem hx]
    have hxu : x / A ∉ Icc (-1 : ℝ) 1 := (scaled_unit_interval_iff A x hA).not.mpr hx
    simp [actualSecondProfile, unitSecondEnergyProfile, indicator_of_notMem hxu]

/-- The actual weak profile is genuinely integrable before any test-function identity. -/
theorem actualSecondProfile_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (actualSecondProfile A) := by
  rw [actualSecondProfile_eq_indicator A hA]
  exact integrable_zeroExtension _ (normalizedInteriorSecond_continuous A) (-A) A

/-- The exact weak second derivative, with all local and product integrability fields proved. -/
theorem actual_normalized_source_weak_second_derivative (A : ℝ) (hA : 0 < A) :
    IsWeakSecondDerivative (normalizedTest explicitSecondDerivative A) (actualSecondProfile A) := by
  have hab : -A ≤ A := by linarith
  have hp : Continuous (normalizedInterior A) := by
    unfold normalizedInterior secondInterior bumpInterior
    fun_prop
  have hqi : Integrable (normalizedTest explicitSecondDerivative A) := by
    rw [normalizedTest_eq_indicator A hA]
    exact integrable_zeroExtension _ hp (-A) A
  refine ⟨hqi.locallyIntegrable, (actualSecondProfile_integrable A hA).locallyIntegrable, ?_⟩
  intro eta heta _
  have heta1 : ContDiff ℝ ∞ (deriv eta) := (contDiff_infty_iff_deriv.mp heta).2
  have heta2 : ContDiff ℝ ∞ (deriv (deriv eta)) := (contDiff_infty_iff_deriv.mp heta1).2
  have hwi : Integrable (fun x => actualSecondProfile A x * eta x) := by
    rw [actualSecondProfile_eq_indicator A hA]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x => normalizedInteriorSecond A x * eta x)
        ((normalizedInteriorSecond_continuous A).mul heta.continuous) (-A) A
  have hpi : Integrable (fun x => normalizedTest explicitSecondDerivative A x *
      deriv (deriv eta) x) := by
    rw [normalizedTest_eq_indicator A hA]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x => normalizedInterior A x * deriv (deriv eta) x)
        (hp.mul heta2.continuous) (-A) A
  refine ⟨hwi, hpi, ?_⟩
  have ibp1 := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hp.continuousOn heta1.continuous.continuousOn
    (fun x _ => normalizedInterior_hasDerivAt A x)
    (fun x _ => ((contDiff_infty_iff_deriv.mp heta1).1 x).hasDerivAt)
    ((normalizedInteriorDerivative_continuous A).intervalIntegrable (-A) A)
    (heta2.continuous.intervalIntegrable (-A) A)
  have ibp2 := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (normalizedInteriorDerivative_continuous A).continuousOn heta.continuous.continuousOn
    (fun x _ => normalizedInteriorDerivative_hasDerivAt_second A x)
    (fun x _ => ((contDiff_infty_iff_deriv.mp heta).1 x).hasDerivAt)
    ((normalizedInteriorSecond_continuous A).intervalIntegrable (-A) A)
    (heta1.continuous.intervalIntegrable (-A) A)
  have hleft := normalizedInterior_frontier A hA (-A) (by
    rw [frontier_Icc hab]
    simp)
  have hright := normalizedInterior_frontier A hA A (by
    rw [frontier_Icc hab]
    simp)
  rw [hleft.1, hright.1] at ibp1
  rw [hleft.2, hright.2] at ibp2
  simp only [zero_mul, sub_zero, zero_sub] at ibp1 ibp2
  rw [actualSecondProfile_eq_indicator A hA, normalizedTest_eq_indicator A hA]
  simp_rw [← Set.indicator_mul_left]
  rw [zeroExtension_integral _ (-A) A hab, zeroExtension_integral _ (-A) A hab]
  linarith

end
end RH16IndependentChallengeNext
```
