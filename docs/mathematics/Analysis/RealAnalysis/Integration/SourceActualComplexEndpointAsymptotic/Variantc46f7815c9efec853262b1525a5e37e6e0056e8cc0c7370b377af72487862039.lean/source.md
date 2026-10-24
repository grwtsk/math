# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variantc46f7815c9efec853262b1525a5e37e6e0056e8cc0c7370b377af72487862039

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfec7510c51bd42cfbe709dbfd4de96de24e5f6` · SHA-256 `dd4ebb4205b1c28535178cd3adfa3d1e91d9019fbd11132f17200a71597b6ace`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualEndpointExtension.Variant528a4eed38d291c8345e8d933b05c38e816ba3645af4ad2bbbd20863469d9832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528a4eed38d291c8345e8d933b05c38e816ba3645af4ad2bbbd20863469d9832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualEndpointExtension.Variant528a4eed38d291c8345e8d933b05c38e816ba3645af4ad2bbbd20863469d9832","mathematical_subject":"Analysis.Integration","original_sha256":"528a4eed38d291c8345e8d933b05c38e816ba3645af4ad2bbbd20863469d9832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T041458Z-1791346498986180000/SourceActualComplexEndpointAsymptotic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEdgeLeadingLimit
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
The actual endpoint numerator is zero-extended on its true finite support.
A complex exponential with positive real part supplies an integrable majorant.
No zero mode, critical arithmetic estimate, or holomorphic continuation is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualEndpointExtension.Variant528a4eed38d291c8345e8d933b05c38e816ba3645af4ad2bbbd20863469d9832

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic

open Set Filter MeasureTheory SourcePairing
open scoped Interval Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceEdgeProfile
open SourceActualEdgeLeadingLimit

noncomputable section

/-- The literal endpoint polynomial with its actual moving support. -/
def actualEndpointExtension (A u : ℝ) : ℝ :=
  (Icc 0 (2 * A)).indicator (endpointPolynomial A) u

/-- The actual complex endpoint integrand retains its moving support. -/
def actualComplexEndpointIntegrand (A : ℝ) (z : ℂ) (u : ℝ) : ℂ :=
  (actualEndpointExtension A u : ℂ) * Complex.exp (-z * (u : ℂ))

/-- The independently specified literal leading complex coefficient. -/
def actualLeadingComplexCoefficient (z : ℂ) : ℂ :=
  ∫ u in Ioi (0 : ℝ), (actualLeadingEndpointPolynomial u : ℂ) *
    Complex.exp (-z * (u : ℂ))

/-- A genuine polynomial times exponential majorant on the whole positive axis. -/
theorem actualEndpointMajorant_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => (192 * u ^ 2 + 4 * u ^ 4) *
      Real.exp (-z.re * u)) (Ioi 0) := by
  have h2 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (2 : ℝ)) (p := (1 : ℝ)) (by norm_num) (by norm_num) hz
  have h4 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (4 : ℝ)) (p := (1 : ℝ)) (by norm_num) (by norm_num) hz
  simp only [Real.rpow_one, Real.rpow_ofNat] at h2 h4
  have he : (fun u : ℝ => (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u)) =
      (fun u : ℝ => 192 * (u ^ 2 * Real.exp (-z.re * u))) +
        (fun u : ℝ => 4 * (u ^ 4 * Real.exp (-z.re * u))) := by
    funext u
    simp only [Pi.add_apply]
    ring
  rw [he]
  exact (h2.const_mul 192).add (h4.const_mul 4)

/-- Zero extension does not discard the real support endpoint or change the source. -/
theorem actualComplexEndpointIntegrand_norm_le {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) (u : ℝ) :
    ‖actualComplexEndpointIntegrand A z u‖ ≤
      (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
  rw [actualComplexEndpointIntegrand, norm_mul, Complex.norm_real, Complex.norm_exp]
  have he : (-z * (u : ℂ)).re = -z.re * u := by simp
  rw [he]
  refine mul_le_mul_of_nonneg_right ?_ (Real.exp_pos _).le
  by_cases hu : u ∈ Icc 0 (2 * A)
  · simpa only [actualEndpointExtension, indicator_of_mem hu, Real.norm_eq_abs] using
      endpointPolynomial_abs_le A u hA hu.1 hu.2
  · simp only [actualEndpointExtension, indicator_of_notMem hu, Real.norm_eq_abs, abs_zero]
    positivity

/-- The actual finite support integrand is measurable before applying DCT. -/
theorem actualComplexEndpointIntegrand_aestronglyMeasurable (A : ℝ) (z : ℂ) :
    AEStronglyMeasurable (actualComplexEndpointIntegrand A z)
      (volume.restrict (Ioi 0)) := by
  have hp : AEStronglyMeasurable (endpointPolynomial A)
      (volume.restrict (Ioi 0)) := (endpointPolynomial_continuous A).aestronglyMeasurable
  have hi := hp.indicator (s := Icc 0 (2 * A)) measurableSet_Icc
  have hf : AEStronglyMeasurable (fun u : ℝ => (actualEndpointExtension A u : ℂ))
      (volume.restrict (Ioi 0)) := Complex.continuous_ofReal.comp_aestronglyMeasurable hi
  have hg : AEStronglyMeasurable (fun u : ℝ => Complex.exp (-z * (u : ℂ)))
      (volume.restrict (Ioi 0)) :=
    (by fun_prop : Continuous (fun u : ℝ => Complex.exp (-z * (u : ℂ)))).aestronglyMeasurable
  exact hf.mul hg

/-- Every actual moving-support integrand is genuinely integrable. -/
theorem actualComplexEndpointIntegrand_integrable {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (actualComplexEndpointIntegrand A z) (Ioi 0) := by
  exact (actualEndpointMajorant_integrable hz).mono'
    (actualComplexEndpointIntegrand_aestronglyMeasurable A z)
    (Eventually.of_forall (actualComplexEndpointIntegrand_norm_le hA z))

/-- Fixed positive distances eventually lie inside the actual finite support. -/
theorem actualComplexEndpointIntegrand_tendsto {u : ℝ} (hu : 0 ≤ u) (z : ℂ) :
    Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
      (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
  have he : (fun A : ℝ => actualComplexEndpointIntegrand A z u) =ᶠ[atTop]
      fun A : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ)) := by
    filter_upwards [eventually_ge_atTop (u / 2)] with A hA
    have hm : u ∈ Icc 0 (2 * A) := ⟨hu, by linarith⟩
    simp only [actualComplexEndpointIntegrand, actualEndpointExtension, indicator_of_mem hm]
  exact ((Complex.continuous_ofReal.tendsto _).comp
    (endpointPolynomial_tendsto_leading u)).mul_const _ |>.congr' he.symm

/-- The literal limiting coefficient is an honest positive-axis L1 integral. -/
theorem actualLeadingComplexCoefficient_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => (actualLeadingEndpointPolynomial u : ℂ) *
      Complex.exp (-z * (u : ℂ))) (Ioi 0) := by
  have hm : AEStronglyMeasurable (fun u : ℝ => (actualLeadingEndpointPolynomial u : ℂ) *
      Complex.exp (-z * (u : ℂ))) (volume.restrict (Ioi 0)) :=
    (by unfold actualLeadingEndpointPolynomial; fun_prop : Continuous _).aestronglyMeasurable
  refine (actualEndpointMajorant_integrable hz).mono' hm (Eventually.of_forall (fun u => ?_))
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
  have he : (-z * (u : ℂ)).re = -z.re * u := by simp
  rw [he]
  apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
  unfold actualLeadingEndpointPolynomial
  calc
    _ ≤ |192 * u ^ 2| + |4 * u ^ 4| := abs_sub _ _
    _ = _ := by rw [abs_of_nonneg (by positivity), abs_of_nonneg (by positivity)]

/-- Genuine DCT over the whole positive axis for each complex positive half plane point. -/
theorem actualComplexEndpoint_integral_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u)
      atTop (𝓝 (actualLeadingComplexCoefficient z)) := by
  have hm : ∀ᶠ A : ℝ in atTop, AEStronglyMeasurable
      (actualComplexEndpointIntegrand A z) (volume.restrict (Ioi 0)) :=
    Eventually.of_forall (fun A => actualComplexEndpointIntegrand_aestronglyMeasurable A z)
  have hb : ∀ᶠ A : ℝ in atTop, ∀ᵐ u ∂volume.restrict (Ioi 0),
      ‖actualComplexEndpointIntegrand A z u‖ ≤
        (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact Eventually.of_forall (actualComplexEndpointIntegrand_norm_le hA z)
  have hl : ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)),
      Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
        (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    exact actualComplexEndpointIntegrand_tendsto hu.le z
  exact tendsto_integral_filter_of_dominated_convergence _ hm hb
    (actualEndpointMajorant_integrable hz) hl


/-- The original real source test, integrated over its exact closed support interval. -/
def actualSourceComplexTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x in (-A)..A, (normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z * (x : ℂ))

/-- Actual source continuity gives finite L1 before any reflected integral is used. -/
theorem actualSourceComplexTransform_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    IntervalIntegrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) volume (-A) A := by
  have hc := (CorrelationRegularity.normalizedTest_contDiff A (by linarith : 0 < A)).continuous
  exact ((Complex.continuous_ofReal.comp hc).mul
    (by fun_prop : Continuous (fun x : ℝ => Complex.exp (z * (x : ℂ))))).intervalIntegrable _ _

/-- The actual endpoint source is genuinely equal to its finite interval expression. -/
theorem actualComplexEndpoint_integral_eq_interval {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u) =
      ∫ u in 0..(2 * A), (endpointPolynomial A u : ℂ) *
        Complex.exp (-z * (u : ℂ)) := by
  have he : actualComplexEndpointIntegrand A z = (Icc 0 (2 * A)).indicator
      (fun u : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ))) := by
    funext u
    by_cases hu : u ∈ Icc 0 (2 * A) <;>
      simp [actualComplexEndpointIntegrand, actualEndpointExtension, hu]
  have hs : Ioi (0 : ℝ) ∩ Icc 0 (2 * A) = Ioc 0 (2 * A) := by
    ext u
    simp only [mem_inter_iff, mem_Ioi, mem_Icc, mem_Ioc]
    constructor
    · rintro ⟨hu, _, hv⟩
      exact ⟨hu, hv⟩
    · rintro ⟨hu, hv⟩
      exact ⟨hu, hu.le, hv⟩
  rw [he, setIntegral_indicator measurableSet_Icc, hs,
    intervalIntegral.integral_of_le (show (0 : ℝ) ≤ 2 * A by linarith)]

/-- Exact exponential reflection keeps all three literal source scale factors. -/
theorem actualSourceComplexTransform_normalized_eq_endpoint {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) :
    ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
      Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z =
        ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u := by
  rw [actualComplexEndpoint_integral_eq_interval hA]
  let k : ℝ := A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)
  have hk : k ≠ 0 := by
    dsimp [k]
    have hp : 0 < A := by linarith
    have hZ := source_normalization_pos A hA
    positivity
  have ht : actualSourceComplexTransform A z =
      ∫ u in 0..(2 * A), (normalizedTest explicitSecondDerivative A (A - u) : ℂ) *
        Complex.exp (z * ((A - u : ℝ) : ℂ)) := by
    have hh := intervalIntegral.integral_comp_sub_left
      (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ))) (a := (0 : ℝ)) (b := 2 * A) A
    have hab : A - 2 * A = -A := by ring
    simpa only [hab, sub_zero, actualSourceComplexTransform] using hh.symm
  rw [ht, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro u hu
  dsimp only
  rw [uIcc_of_le (show (0 : ℝ) ≤ 2 * A by linarith)] at hu
  rw [normalizedTest_endpoint A u hA hu.1 hu.2]
  change ((k : ℂ) * Complex.exp (-z * (A : ℂ))) *
      (((endpointPolynomial A u / k : ℝ) : ℂ) *
        Complex.exp (z * ((A - u : ℝ) : ℂ))) = _
  rw [Complex.ofReal_div, Complex.ofReal_sub]
  have hex : Complex.exp (-z * (A : ℂ)) * Complex.exp (z * ((A : ℂ) - (u : ℂ))) =
      Complex.exp (-z * (u : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  calc
    _ = ((k : ℂ) * ((endpointPolynomial A u : ℂ) / (k : ℂ))) *
        (Complex.exp (-z * (A : ℂ)) * Complex.exp (z * ((A : ℂ) - (u : ℂ)))) := by ring
    _ = _ := by rw [hex]; field_simp [Complex.ofReal_ne_zero.mpr hk]

/-- The actual source transform has a genuine positive-half-plane endpoint limit. -/
theorem actualSourceComplexTransform_normalized_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z)
      atTop (𝓝 (actualLeadingComplexCoefficient z)) := by
  have he : (fun A : ℝ =>
      ((A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ) *
        Complex.exp (-z * (A : ℂ)) * actualSourceComplexTransform A z) =ᶠ[atTop]
      fun A : ℝ => ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact actualSourceComplexTransform_normalized_eq_endpoint hA z
  exact (actualComplexEndpoint_integral_tendsto hz).congr' he.symm

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic
```
