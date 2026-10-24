# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt06.Variantea78da87b9ee3365fb2f1a1f861c7fb9842a0d5931edf5440f2b7bb9d88c3fb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8078e677df708e37434e482dc19e270929653509` · SHA-256 `7fbb19cdfe13933646ad3f8fc7eabc11e6549bcb669b61ae137942ac6d87f33d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ErrorPolynomial.Variantcfd30151db313f78a5a380fa645d4a688ef161419eb6cd60d932156b56f6e046","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfd30151db313f78a5a380fa645d4a688ef161419eb6cd60d932156b56f6e046","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ErrorPolynomial.Variantcfd30151db313f78a5a380fa645d4a688ef161419eb6cd60d932156b56f6e046","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cfd30151db313f78a5a380fa645d4a688ef161419eb6cd60d932156b56f6e046","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/complex_rate/attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ComplexBoundaryAsymptotic

/-! Quantitative complex amplitude control for the literal source.
grwtsk contributors's originating direction; OpenAI Codex scratch proof construction.
The actual normalization and both endpoints remain. No arithmetic witness. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ErrorPolynomial.Variantcfd30151db313f78a5a380fa645d4a688ef161419eb6cd60d932156b56f6e046

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
  apply (div_eq_iff (leadingCoefficient_ne_zero hz hf)).mpr
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
  simp only [pow_one] at h1
  have he : positiveEndpoint A z-1 =
      -10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)-
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold positiveEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖-10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht2 := norm_sub_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht3 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)-105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
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
  simp only [pow_one] at h1
  have he : reflectedEndpoint A z =
      1+10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)+
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold reflectedEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖(1 : ℂ)‖+‖10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (1 : ℂ) (10*((1 : ℂ)/((A : ℂ)*z)))
      have ht2 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht3 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht4 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)+105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
    _ = 1+10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 1+10*((1/delta)/A)+45*((1/delta^2)/A)+105*((1/delta^3)/A)+
        105*((1/delta^4)/A) := by gcongr
    _ = 1+errorPolynomial delta/A := by unfold errorPolynomial; ring
    _ ≤ _ := by
      apply add_le_add_right
      calc
        _ ≤ errorPolynomial delta/1 := by
          apply div_le_div_of_nonneg_left (errorPolynomial_nonneg hdelta) (by norm_num) hA
        _ = _ := by rw [div_one]

theorem negative_endpoint_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ 1/(2*delta*A) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  calc
    _ ≤ Real.exp (-2*A*delta) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    _ ≤ 1/(2*delta*A) := by
      apply (le_div_iff₀ (by positivity : 0 < 2*delta*A)).mpr
      have h := Real.mul_exp_neg_le_exp_neg_one (2*delta*A)
      have h1 : Real.exp (-1) ≤ 1 := by
        exact (Real.exp_le_one_iff).mpr (by norm_num)
      rw [show -(2*delta*A) = -2*A*delta by ring] at h
      nlinarith

/-- Explicit uniform relative rate; there is no bound on the imaginary ordinate. -/
def rateConstant (delta : ℝ) : ℝ :=
  errorPolynomial delta+(1+errorPolynomial delta)/(2*delta)+
    (65536/45045+196608/5005)/(2*(4096/109395))

theorem rateConstant_nonneg {delta : ℝ} (hdelta : 0 < delta) :
    0 ≤ rateConstant delta := by
  unfold rateConstant
  have hE := errorPolynomial_nonneg hdelta
  positivity

theorem normalizationRatio_norm_deficit {A : ℝ} (hA : 1 ≤ A) :
    ‖(normalizationRatio A : ℂ)-1‖ = 1-normalizationRatio A := by
  have hr := normalizationRatio_bounds hA
  rw [← Complex.ofReal_one,← Complex.ofReal_sub,Complex.norm_real,
    Real.norm_eq_abs,abs_of_nonpos (sub_nonpos.mpr hr.2)]
  ring

theorem uniform_source_ratio_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ rateConstant delta/A := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have hE := errorPolynomial_nonneg hdelta
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
  calc
    _ ≤ ‖(normalizationRatio A : ℂ)‖*
        ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        ‖(normalizationRatio A : ℂ)-1‖ := by
      simpa only [norm_mul] using norm_add_le
        ((normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
          Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z))
        ((normalizationRatio A : ℂ)-1)
    _ ≤ ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      rw [normalizationRatio_norm_deficit hA]
      nlinarith [norm_nonneg ((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)]
    _ ≤ ‖positiveEndpoint A z-1‖+
        ‖Complex.exp (-2*(A : ℂ)*z)‖*‖reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      have ht := norm_sub_le (positiveEndpoint A z-1)
        (Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)
      rw [norm_mul] at ht
      linarith
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
      gcongr
      · exact positiveEndpoint_error hA hdelta hz
      · exact negative_endpoint_rate hA hdelta hz
      · exact reflectedEndpoint_bound hA hdelta hz
      · exact normalizationRatio_deficit hA
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A) := by
      gcongr
      nlinarith [sq_nonneg (A-1)]
    _ = _ := by unfold rateConstant; ring

theorem uniform_source_amplitude_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      ‖leadingCoefficient z‖*rateConstant delta/A := by
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) hf
  have he : scaledAmplitude A z-leadingCoefficient z =
      leadingCoefficient z*(scaledAmplitude A z/leadingCoefficient z-1) := by
    field_simp
    ring
  rw [he,norm_mul]
  calc
    _ ≤ ‖leadingCoefficient z‖*(rateConstant delta/A) := by
      gcongr
      exact uniform_source_ratio_rate hA hdelta hz hf
    _ = _ := by ring

end ContinuousResearch.ComplexBoundaryRate
```
