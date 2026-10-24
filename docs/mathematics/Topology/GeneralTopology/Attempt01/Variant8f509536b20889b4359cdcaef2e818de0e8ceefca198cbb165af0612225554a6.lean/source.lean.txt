-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ScaledAmplitude.Varianta34d9a9acf0ef5c0c8ad1ecdaf150683f5ff240d0514ad8965254a011166d7a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a34d9a9acf0ef5c0c8ad1ecdaf150683f5ff240d0514ad8965254a011166d7a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ScaledAmplitude.Varianta34d9a9acf0ef5c0c8ad1ecdaf150683f5ff240d0514ad8965254a011166d7a6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a34d9a9acf0ef5c0c8ad1ecdaf150683f5ff240d0514ad8965254a011166d7a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass13/complex_boundary/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBoundaryOrder
import ActualRealMode
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform

/-! Fixed complex endpoint asymptotics for grwtsk contributors's literal source.
OpenAI Codex scratch construction. Both exponential endpoints and ordinary complex
squares remain. No uniform zero-set control or signed arithmetic budget is assumed. -/

namespace GRWTSK.Topology.GeneralTopology.ScaledAmplitude.Varianta34d9a9acf0ef5c0c8ad1ecdaf150683f5ff240d0514ad8965254a011166d7a6

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryAsymptotic
open Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open ContinuousResearch.SourceBoundaryTransform
open ContinuousResearch.SourceBoundaryOrder

/-- Literal normalized source amplitude, with an unambiguous positive-real scale. -/
def scaledAmplitude (A : ℝ) (z : ℂ) : ℂ :=
  ((A^4*Real.sqrt A : ℝ) : ℂ)*Complex.exp (-(A : ℂ)*z)*normalizedTransform A z

/-- Fixed complex endpoint coefficient with the actual limiting normalization. -/
def leadingCoefficient (z : ℂ) : ℂ :=
  384*(z^2-1/4)/((Real.sqrt (4096/109395 : ℝ) : ℂ)*z^5)

theorem transformPolynomial_ratio (A : ℝ) (hA : A ≠ 0) (z : ℂ) :
    transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4 =
      z^4-10*z^3/(A : ℂ)+45*z^2/(A : ℂ)^2-
        105*z/(A : ℂ)^3+105/(A : ℂ)^4 := by
  unfold transformPolynomial
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hA
  field_simp
  ring

theorem transformPolynomial_ratio_tendsto (z : ℂ) :
    Tendsto (fun A : ℝ => transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4)
      atTop (𝓝 (z^4)) := by
  have h1 : Tendsto (fun A : ℝ => (1 : ℂ)/(A : ℂ)) atTop (𝓝 0) := by
    have h := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0)).ofReal
    simpa only [Complex.ofReal_inv,Complex.ofReal_zero,one_div] using h
  have h2 := h1.pow 2
  have h3 := h1.pow 3
  have h4 := h1.pow 4
  have hc : Tendsto (fun _ : ℝ => z^4) atTop (𝓝 (z^4)) := tendsto_const_nhds
  have ht := (((hc.sub (h1.const_mul (10*z^3))).add
    (h2.const_mul (45*z^2))).sub (h3.const_mul (105*z))).add (h4.const_mul 105)
  have he : (fun A : ℝ => transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4) =ᶠ[atTop]
      (fun A : ℝ => z^4-(10*z^3)*(1/(A : ℂ))+
        (45*z^2)*(1/(A : ℂ))^2-(105*z)*(1/(A : ℂ))^3+105*(1/(A : ℂ))^4) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [transformPolynomial_ratio A hA.ne']
    ring
  apply Tendsto.congr' he.symm
  simpa using ht

theorem negative_endpoint_exponential_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => Complex.exp (-2*(A : ℂ)*z)) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have h := ContinuousResearch.ActualRealMode.exp_scaled_neg_tendsto z.re hz
  convert h using 1
  ext A
  rw [Complex.norm_exp]
  simp only [Complex.mul_re,Complex.ofReal_re,Complex.ofReal_im,
    Complex.neg_re,Complex.neg_im,zero_mul,mul_zero,sub_zero]
  congr 1
  ring

theorem sqrt_normalization_tendsto :
    Tendsto (fun A : ℝ => (Real.sqrt (sourceNormalization A) : ℂ)) atTop
      (𝓝 (Real.sqrt (4096/109395 : ℝ) : ℂ)) := by
  exact ((Real.continuous_sqrt.tendsto _).comp
    ContinuousResearch.ActualRealMode.normalization_tendsto).ofReal

/-- Exact amplitude with positive and reflected negative endpoint terms retained. -/
theorem scaledAmplitude_exact {A : ℝ} (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    scaledAmplitude A z =
      384*(z^2-1/4)/((Real.sqrt (sourceNormalization A) : ℂ)*z^9)*
        (transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4-
          Complex.exp (-2*(A : ℂ)*z)*
            transformPolynomial (-((A : ℂ)*z))/(A : ℂ)^4) := by
  have hp : 0 < A := by linarith
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hp).ne'
  have hZ : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  unfold scaledAmplitude
  rw [normalizedTransform_dictionary,ZeroTransform.actual_transform A hp z hz]
  unfold dividedTransform
  rw [ZeroTransform.source_scale A hp]
  push_cast
  have he : Complex.exp (-(A : ℂ)*z)*Complex.exp ((A : ℂ)*z) = 1 := by
    rw [← Complex.exp_add]
    simp
  have hn : Complex.exp (-(A : ℂ)*z)*Complex.exp (-(A : ℂ)*z) =
      Complex.exp (-2*(A : ℂ)*z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  field_simp
  calc
    _ = (384*((A : ℂ)^4*Real.sqrt A)*(z^2-1/4)*(A : ℂ)^4*z^9*
          (Real.sqrt (sourceNormalization A) : ℂ))*
        (Complex.exp (-(A : ℂ)*z)*
          (Complex.exp ((A : ℂ)*z)*transformPolynomial ((A : ℂ)*z)-
            Complex.exp (-(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z)))) := by ring
    _ = _ := by rw [mul_sub,← mul_assoc,he,one_mul,← mul_assoc,hn]; ring

end ContinuousResearch.ComplexBoundaryAsymptotic
end
