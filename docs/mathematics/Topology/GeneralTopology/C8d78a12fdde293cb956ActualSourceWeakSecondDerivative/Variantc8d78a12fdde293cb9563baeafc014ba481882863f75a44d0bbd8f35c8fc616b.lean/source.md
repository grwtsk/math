# Complete source: GRWTSK.Topology.GeneralTopology.C8d78a12fdde293cb956ActualSourceWeakSecondDerivative.Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e35352ed909741291983e19799c81f2852c4d6f6` · SHA-256 `c8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSecondEnergyCalibration

/-!
Actual weak second derivative of the unchanged normalized compact source.
Two finite polynomial integrations by parts retain both zero traces of q and
qprime. The nonzero interior qsecond traces are kept in its zero extension.
This supplies the distributional bridge required before a C4 correlation
argument; no arithmetic witness or C4 assertion is introduced here.
AI attribution: OpenAI Codex independent mathematical research.
-/

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
