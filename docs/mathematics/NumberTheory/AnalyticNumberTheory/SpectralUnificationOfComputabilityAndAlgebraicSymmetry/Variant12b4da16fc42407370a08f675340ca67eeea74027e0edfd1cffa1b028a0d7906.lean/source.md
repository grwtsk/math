# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d61732b2bb4d726b577b0033a97aac4ceefab316` · SHA-256 `12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeError

/-!
# Finite centered Chebyshev transport of the exact critical weight

This uses the accepted finite prime-step theorem, not a Möbius Abel theorem.
Both endpoints are retained first. All integrability and changes of variables
are on finite source intervals.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCriticalPrimeErrorAbel

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateNormalizedSourceProfile
open EstimateCriticalPrimeError EstimatePrimeSmoothDefect PrimePowerDescent

noncomputable section

/-- The exact signed derivative after the logarithmic change of variables. -/
def criticalLogDerivative (A t : ℝ) : ℝ :=
  Real.exp (-t/2) * (deriv (unitCorrelation A) (t/A) / A - unitCorrelation A (t/A) / 2)

theorem criticalWeight_exp (A t : ℝ) (hA : 0 < A) :
    criticalWeight A (Real.exp t) =
      exponentialTest (sourceCorrelation explicitSecondDerivative A) t := by
  unfold criticalWeight exponentialTest
  rw [Real.log_exp, ← sourceCorrelation_eq_unitCorrelation_div A t hA,
    ← Real.exp_half, neg_div, Real.exp_neg]
  ring

/-- Exact inverse derivative scaling of the literal source correlation. -/
theorem unitCorrelation_deriv_div (A t : ℝ) (hA : 0 < A) :
    deriv (unitCorrelation A) (t/A) / A =
      deriv (sourceCorrelation explicitSecondDerivative A) t := by
  rw [(unitCorrelation_hasDerivAt A (t/A) hA).deriv, mul_div_cancel₀ t hA.ne']
  exact mul_div_cancel_left₀ _ hA.ne'

theorem sourceWeight_eq_criticalLogDerivative (A t : ℝ) (hA : 0 < A) :
    sourceWeight explicitSecondDerivative A t = criticalLogDerivative A t := by
  unfold sourceWeight criticalLogDerivative
  rw [unitCorrelation_deriv_div A t hA,
    ← sourceCorrelation_eq_unitCorrelation_div A t hA]

/-- The Jacobian cancels exactly one factor of the multiplicative denominator. -/
theorem criticalWeight_deriv_exp_mul (A t : ℝ) (hA : 0 < A) :
    deriv (criticalWeight A) (Real.exp t) * Real.exp t = criticalLogDerivative A t := by
  rw [(criticalWeight_hasDerivAt A (Real.exp t) hA (Real.exp_pos t)).deriv,
    Real.log_exp]
  unfold criticalLogDerivative
  rw [← Real.exp_half, neg_div, Real.exp_neg]
  field_simp

/-- The centered prime count times the actual derivative is integrable before substitution. -/
theorem chebyshev_log_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ chebyshevError (Real.exp t) * criticalLogDerivative A t)
      volume lowerEndpoint (2*A) := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hF := exponentialTest_contDiff _ hC
  have hpsi := chebyshev_mul_deriv_intervalIntegrable (2*A) (source_interval_order A hA)
    (exponentialTest (sourceCorrelation explicitSecondDerivative A)) hF
  have he : Continuous (fun t ↦ Real.exp t *
      deriv (exponentialTest (sourceCorrelation explicitSecondDerivative A)) t) :=
    Real.continuous_exp.mul hF.continuous_deriv_one
  have hdf (t : ℝ) :
      deriv (exponentialTest (sourceCorrelation explicitSecondDerivative A)) t =
        criticalLogDerivative A t := by
    rw [exponentialTest_deriv _ hC]
    exact sourceWeight_eq_criticalLogDerivative A t (by linarith)
  simpa only [chebyshevError, sub_mul, hdf] using
    hpsi.sub (he.intervalIntegrable lowerEndpoint (2*A))

/-- Equality of the two finite signed integral integrands after substitution. -/
theorem critical_chebyshev_exp_integrand (A t : ℝ) (hA : 0 < A) :
    (chebyshevError (Real.exp t) * deriv (criticalWeight A) (Real.exp t)) * Real.exp t =
      chebyshevError (Real.exp t) * criticalLogDerivative A t := by
  rw [mul_assoc, criticalWeight_deriv_exp_mul A t hA]

/-- The multiplicative-coordinate Chebyshev integral is genuinely finite-integrable. -/
theorem chebyshev_weight_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun x ↦ chebyshevError x * deriv (criticalWeight A) x)
      volume 2 (Real.exp (2*A)) := by
  have hi : IntervalIntegrable (fun t ↦
      ((fun x ↦ chebyshevError x * deriv (criticalWeight A) x) ∘ Real.exp) t * Real.exp t)
      volume lowerEndpoint (2*A) := by
    apply (chebyshev_log_intervalIntegrable A hA).congr
    intro t _
    exact (critical_chebyshev_exp_integrand A t (by linarith)).symm
  have h := (intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun x ↦ chebyshevError x * deriv (criticalWeight A) x)
    (a := lowerEndpoint) (b := 2*A) Real.continuous_exp.continuousOn
    (fun t _ ↦ Real.hasDerivAt_exp t) (fun t _ ↦ (Real.exp_pos t).le)).mp hi
  simpa only [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)] using h

/-- One monotone substitution, after both finite integrability gates have checked. -/
theorem chebyshev_log_integral_eq_weight_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2*A, chebyshevError (Real.exp t) * criticalLogDerivative A t) =
      ∫ x in (2 : ℝ)..Real.exp (2*A), chebyshevError x * deriv (criticalWeight A) x := by
  have h := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun x ↦ chebyshevError x * deriv (criticalWeight A) x)
    (a := lowerEndpoint) (b := 2*A) Real.continuous_exp.continuousOn
    (fun t _ ↦ Real.hasDerivAt_exp t) (fun t _ ↦ (Real.exp_pos t).le)
  simp only [Function.comp_def, critical_chebyshev_exp_integrand A _ (by linarith),
    lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)] at h
  exact h

/-- Finite centered prime summation, retaining both source boundaries. -/
theorem criticalPrimeError_eq_chebyshev_log_boundary (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A =
      chebyshevError (Real.exp (2*A)) * criticalWeight A (Real.exp (2*A)) +
      2 * criticalWeight A 2 -
      ∫ t in lowerEndpoint..2*A, chebyshevError (Real.exp t) * criticalLogDerivative A t := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have h := source_signed_pairing_ibp explicitSecondDerivative A hA hC
  have hpair : signedPairing explicitSecondDerivative A =
      ∫ t in lowerEndpoint..2*A, chebyshevError (Real.exp t) * criticalLogDerivative A t := by
    unfold signedPairing errorProfile
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [sourceWeight_eq_criticalLogDerivative A t (by linarith)]
  have hsum : (∑ n ∈ primePowerInventory (2*A), ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)) =
      closedPrimeMoment A := rfl
  have hsmooth : (∫ t in lowerEndpoint..2*A, Real.exp t *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) t) = smoothMoment A := by
    unfold smoothMoment
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only [exponentialTest]
    rw [← mul_assoc, ← Real.exp_add, show t + -t/2 = t/2 by ring]
  have hlow : exponentialTest (sourceCorrelation explicitSecondDerivative A) lowerEndpoint =
      criticalWeight A 2 := by
    rw [← criticalWeight_exp A lowerEndpoint (by linarith), lowerEndpoint,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [hpair, hsum, hsmooth, hlow, ← criticalWeight_exp A (2*A) (by linarith)] at h
  have herr : normalizedCriticalPrimeError A = closedPrimeMoment A - smoothMoment A := by
    rw [← primeSmoothDefect_eq_normalizedCriticalPrimeError A hA]
    rfl
  linarith

/-- Exact Chebyshev partial summation in multiplicative coordinates, with both endpoints. -/
theorem criticalPrimeError_eq_chebyshev_boundary (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A =
      chebyshevError (Real.exp (2*A)) * criticalWeight A (Real.exp (2*A)) +
      2 * criticalWeight A 2 -
      ∫ x in (2 : ℝ)..Real.exp (2*A), chebyshevError x * deriv (criticalWeight A) x := by
  rw [criticalPrimeError_eq_chebyshev_log_boundary A hA,
    chebyshev_log_integral_eq_weight_integral A hA]

/-- Only the proved source upper zero removes its Chebyshev boundary. -/
theorem criticalPrimeError_eq_chebyshev_integral (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A = 2 * criticalWeight A 2 -
      ∫ x in (2 : ℝ)..Real.exp (2*A), chebyshevError x * deriv (criticalWeight A) x := by
  rw [criticalPrimeError_eq_chebyshev_boundary A hA, criticalWeight_upper_zero A hA]
  ring


/-- The signed primitive is the exact finite centered Chebyshev integral. -/
def criticalSignedChebyshevIntegral (A : ℝ) : ℝ :=
  ∫ x in (2 : ℝ)..Real.exp (2*A), chebyshevError x * deriv (criticalWeight A) x

/-- The lower endpoint remains bounded; it is not dropped. -/
theorem critical_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |2 * criticalWeight A 2| ≤ Real.sqrt 2 := by
  have hp := prime_two_correction (sourceCorrelation explicitSecondDerivative A)
  have hl := criticalWeight_exp A lowerEndpoint (by linarith : 0 < A)
  rw [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)] at hl
  have heq : 2 * criticalWeight A 2 = endpointMoment A := by
    unfold endpointMoment
    dsimp only [lowerEndpoint] at hp ⊢
    rw [hl]
    linarith [hp]
  rw [heq]
  exact endpointMoment_abs_le A hA

/-- The remaining signed lower-tail theorem, with a fixed constant and threshold. -/
def CriticalSignedChebyshevTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -C ≤ criticalSignedChebyshevIntegral A

/-- Exact signed reduction; no pointwise bound for the Chebyshev error is assumed. -/
theorem critical_signed_tail_iff_critical_prime_error_tail :
    CriticalSignedChebyshevTailLowerBound ↔ CriticalPrimeErrorTailUpperBound := by
  constructor
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + Real.sqrt 2, by positivity, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (critical_boundary_abs_le A (hR.trans hRA))).2
    have hi := h A hRA
    rw [criticalPrimeError_eq_chebyshev_integral A (hR.trans hRA)]
    unfold criticalSignedChebyshevIntegral at hi
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + Real.sqrt 2, by positivity, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (critical_boundary_abs_le A (hR.trans hRA))).1
    have hd := h A hRA
    rw [criticalPrimeError_eq_chebyshev_integral A (hR.trans hRA)] at hd
    unfold criticalSignedChebyshevIntegral
    linarith

/-- The source-specific signed primitive is equivalent to the existing canonical tail target. -/
theorem critical_signed_tail_iff_mertens_residual_tail :
    CriticalSignedChebyshevTailLowerBound ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  critical_signed_tail_iff_critical_prime_error_tail.trans
    critical_prime_error_tail_iff_mertens_residual_tail

end
end EstimateCriticalPrimeErrorAbel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
