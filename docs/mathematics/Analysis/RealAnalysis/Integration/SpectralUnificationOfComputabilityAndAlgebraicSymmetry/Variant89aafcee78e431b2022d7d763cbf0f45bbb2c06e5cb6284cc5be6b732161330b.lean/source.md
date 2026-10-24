# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant89aafcee78e431b2022d7d763cbf0f45bbb2c06e5cb6284cc5be6b732161330b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbed124aeb185947047819816a291a514ad5269c` · SHA-256 `b6245e0ff31c4abfe2f92ac60375aa300747713b5d1e5a81781f906b9817d8af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PowerErrorMajorant.Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PowerErrorMajorant.Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7","mathematical_subject":"Analysis.Integration","original_sha256":"ba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/ba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeErrorAbel

/-!
# Exact exponent transfer for a finite absolute prime - error majorant

The input is an explicit generic finite - range error inequality, not a
number - theoretic axiom. The conclusion is an upper bound and an exact scaled
integral. It does not assert divergence of that integral or of the signed source.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PowerErrorMajorant.Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCriticalPrimeErrorMajorant

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateNormalizedSourceProfile EstimateCriticalPrimeError EstimateCriticalPrimeErrorAbel

noncomputable section

/-- The literal absolute derivative cost after a power error hypothesis
and logarithmic Jacobian. -/
def powerErrorMajorant (A θ : ℝ) (L : ℝ → ℝ) (t : ℝ) : ℝ :=
  Real.exp ((θ - 1 / 2) * t) * L (Real.exp t) *
    |deriv (unitCorrelation A) (t / A) / A - unitCorrelation A (t / A) / 2|

/-- Exact pointwise exponent transfer, keeping the entire source derivative. -/
theorem chebyshev_log_abs_le_power_majorant
    (A θ C t : ℝ) (L : ℝ → ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L (Real.exp t))
    (hE : |chebyshevError (Real.exp t)| ≤ C * (Real.exp t) ^ θ * L (Real.exp t)) :
    |chebyshevError (Real.exp t) * criticalLogDerivative A t| ≤
      C * powerErrorMajorant A θ L t := by
  rw [Real.rpow_def_of_pos (Real.exp_pos t) θ, Real.log_exp] at hE
  unfold criticalLogDerivative
  rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (C * Real.exp (t * θ) * L (Real.exp t)) *
        (Real.exp (-t / 2) *
          |deriv (unitCorrelation A) (t / A) / A - unitCorrelation A (t / A) / 2|) :=
      mul_le_mul hE le_rfl (by positivity) (by positivity)
    _ = C * powerErrorMajorant A θ L t := by
      unfold powerErrorMajorant
      rw [show (θ - 1 / 2) * t = t * θ + -t / 2 by ring, Real.exp_add]
      ring

/-- The finite absolute error consequence exposes all positivity and
integrability premises. -/
theorem critical_prime_error_abs_le_power_majorant
    (A θ C : ℝ) (L : ℝ → ℝ) (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hL : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)), 0 ≤ L x)
    (hE : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)), |chebyshevError x| ≤ C * x ^ θ * L x)
    (hM : IntervalIntegrable (powerErrorMajorant A θ L) volume lowerEndpoint (2 * A)) :
    |normalizedCriticalPrimeError A - 2 * criticalWeight A 2| ≤
      C * ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A θ L t := by
  have heq : normalizedCriticalPrimeError A - 2 * criticalWeight A 2 =
      -(∫ t in lowerEndpoint..2 * A, chebyshevError (Real.exp t) * criticalLogDerivative A t) := by
    rw [criticalPrimeError_eq_chebyshev_log_boundary A hA, criticalWeight_upper_zero A hA]
    ring
  rw [heq, abs_neg]
  refine (intervalIntegral.abs_integral_le_integral_abs (source_interval_order A hA)).trans ?_
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_mono_on (source_interval_order A hA)
    (chebyshev_log_intervalIntegrable A hA).abs (hM.const_mul C)
  intro t ht
  have hex : Real.exp t ∈ Icc (2 : ℝ) (Real.exp (2 * A)) := by
    constructor
    · calc
        2 = Real.exp lowerEndpoint := by
          rw [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
        _ ≤ Real.exp t := Real.exp_le_exp.mpr ht.1
    · exact Real.exp_le_exp.mpr ht.2
  exact chebyshev_log_abs_le_power_majorant A θ C t L hC (hL _ hex) (hE _ hex)

/-- Exact finite rescaling; the prefactor is `A`, with no hidden mass gain. -/
theorem power_majorant_integral_eq_unit_scale (A θ : ℝ) (L : ℝ → ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A θ L t) =
      A * ∫ y in lowerEndpoint / A..2, Real.exp ((θ - 1 / 2) * (A * y)) * L (Real.exp (A * y)) *
        |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
  have h := intervalIntegral.smul_integral_comp_mul_left
    (a := lowerEndpoint / A) (b := (2 : ℝ)) (powerErrorMajorant A θ L) A
  rw [mul_div_cancel₀ lowerEndpoint hA.ne', show A * 2 = 2 * A by ring] at h
  simp only [smul_eq_mul] at h
  rw [← h]
  congr 1
  apply intervalIntegral.integral_congr
  intro y _
  dsimp only [powerErrorMajorant]
  rw [mul_div_cancel_left₀ y hA.ne']

/-- At the critical exponent the exponential disappears but the exact scale factor remains. -/
theorem critical_power_majorant_eq_unit_scale (A : ℝ) (L : ℝ → ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1 / 2) L t) =
      A * ∫ y in lowerEndpoint / A..2, L (Real.exp (A * y)) *
        |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
  simpa only [sub_self, zero_mul, Real.exp_zero, one_mul] using
    power_majorant_integral_eq_unit_scale A (1 / 2) L hA

/-- The finite source endpoint fixes the exponent `2θ - 1`; this is only an upper factor. -/
theorem power_exponential_factor_upper (A θ t : ℝ) (hθ : 1 / 2 ≤ θ) (ht : t ≤ 2 * A) :
    Real.exp ((θ - 1 / 2) * t) ≤ Real.exp ((2 * θ - 1) * A) := by
  apply Real.exp_le_exp.mpr
  nlinarith

end
end EstimateCriticalPrimeErrorMajorant
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
