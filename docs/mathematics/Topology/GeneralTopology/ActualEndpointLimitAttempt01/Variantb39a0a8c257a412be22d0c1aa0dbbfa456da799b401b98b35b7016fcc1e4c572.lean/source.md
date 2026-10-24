# Complete source: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt01.Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e071ebcccb78d1655ad33e218a726c7c0c569dbd` · SHA-256 `d4f26c97e6f384f8733a7b43e46dac099c22268dedf4e83956a1098a97be2d32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceNormalizationTendsto.Variant8d94513f29c1d116ac67a15cae55a3d998872d10694b36f9ec4e14ca89a567a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d94513f29c1d116ac67a15cae55a3d998872d10694b36f9ec4e14ca89a567a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceNormalizationTendsto.Variant8d94513f29c1d116ac67a15cae55a3d998872d10694b36f9ec4e14ca89a567a2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8d94513f29c1d116ac67a15cae55a3d998872d10694b36f9ec4e14ca89a567a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass17/endpoint_mass/ActualEndpointLimit-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualEndpointCorrelation
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-! A genuine actual source endpoint excursion and mass-ratio limit.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No differentiated endpoint remainder, arithmetic intercept or signed budget. -/

namespace GRWTSK.Topology.GeneralTopology.SourceNormalizationTendsto.Variant8d94513f29c1d116ac67a15cae55a3d998872d10694b36f9ec4e14ca89a567a2

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualEndpointLimit
open MeasureTheory Set Filter
open scoped Interval Topology
open ActualEndpointCorrelation EndpointProfile ActualPhaseCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

-- Exact normalization proof reused from P8 ActualRealMode8c5d0496,
-- isolated from its unrelated Laplace import closure.
private theorem sourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 (4096/109395 : ℝ)) := by
  have h1 : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hc : Tendsto (fun _ : ℝ => (4096/109395 : ℝ)) atTop (𝓝 (4096/109395 : ℝ)) := tendsto_const_nhds
  have h := (hc.add ((h1.pow 2).const_mul (65536/45045 : ℝ))).add
    ((h1.pow 4).const_mul (196608/5005 : ℝ))
  convert h using 1
  · ext A; unfold sourceNormalization; simp only [inv_pow]; ring
  · norm_num

/-- Genuine continuity of a finite compact-interval polynomial integral. -/
theorem endpointPolynomialCorrelation_continuous (y : ℝ) :
    Continuous (fun a => endpointPolynomialCorrelation a y) := by
  apply intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
  unfold Function.uncurry endpointInteriorPolynomial
  fun_prop

theorem endpointPolynomialCorrelation_at_zero (y : ℝ) :
    endpointPolynomialCorrelation 0 y=endpointLeadingCorrelation y := by
  unfold endpointPolynomialCorrelation
  simp_rw [endpointInteriorPolynomial_at_zero]
  exact endpoint_leading_convolution y

/-- Fixed physical endpoint distance, through every real scale atTop. -/
theorem actual_endpoint_scaled_tendsto {y : ℝ} (hy : 0≤y) :
    Tendsto (fun A : ℝ =>
      sourceCorrelation explicitSecondDerivative A (2*A-y)*(A^9*sourceNormalization A))
      atTop (𝓝 (endpointLeadingCorrelation y)) := by
  have ht := (endpointPolynomialCorrelation_continuous y).continuousAt.tendsto.comp
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ)))
  rw [endpointPolynomialCorrelation_at_zero] at ht
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (max (1:ℝ) (y/2))] with A hA
  have hp : 1≤A := (le_max_left _ _).trans hA
  have hm : y≤2*A := by have hh := (le_max_right (1:ℝ) (y/2)).trans hA;linarith
  exact (actual_endpoint_polynomial_correlation hp ⟨hy,hm⟩).symm

theorem actual_endpoint_normalized_tendsto {y : ℝ} (hy : 0≤y) :
    Tendsto (fun A : ℝ => A^9*sourceCorrelation explicitSecondDerivative A (2*A-y))
      atTop (𝓝 (endpointLeadingCorrelation y/(4096/109395:ℝ))) := by
  have ht := (actual_endpoint_scaled_tendsto hy).div
    sourceNormalization_tendsto (by norm_num : (4096/109395:ℝ)≠0)
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hZ := (source_normalization_pos A hA).ne'
  field_simp [hZ]
  ring

/-- The literal source has a growing excursion at one fixed physical endpoint distance. -/
theorem actual_endpoint_excursion_tendsto :
    Tendsto (fun A : ℝ => criticalPrimeTest A (2*A-1)) atTop atTop := by
  have hn := actual_endpoint_normalized_tendsto (y:=1) (by norm_num)
  have hpos : 0<endpointLeadingCorrelation 1/(4096/109395:ℝ) := by
    norm_num [endpointLeadingCorrelation]
  have he : Tendsto (fun A : ℝ => Real.exp (A-1/2)/A^9) atTop atTop := by
    have hh := (Real.tendsto_exp_mul_div_rpow_atTop (9:ℝ) 1 (by norm_num)).const_mul_atTop
      (Real.exp_pos (-(1/2:ℝ)))
    convert hh using 1
    ext A
    rw [Real.rpow_natCast,←Real.exp_add]
    congr 1
    ring
  have hh := hn.pos_mul_atTop hpos he
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  unfold criticalPrimeTest
  have hne : A≠0 := by linarith
  field_simp [hne]
  congr 1
  ring

/-- Actual growing source variation, derived without arithmetic or zero information. -/
theorem actual_positiveMass_tendsto : Tendsto positiveMass atTop atTop := by
  apply tendsto_atTop_mono' (l:=atTop)
    (f:=fun A : ℝ => criticalPrimeTest A (2*A-1)-1)
  · filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact actual_excursion_le_positiveMass hA ⟨by linarith,by linarith⟩
  · exact actual_endpoint_excursion_tendsto.sub_const 1

theorem actual_negativeMass_tendsto : Tendsto negativeMass atTop atTop := by
  apply (actual_positiveMass_tendsto.add_const 1).congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  exact (negativeMass_eq_positive_add_one hA).symm

/-- Exact mass deficit and actual excursion give the original ratio limit. -/
theorem actual_massRatio_tendsto :
    Tendsto (fun A : ℝ => positiveMass A/negativeMass A) atTop (𝓝 (1:ℝ)) := by
  have hi := tendsto_inv_atTop_zero.comp actual_negativeMass_tendsto
  have ht := tendsto_const_nhds.sub hi
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hd := actual_massRatio_deficit hA
  simp only [one_div] at hd
  linarith

end ContinuousResearch.ActualEndpointLimit
```
