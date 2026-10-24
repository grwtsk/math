# Complete source: GRWTSK.Topology.GeneralTopology.ActualPrescribedCorrelationNegativeSequence.Variantefc1c59b9ec51e36b40f93a5871427babc0e4aedb0a1d54d61b85fe882c7675a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef77582935cc57a85ff0ebcb028d9ff54b9d9cc` · SHA-256 `a7fe1dca7d7e93d6069b274d604b442adc80835b1aeed73fca4e37fc0d2cffe6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualPrescribedScaleSequence.Variantbb777ab65015a5105e516e2e6938206191fbed2e9f47dbf2e82cab1f8ed11548","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb777ab65015a5105e516e2e6938206191fbed2e9f47dbf2e82cab1f8ed11548","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualPrescribedScaleSequence.Variantbb777ab65015a5105e516e2e6938206191fbed2e9f47dbf2e82cab1f8ed11548","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bb777ab65015a5105e516e2e6938206191fbed2e9f47dbf2e82cab1f8ed11548","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualPrescribedCorrelationNegativeSequence-Native01/ActualPrescribedCorrelationNegativeSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexCorrelationAsymptotic
import ActualPrescribedComplexCoefficient

/-!
A prescribed sequence of actual scales has a negative real complex correlation
transform. This is a literal source-kernel consequence, not a zeta zero,
arithmetic covariance estimate, or RH counterexample.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualPrescribedScaleSequence.Variantbb777ab65015a5105e516e2e6938206191fbed2e9f47dbf2e82cab1f8ed11548

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPrescribedCorrelationNegativeSequence
open Filter
open scoped Topology
open SourcePairing ActualCriticalExponentialResponse ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
open ActualPrescribedComplexCoefficient ActualComplexCorrelationAsymptotic
noncomputable section

/-- An independently prescribed sequence removes the actual complex phase. -/
def actualPrescribedScaleSequence (n : ℕ) : ℝ := 2 * Real.pi * n

/-- These source scales approach positive infinity. -/
theorem actualPrescribedScaleSequence_tendsto :
    Tendsto actualPrescribedScaleSequence atTop atTop := by
  exact Tendsto.const_mul_atTop (by positivity : 0 < 2 * Real.pi)
    tendsto_natCast_atTop_atTop

/-- The literal complex phase equals a positive real exponential on this sequence. -/
theorem actualPrescribedScaleSequence_phase (n : ℕ) :
    Complex.exp (-2 * actualPrescribedComplexMode *
      (actualPrescribedScaleSequence n : ℂ)) =
      (Real.exp (-actualPrescribedScaleSequence n) : ℂ) := by
  have he : -2 * actualPrescribedComplexMode *
      (actualPrescribedScaleSequence n : ℂ) =
      -(actualPrescribedScaleSequence n : ℂ) - (n : ℂ) * (2 * Real.pi * Complex.I) := by
    dsimp [actualPrescribedComplexMode, actualPrescribedScaleSequence]
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add, Complex.exp_neg,
    Complex.exp_nat_mul_two_pi_mul_I, inv_one, mul_one]
  exact (Complex.ofReal_exp _).symm

/-- The genuine positive-half source transform has the exact negative scaled real limit. -/
theorem actualPrescribedCorrelation_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualPrescribedScaleSequence n ^ 9 * sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) *
        (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
          actualPrescribedComplexMode).re) atTop (𝓝 (-1179648 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualHalfCorrelationTransform_normalized_tendsto
      actualPrescribedComplexMode_re_pos).comp actualPrescribedScaleSequence_tendsto)
  have hc : 384 / actualPrescribedComplexMode ^ 3 - 96 / actualPrescribedComplexMode ^ 5 =
      actualLeadingComplexCoefficient actualPrescribedComplexMode :=
    (actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos).symm
  rw [hc, actualLeadingComplexCoefficient_prescribed_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualPrescribedScaleSequence_phase]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]

/-- Eventually the unscaled actual transform itself has negative real part. -/
theorem actualPrescribedCorrelation_eventually_negative :
    ∀ᶠ n in atTop,
      (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
        actualPrescribedComplexMode).re < 0 := by
  have hn := actualPrescribedCorrelation_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-1179648 : ℝ) < 0)
  filter_upwards [hn, actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualPrescribedScaleSequence n ^ 9 *
      sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) := by
    have hZ := source_normalization_pos (actualPrescribedScaleSequence n) hA
    have hAp : 0 < actualPrescribedScaleSequence n := by linarith
    positivity
  exact (mul_neg_iff_of_pos_left hp).mp hn

/-- Negative real actual transform values occur at arbitrarily large genuine source scales. -/
theorem actualPrescribedCorrelation_negative_beyond (R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualHalfCorrelationTransform A actualPrescribedComplexMode).re < 0 := by
  obtain ⟨n, hn, hR, hA⟩ :=
    (actualPrescribedCorrelation_eventually_negative.and
      (actualPrescribedScaleSequence_tendsto.eventually_ge_atTop R).and
      (actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1)).exists
  exact ⟨actualPrescribedScaleSequence n, hR, hA, hn⟩

end
end FormalResearch.RiemannHypothesis.ActualPrescribedCorrelationNegativeSequence
```
