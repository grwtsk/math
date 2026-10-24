# Complete source: GRWTSK.Topology.GeneralTopology.9d67b36eed66fe4f99ffEstimateSourceEdgeProfile.Variant86b3be74025832b36babb18dc93986f2f4d86abf74b9f94bc229367601d7b1fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8407bdecf96f875ff7e00fdf9a6fd59808e3d24e` · SHA-256 `92cb34303adc9f80969473d943b08a65af79018a5965773ed9766aa5f79b7902`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UnitSecondFactor.Variant9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UnitSecondFactor.Variant9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/9d67b36eed66fe4f99ff-EstimateSourceEdgeProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity

/-!
# The literal source polynomial at its support endpoint

The polynomial below is obtained by evaluating the original normalized source
at A-r. The factor A^4 sqrt(A) is retained before forming the correlation.
-/


namespace GRWTSK.Topology.GeneralTopology.UnitSecondFactor.Variant9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceEdgeProfile

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization

noncomputable section

/-- Exact factorization of the accepted second interior unit polynomial. -/
theorem unitSecond_factor (s : ℝ) :
    unitSecond s = 8 * (1-s^2)^2 * (7*s^2-1) := by
  unfold unitSecond
  ring

/-- The exact numerator left after extracting the source's endpoint scale. -/
def endpointPolynomial (A r : ℝ) : ℝ :=
  r^2 * (2-r/A)^2 * (8 * (7*(1-r/A)^2-1) - r^2 * (2-r/A)^2 / 4)

/-- The literal source normalization has a fixed positive rational floor. -/
theorem sourceNormalization_ge_one_div_32 (A : ℝ) (hA : 1 ≤ A) :
    (1/32 : ℝ) ≤ sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A^2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A^4 := by positivity
  unfold sourceNormalization
  linarith

/-- Exact source endpoint evaluation, including its fixed normalization. -/
theorem normalizedTest_endpoint (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    normalizedTest explicitSecondDerivative A (A-r) =
      endpointPolynomial A r /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hA0 : 0 < A := by linarith
  have hm : A-r ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [normalizedTest_eq_indicator A hA0, indicator_of_mem hm]
  unfold normalizedInterior secondInterior bumpInterior endpointPolynomial
  field_simp [hA0.ne', Real.sqrt_ne_zero'.mpr hA0,
    Real.sqrt_ne_zero'.mpr (source_normalization_pos A hA)]
  ring

/-- Evenness is reused from the accepted actual unnormalized test. -/
theorem normalizedTest_even (A : ℝ) (hA : 1 ≤ A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  unfold normalizedTest
  rw [show dilationTest explicitSecondDerivative A (-x) =
      dilationTest explicitSecondDerivative A x from ZeroTestRegularity.actualTest_even A hA x]

/-- The endpoint numerator is a continuous finite polynomial. -/
theorem endpointPolynomial_continuous (A : ℝ) : Continuous (endpointPolynomial A) := by
  unfold endpointPolynomial
  fun_prop

/-- A fixed polynomial absolute bound on the exact endpoint coordinate range. -/
theorem endpointPolynomial_abs_le (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    |endpointPolynomial A r| ≤ 192*r^2 + 4*r^4 := by
  have hA0 : 0 < A := by linarith
  have hq0 : 0 ≤ r/A := div_nonneg hr hA0.le
  have hq2 : r/A ≤ 2 := (div_le_iff₀ hA0).2 hrA
  have hs : (1-r/A)^2 ≤ 1 := by nlinarith
  have hp : (2-r/A)^2 ≤ 4 := by nlinarith
  have hc : |7*(1-r/A)^2-1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (1-r/A)]
  have hi : |8*(7*(1-r/A)^2-1) - r^2*(2-r/A)^2/4| ≤ 48+r^2 := by
    calc
      _ ≤ |8*(7*(1-r/A)^2-1)| + |r^2*(2-r/A)^2/4| := abs_sub _ _
      _ = 8*|7*(1-r/A)^2-1| + r^2*(2-r/A)^2/4 := by
        rw [abs_mul, show |(8 : ℝ)| = 8 by norm_num,
          abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2/4 by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]
  unfold endpointPolynomial
  rw [abs_mul, abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2 by positivity)]
  calc
    _ ≤ r^2*(2-r/A)^2*(48+r^2) := mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ 4*r^2*(48+r^2) := by
      exact mul_le_mul_of_nonneg_right
        (by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]) (by positivity)
    _ = _ := by ring

end
end EstimateSourceEdgeProfile
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
