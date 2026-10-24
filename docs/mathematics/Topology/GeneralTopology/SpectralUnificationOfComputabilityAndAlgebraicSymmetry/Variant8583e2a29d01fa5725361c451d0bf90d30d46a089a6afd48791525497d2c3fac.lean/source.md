# Complete source: GRWTSK.Topology.GeneralTopology.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant8583e2a29d01fa5725361c451d0bf90d30d46a089a6afd48791525497d2c3fac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `154c420df2d90a90e717ab66d03c87948ac69e93` · SHA-256 `fb18c410509be4b7873335c3208074d71a32ea27836b37c83e1edfd6957226bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.HigherPrimePowerAbsLe.Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.HigherPrimePowerAbsLe.Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateEvenPrimePowers
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateOddPrimePowers
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCompositeMainTerm
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual

/-!
# Unconditional removal of the higher prime powers

The complete higher-power sector has a linear absolute bound and an exact
source-specific linear main term with uniformly bounded error. No bound for
the remaining signed first-prime sum is assumed in these arithmetic results.
-/


namespace GRWTSK.Topology.GeneralTopology.HigherPrimePowerAbsLe.Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePrimePowerRemoval

open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateMertensResidual EstimatePrimePowerSectors EstimateEvenPrimePowers
open EstimateOddPrimePowers EstimateCompositeMainTerm EstimatePolynomialResidual

noncomputable section

/-- The entire higher-prime-power sector is at most linear at every real scale. -/
theorem higherPrimePower_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - primeFirstMoment A| ≤ A + Real.log 4 + 16 := by
  have he : mertensResidual A - primeFirstMoment A = evenPowerMoment A + oddHigherMoment A := by
    rw [mertensResidual_eq_prime_power_sectors A hA]
    ring
  rw [he]
  calc
    _ ≤ |evenPowerMoment A| + |oddHigherMoment A| := abs_add_le _ _
    _ ≤ (A + Real.log 4 + 4) + 12 :=
      add_le_add (evenPowerMoment_abs_le A hA) (oddHigherMoment_abs_le A hA)
    _ = _ := by ring

/-- The composite sector's exact normalized linear main term has a uniform error. -/
theorem higherPrimePower_sub_main_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - primeFirstMoment A -
      1024 * A / (99225 * sourceNormalization A)| ≤ 10 * (Real.log 4 + 4) + 12 := by
  have hev := evenPowerMoment_sub_half_integral_abs_le A hA
  rw [sourceCorrelation_half_integral A hA] at hev
  have he : mertensResidual A - primeFirstMoment A -
      1024 * A / (99225 * sourceNormalization A) =
      (evenPowerMoment A - 1024 * A / (99225 * sourceNormalization A)) + oddHigherMoment A := by
    rw [mertensResidual_eq_prime_power_sectors A hA]
    ring
  rw [he]
  exact (abs_add_le _ _).trans (add_le_add hev (oddHigherMoment_abs_le A hA))

/-- The uniformly bounded composite error becomes negligible after division by the real scale. -/
theorem higherPrimePower_normalized_error_tendsto :
    Tendsto (fun A : ℝ ↦ (mertensResidual A - primeFirstMoment A) / A -
      1024 / (99225 * sourceNormalization A)) atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hmajor : Tendsto (fun A : ℝ ↦ (10 * (Real.log 4 + 4) + 12) / A)
      atTop (𝓝 0) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_const_nhds (x := 10 * (Real.log 4 + 4) + 12)).mul hi
  apply squeeze_zero_norm' (a := fun A : ℝ ↦ (10 * (Real.log 4 + 4) + 12) / A) ?_ hmajor
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have he : (mertensResidual A - primeFirstMoment A) / A -
      1024 / (99225 * sourceNormalization A) =
      (mertensResidual A - primeFirstMoment A -
        1024 * A / (99225 * sourceNormalization A)) / A := by
    field_simp
  rw [Real.norm_eq_abs, he, abs_div, abs_of_pos hp]
  exact div_le_div_of_nonneg_right (higherPrimePower_sub_main_abs_le A hA) hp.le

/-- The higher-power sector alone has the stated linear asymptotic through all real scales. -/
theorem higherPrimePower_div_scale_tendsto :
    Tendsto (fun A : ℝ ↦ (mertensResidual A - primeFirstMoment A) / A)
      atTop (𝓝 (2431 / 8820 : ℝ)) := by
  have h := higherPrimePower_normalized_error_tendsto.add composite_main_coefficient_tendsto
  simpa only [sub_add_cancel, zero_add] using h

/-- An actual polynomial bound for the remaining primes transfers to the existing
residual target with degree `max m 1`; no new prime estimate is asserted. -/
theorem polynomial_residual_of_prime_first_bound (m : ℕ) (D R : ℝ)
    (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hprime : ∀ A : ℝ, R ≤ A → primeFirstMoment A ≤ D * A ^ m) :
    PolynomialResidualTailUpperBound := by
  refine ⟨max m 1, D + Real.log 4 + 17, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hpow : 1 ≤ A ^ (max m 1) := one_le_pow₀ hA
  have hm : A ^ m ≤ A ^ (max m 1) := pow_le_pow_right₀ hA (le_max_left _ _)
  have h1 : A ≤ A ^ (max m 1) := by
    simpa only [pow_one] using pow_le_pow_right₀ hA (le_max_right m 1)
  have hc : Real.log 4 + 16 ≤ (Real.log 4 + 16) * A ^ (max m 1) :=
    le_mul_of_one_le_right (by positivity) hpow
  have hd := mul_le_mul_of_nonneg_left hm hD
  have hres := (abs_le.mp (higherPrimePower_abs_le A hA)).2
  nlinarith [hprime A hRA]

end
end EstimatePrimePowerRemoval
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
