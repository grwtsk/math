-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCorrelationAsymptoticScale.Variant78210355efba0c3b0221d72d235495798f7c3472629079228fbb756f604609a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78210355efba0c3b0221d72d235495798f7c3472629079228fbb756f604609a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCorrelationAsymptoticScale.Variant78210355efba0c3b0221d72d235495798f7c3472629079228fbb756f604609a0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"78210355efba0c3b0221d72d235495798f7c3472629079228fbb756f604609a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualComplexCorrelationAsymptotic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualComplexEndpointCoefficient
import ActualComplexCorrelationSquare

/-!
Genuine asymptotics of the actual complex correlation at a fixed argument in
its open right half plane. The source normalization, ordinary complex square,
and bounded opposite half are retained. No zero expansion, arithmetic witness
or covariance divergence is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualCorrelationAsymptoticScale.Variant78210355efba0c3b0221d72d235495798f7c3472629079228fbb756f604609a0

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualComplexCorrelationAsymptotic
open Filter
open scoped Topology
open SourcePairing SourceActualComplexEndpointAsymptotic
open SourceActualComplexEndpointCoefficient ActualComplexCorrelationSquare
open ActualCorrelationOppositeHalf ActualCriticalExponentialResponse
noncomputable section

/-- The literal scale appropriate to the actual complex correlation. -/
def actualCorrelationAsymptoticScale (A : ℝ) (z : ℂ) : ℂ :=
  ((A^9 * sourceNormalization A : ℝ) : ℂ) * Complex.exp (-2 * z * (A : ℂ))

/-- Both real square roots have their genuine positive source arguments. -/
theorem actualCorrelationNormalizer_sq {A : ℝ} (hA : 1 ≤ A) :
    (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A))^2 =
      A^9 * sourceNormalization A := by
  rw [mul_pow, mul_pow, Real.sq_sqrt (show 0 ≤ A by linarith),
    Real.sq_sqrt (source_normalization_pos A hA).le]
  ring

/-- The original normalization has a genuine finite large-scale limit. -/
theorem actualSourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 ((65536 / 109395 : ℝ) / 16)) := by
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have h2 := (hi.pow 2).const_mul ((131072 / 45045 : ℝ) / 2)
  have h4 := (hi.pow 4).const_mul (196608 / 5005 : ℝ)
  have hh := ((tendsto_const_nhds (x := ((65536 / 109395 : ℝ) / 16))).add h2).add h4
  simp only [zero_pow (by norm_num : 2 ≠ 0), zero_pow (by norm_num : 4 ≠ 0),
    mul_zero, add_zero] at hh
  convert! hh using 1
  ext A
  unfold sourceNormalization
  simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
  ring

/-- The entire source scale vanishes at every fixed complex argument with positive real part. -/
theorem actualCorrelationAsymptoticScale_tendsto_zero {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z) atTop (𝓝 0) := by
  have hz2 : 0 < ((2 : ℂ) * z).re := by
    norm_num [Complex.mul_re] at ⊢
    linarith
  have hm := complexMonomial_exponential_tendsto_zero 9 hz2
  have hn := Complex.continuous_ofReal.continuousAt.tendsto.comp
    actualSourceNormalization_tendsto
  have hh := hn.mul hm
  simp only [mul_zero] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun A => by
    dsimp [actualCorrelationAsymptoticScale]
    push_cast
    have he : -(2 * z) * (A : ℂ) = -2 * z * (A : ℂ) := by ring
    rw [he]
    ring

/-- Genuine endpoint DCT and actual source Fubini give the ordinary complex square coefficient. -/
theorem actualBilateralCorrelationTransform_normalized_tendsto {z : ℂ}
    (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z *
      actualBilateralCorrelationTransform A z) atTop
      (𝓝 ((384 / z^3 - 96 / z^5)^2)) := by
  have hh := (actualSourceComplexTransform_normalized_tendsto_closed hz).pow 2
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualBilateralCorrelationTransform_eq_square hA z]
  have hk : (((A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ))^2 =
      ((A^9 * sourceNormalization A : ℝ) : ℂ) := by
    exact_mod_cast actualCorrelationNormalizer_sq hA
  have he : Complex.exp (-z * (A : ℂ))^2 = Complex.exp (-2 * z * (A : ℂ)) := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  dsimp [actualCorrelationAsymptoticScale]
  rw [mul_pow, mul_pow, hk, he]

/-- The entire actual opposite-half error vanishes at this same normalization. -/
theorem actualHalfCorrelationTransform_scaled_error_tendsto_zero {z : ℂ}
    (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z *
      (actualHalfCorrelationTransform A z - actualBilateralCorrelationTransform A z))
      atTop (𝓝 0) := by
  have hh := (actualCorrelationAsymptoticScale_tendsto_zero hz).norm.mul_const (1 / z.re)
  simp only [norm_zero, zero_mul] at hh
  apply squeeze_zero_norm' _ hh
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left
    (actualHalfCorrelationTransform_sub_bilateral_norm_le hA hz) (norm_nonneg _)

/-- The original positive-half complex response has the same exact ordinary-square limit. -/
theorem actualHalfCorrelationTransform_normalized_tendsto {z : ℂ}
    (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z *
      actualHalfCorrelationTransform A z) atTop
      (𝓝 ((384 / z^3 - 96 / z^5)^2)) := by
  have hh := (actualBilateralCorrelationTransform_normalized_tendsto hz).add
    (actualHalfCorrelationTransform_scaled_error_tendsto_zero hz)
  simp only [add_zero] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun A => by ring

end
end FormalResearch.RiemannHypothesis.ActualComplexCorrelationAsymptotic
