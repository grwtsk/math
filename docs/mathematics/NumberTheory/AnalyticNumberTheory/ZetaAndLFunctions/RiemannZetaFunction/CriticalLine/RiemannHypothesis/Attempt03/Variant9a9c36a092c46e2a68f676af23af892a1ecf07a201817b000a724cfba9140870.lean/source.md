# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt03.Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `323b4dbf1875c81d0d419b6d4ec82f10e8c44767` · SHA-256 `53ea5318b5cfa8cdf558f66e3629c7ae8561aba48b0ce10072b20e6aec77f5e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ErrorPolynomial.Variant2d4abbd8e212e104009b0b3676a659dd6833eafdb7e844d7bec59e6e64e94aa9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d4abbd8e212e104009b0b3676a659dd6833eafdb7e844d7bec59e6e64e94aa9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ErrorPolynomial.Variant2d4abbd8e212e104009b0b3676a659dd6833eafdb7e844d7bec59e6e64e94aa9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2d4abbd8e212e104009b0b3676a659dd6833eafdb7e844d7bec59e6e64e94aa9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/complex_rate/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ComplexBoundaryAsymptotic

/-! Quantitative complex amplitude control for the literal source.
grwtsk contributors's originating direction; OpenAI Codex scratch proof construction.
The actual normalization and both endpoints remain. No arithmetic witness. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ErrorPolynomial.Variant2d4abbd8e212e104009b0b3676a659dd6833eafdb7e844d7bec59e6e64e94aa9

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryRate
open Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open ContinuousResearch.ComplexBoundaryAsymptotic

/-- Error polynomial for the relative endpoint expansion in a positive half-plane. -/
def errorPolynomial (delta : ℝ) : ℝ :=
  10/delta+45/delta^2+105/delta^3+105/delta^4

/-- The literal normalization ratio, separate from the transform ratio. -/
def normalizationRatio (A : ℝ) : ℝ :=
  Real.sqrt (4096/109395 : ℝ)/Real.sqrt (sourceNormalization A)

def positiveEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1-10/((A : ℂ)*z)+45/((A : ℂ)*z)^2-
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

def reflectedEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1+10/((A : ℂ)*z)+45/((A : ℂ)*z)^2+
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

theorem errorPolynomial_nonneg {delta : ℝ} (hdelta : 0 < delta) :
    0 ≤ errorPolynomial delta := by unfold errorPolynomial; positivity

theorem normalization_bounds {A : ℝ} (hA : 1 ≤ A) :
    (4096/109395 : ℝ) ≤ sourceNormalization A ∧
      sourceNormalization A-(4096/109395 : ℝ) ≤
        (65536/45045+196608/5005)/A^2 := by
  have hp : 0 < A := by linarith
  have h2 : 1 ≤ A^2 := one_le_pow₀ hA
  have h4 : A^2 ≤ A^4 := by nlinarith [sq_nonneg (A^2-1)]
  have ht : (196608/5005 : ℝ)/A^4 ≤ (196608/5005 : ℝ)/A^2 := by
    gcongr
  unfold sourceNormalization
  constructor
  · have hfirst : (0 : ℝ) ≤ (131072/45045)/(2*A^2) := by positivity
    have hlast : (0 : ℝ) ≤ (196608/5005)/A^4 := by positivity
    norm_num only [show (65536/109395 : ℝ)/16 = 4096/109395 by norm_num]
    linarith
  · have he : (65536/109395 : ℝ)/16=4096/109395 := by norm_num
    rw [he]
    have he2 : (131072/45045 : ℝ)/(2*A^2)=(65536/45045 : ℝ)/A^2 := by ring
    rw [he2]
    calc
      _ = (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^4 := by ring
      _ ≤ (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^2 := add_le_add_right ht _
      _ = _ := by ring

theorem normalizationRatio_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ normalizationRatio A ∧ normalizationRatio A ≤ 1 := by
  have hz : 0 < (4096/109395 : ℝ) := by norm_num
  have hp := source_normalization_pos A hA
  have hs := Real.sqrt_le_sqrt (normalization_bounds hA).1
  unfold normalizationRatio
  constructor
  · positivity
  · exact (div_le_one (Real.sqrt_pos.mpr hp)).mpr hs

theorem normalizationRatio_deficit {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤
      (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
  let s := Real.sqrt (sourceNormalization A)
  let s0 := Real.sqrt (4096/109395 : ℝ)
  have hs : 0 < s := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hs0 : 0 < s0 := Real.sqrt_pos.mpr (by norm_num)
  have hss : s0 ≤ s := Real.sqrt_le_sqrt (normalization_bounds hA).1
  have hsq : s^2 = sourceNormalization A := Real.sq_sqrt (source_normalization_pos A hA).le
  have hsq0 : s0^2 = (4096/109395 : ℝ) := Real.sq_sqrt (by norm_num)
  have hden : 2*(4096/109395 : ℝ) ≤ s*(s+s0) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hss) hs0.le]
  have he : 1-normalizationRatio A =
      (sourceNormalization A-(4096/109395 : ℝ))/(s*(s+s0)) := by
    unfold normalizationRatio
    change 1-s0/s = _
    rw [← hsq,← hsq0]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ (sourceNormalization A-(4096/109395 : ℝ))/(2*(4096/109395)) := by
      apply div_le_div_of_nonneg_left
      · exact sub_nonneg.mpr (normalization_bounds hA).1
      · norm_num
      · exact hden
    _ ≤ ((65536/45045+196608/5005)/A^2)/(2*(4096/109395)) := by
      gcongr
      exact (normalization_bounds hA).2
    _ = _ := by ring

theorem source_ratio_exact {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0)
    (hf : z^2-1/4 ≠ 0) :
    scaledAmplitude A z/leadingCoefficient z =
      (normalizationRatio A : ℂ)*(positiveEndpoint A z-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z) := by
  have hp : 0 < A := by linarith
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  have hs0 : (Real.sqrt (4096/109395 : ℝ) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num)).ne'
  rw [scaledAmplitude_exact hA z hz]
  unfold leadingCoefficient normalizationRatio positiveEndpoint reflectedEndpoint transformPolynomial
  push_cast
  field_simp
  ring

theorem inverse_power_bound {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) (hn : n ≠ 0) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ (1/delta^n)/A := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  calc
    _ ≤ 1/(A*delta)^n := by gcongr
    _ = (1/delta^n)/A^n := by ring
    _ ≤ (1/delta^n)/A := by
      apply div_le_div_of_nonneg_left
      · positivity
      · exact hp
      · exact le_self_pow₀ hA hn

theorem positiveEndpoint_error {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖positiveEndpoint A z-1‖ ≤ errorPolynomial delta/A := by
  have h1 := inverse_power_bound hA hdelta hz 1 (by decide)
  have h2 := inverse_power_bound hA hdelta hz 2 (by decide)
  have h3 := inverse_power_bound hA hdelta hz 3 (by decide)
  have h4 := inverse_power_bound hA hdelta hz 4 (by decide)
  have he : positiveEndpoint A z-1 =
      -10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)-
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold positiveEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖-10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      exact (norm_add_le _ _).trans
        (add_le_add_right ((norm_sub_le _ _).trans
          (add_le_add_right (norm_add_le _ _) _)) _)
    _ = 10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 10*((1/delta)/A)+45*((1/delta^2)/A)+105*((1/delta^3)/A)+
        105*((1/delta^4)/A) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem reflectedEndpoint_bound {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖reflectedEndpoint A z‖ ≤ 1+errorPolynomial delta := by
  have h1 := inverse_power_bound hA hdelta hz 1 (by decide)
  have h2 := inverse_power_bound hA hdelta hz 2 (by decide)
  have h3 := inverse_power_bound hA hdelta hz 3 (by decide)
  have h4 := inverse_power_bound hA hdelta hz 4 (by decide)
  have he : reflectedEndpoint A z =
      1+10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)+
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold reflectedEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖(1 : ℂ)‖+‖10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      exact (norm_add_le _ _).trans
        (add_le_add_right ((norm_add_le _ _).trans
          (add_le_add_right ((norm_add_le _ _).trans
            (add_le_add_right (norm_add_le _ _) _)) _)) _)
    _ = 1+10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 1+10*((1/delta)/A)+45*((1/delta^2)/A)+105*((1/delta^3)/A)+
        105*((1/delta^4)/A) := by gcongr
    _ = 1+errorPolynomial delta/A := by unfold errorPolynomial; ring
    _ ≤ _ := by
      gcongr
      exact hA

theorem negative_endpoint_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ 1/(2*delta*A) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  calc
    _ ≤ Real.exp (-2*A*delta) := by gcongr
    _ ≤ 1/(2*delta*A) := by
      apply (le_div_iff₀ (by positivity : 0 < 2*delta*A)).mpr
      have h := Real.mul_exp_neg_le_exp_neg_one (2*delta*A)
      have h1 : Real.exp (-1) ≤ 1 := by
        exact (Real.exp_le_one_iff).mpr (by norm_num)
      nlinarith

end ContinuousResearch.ComplexBoundaryRate
```
