# Complete source: GRWTSK.Topology.GeneralTopology.Attempt04.Variant52fcab5bfa0dc1398296240aac581696944506d052f6e53726cefbc68aa7a139

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f605f942034bf94c1635f3bf3673f5bce8423ab` · SHA-256 `2db0f0b90460fdc411468e5e6211ad084fee90da4709f734061c50e0b4766a71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ScaledAmplitude.Variant61fb80b39bae6a6a65f21ef3b38c9028b36ed594e6f47cf811a808d17b44eacf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61fb80b39bae6a6a65f21ef3b38c9028b36ed594e6f47cf811a808d17b44eacf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ScaledAmplitude.Variant61fb80b39bae6a6a65f21ef3b38c9028b36ed594e6f47cf811a808d17b44eacf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"61fb80b39bae6a6a65f21ef3b38c9028b36ed594e6f47cf811a808d17b44eacf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass13/complex_boundary/attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBoundaryOrder
import ActualRealMode
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform

/-! Fixed complex endpoint asymptotics for grwtsk contributors's literal source.
OpenAI Codex scratch construction. Both exponential endpoints and ordinary complex
squares remain. No uniform zero-set control or signed arithmetic budget is assumed. -/

namespace GRWTSK.Topology.GeneralTopology.ScaledAmplitude.Variant61fb80b39bae6a6a65f21ef3b38c9028b36ed594e6f47cf811a808d17b44eacf

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
  congr 1
  norm_num [Complex.mul_re,Complex.mul_im]

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
  have hnum : Complex.exp (-(A : ℂ)*z)*
      (Complex.exp ((A : ℂ)*z)*transformPolynomial ((A : ℂ)*z)-
        Complex.exp (-(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z))) =
      transformPolynomial ((A : ℂ)*z)-
        Complex.exp (-2*(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z)) := by
    rw [mul_sub,← mul_assoc,he,one_mul,← mul_assoc,hn]
  calc
    _ = 384*(z^2-1/4)/((Real.sqrt (sourceNormalization A) : ℂ)*z^9)*
      (Complex.exp (-(A : ℂ)*z)*
        (Complex.exp ((A : ℂ)*z)*transformPolynomial ((A : ℂ)*z)-
          Complex.exp (-(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z)))/(A : ℂ)^4) := by
            field_simp
    _ = _ := by rw [hnum]; ring

theorem half_plane_ne_zero {z : ℂ} (hz : 0 < z.re) : z ≠ 0 := by
  intro he
  simp [he] at hz

/-- Genuine fixed complex amplitude limit; the negative endpoint vanishes in norm. -/
theorem scaledAmplitude_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => scaledAmplitude A z) atTop (𝓝 (leadingCoefficient z)) := by
  have hnz := half_plane_ne_zero hz
  have hpos := transformPolynomial_ratio_tendsto z
  have hneg := transformPolynomial_ratio_tendsto (-z)
  have hex := negative_endpoint_exponential_tendsto z hz
  have hs : (Real.sqrt (4096/109395 : ℝ) : ℂ) ≠ 0 := by
    apply Complex.ofReal_ne_zero.mpr
    exact (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ)<4096/109395)).ne'
  have ht := ((hpos.sub (hex.mul hneg)).const_mul
    (384*(z^2-1/4)/z^9)).div sqrt_normalization_tendsto hs
  have heq : (fun A : ℝ => scaledAmplitude A z) =ᶠ[atTop]
      (fun A : ℝ => (384*(z^2-1/4)/z^9)*
        (transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4-
          Complex.exp (-2*(A : ℂ)*z)*
            (transformPolynomial ((A : ℂ)*(-z))/(A : ℂ)^4))/
        (Real.sqrt (sourceNormalization A) : ℂ)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [scaledAmplitude_exact hA z hnz,show (A : ℂ)*(-z) = -((A : ℂ)*z) by ring]
    ring
  apply Tendsto.congr' heq.symm
  have hv : (384*(z^2-1/4)/z^9)*(z^4-0*(-z)^4)/
      (Real.sqrt (4096/109395 : ℝ) : ℂ) = leadingCoefficient z := by
    unfold leadingCoefficient
    field_simp
  rw [← hv]
  exact ht

theorem leadingCoefficient_ne_zero {z : ℂ} (hz : z ≠ 0) (hf : z^2-1/4 ≠ 0) :
    leadingCoefficient z ≠ 0 := by
  unfold leadingCoefficient
  apply div_ne_zero (mul_ne_zero (by norm_num) hf)
  apply mul_ne_zero
  · apply Complex.ofReal_ne_zero.mpr
    exact (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ)<4096/109395)).ne'
  · exact pow_ne_zero _ hz

theorem nonreal_pole_filter_ne_zero {z : ℂ} (hz : z.im ≠ 0) : z^2-1/4 ≠ 0 := by
  have hleft : z-(1/2 : ℂ) ≠ 0 := by
    intro he
    have hh := sub_eq_zero.mp he
    apply hz
    rw [hh]
    norm_num
  have hright : z+(1/2 : ℂ) ≠ 0 := by
    intro he
    have hh := congrArg Complex.im he
    apply hz
    simpa using hh
  rw [show z^2-1/4 = (z-1/2)*(z+1/2) by ring]
  exact mul_ne_zero hleft hright

/-- A ratio-to-one asymptotic, with its genuine source and nonzero filter explicit. -/
theorem scaledAmplitude_ratio_tendsto (z : ℂ) (hz : 0 < z.re)
    (hf : z^2-1/4 ≠ 0) :
    Tendsto (fun A : ℝ => scaledAmplitude A z/leadingCoefficient z)
      atTop (𝓝 1) := by
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero hz) hf
  simpa only [div_self hc] using (scaledAmplitude_tendsto z hz).div_const (leadingCoefficient z)

/-- The positive-real scale matches the exact real-power exponent in the paper. -/
theorem amplitude_scale_rpow {A : ℝ} (hA : 0 < A) :
    A^(9/2 : ℝ) = A^4*Real.sqrt A := by
  rw [show (9/2 : ℝ) = (4 : ℕ)+1/2 by norm_num,Real.rpow_add hA,
    Real.rpow_natCast,← Real.sqrt_eq_rpow]

theorem actual_complex_amplitude_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => (A^(9/2 : ℝ) : ℂ)*
      Complex.exp (-(A : ℂ)*z)*normalizedTransform A z)
      atTop (𝓝 (leadingCoefficient z)) := by
  apply (scaledAmplitude_tendsto z hz).congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [amplitude_scale_rpow hA]
  rfl

end ContinuousResearch.ComplexBoundaryAsymptotic
end
```
