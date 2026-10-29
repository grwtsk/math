-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InversePowerBoundSharp.Variant9c393f1655602d7615973872631fd7b4060bffc4ffab4dcfe5e7fc916c810dbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c393f1655602d7615973872631fd7b4060bffc4ffab4dcfe5e7fc916c810dbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InversePowerBoundSharp.Variant9c393f1655602d7615973872631fd7b4060bffc4ffab4dcfe5e7fc916c810dbf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9c393f1655602d7615973872631fd7b4060bffc4ffab4dcfe5e7fc916c810dbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/complex_paths/attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ComplexBoundaryRate

/-! Actual two-endpoint source bounds and admissible variable complex paths.
grwtsk contributors's originating direction; OpenAI Codex scratch construction.
No zero-set occurrence or signed arithmetic budget is inferred. -/

namespace GRWTSK.Topology.GeneralTopology.InversePowerBoundSharp.Variant9c393f1655602d7615973872631fd7b4060bffc4ffab4dcfe5e7fc916c810dbf

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryPaths
open Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ContinuousResearch.ComplexBoundaryAsymptotic
open ContinuousResearch.ComplexBoundaryRate

/-- Inverse endpoint powers before any A^-n to A^-1 simplification. -/
theorem inverse_power_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ 1/(A*delta)^n := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  gcongr

theorem positiveEndpoint_error_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖positiveEndpoint A z-1‖ ≤ errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
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
    _ ≤ 10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem reflectedEndpoint_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖reflectedEndpoint A z‖ ≤ 1+errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
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
    _ ≤ 1+10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem negative_endpoint_envelope {A delta : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ Real.exp (-2*A*delta) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  apply Real.exp_le_exp.mpr
  nlinarith

theorem actual_normalization_deficit_544 {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤ 544/A^2 := by
  convert normalizationRatio_deficit hA using 1
  ring

/-- The actual unreduced error bound; delta may vary with A in later consumers. -/
def sharpError (A delta : ℝ) : ℝ :=
  errorPolynomial (A*delta)+Real.exp (-2*A*delta)*(1+errorPolynomial (A*delta))+544/A^2

theorem actual_source_ratio_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
  unfold sharpError
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
    _ ≤ _ := by
      gcongr
      · exact positiveEndpoint_error_sharp hA hdelta hz
      · exact negative_endpoint_envelope hA hz
      · exact reflectedEndpoint_bound_sharp hA hdelta hz
      · exact actual_normalization_deficit_544 hA

theorem sharpError_nonneg {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta) :
    0 ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hE := errorPolynomial_nonneg (mul_pos hp hdelta)
  unfold sharpError
  positivity

/-- Polynomial endpoint errors vanish whenever the product A*delta(A) grows. -/
theorem errorPolynomial_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => errorPolynomial (A*delta A)) atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ => (A*delta A)⁻¹) atTop (𝓝 0) :=
    tendsto_inv_atTop_zero.comp hprod
  have ht := (((hi.const_mul 10).add ((hi.pow 2).const_mul 45)).add
    ((hi.pow 3).const_mul 105)).add ((hi.pow 4).const_mul 105)
  convert ht using 1
  · ext A
    unfold errorPolynomial
    ring
  · norm_num

theorem negative_endpoint_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*delta A)) atTop (𝓝 0) := by
  have h2 : Tendsto (fun A : ℝ => 2*(A*delta A)) atTop atTop :=
    Tendsto.const_mul_atTop (by norm_num : (0 : ℝ)<2) hprod
  convert Real.tendsto_exp_neg_atTop_nhds_zero.comp h2 using 1
  ext A
  congr 1
  ring

/-- Genuine all-real path bound; no continuity or monotonicity of delta is assumed. -/
theorem sharpError_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => sharpError A (delta A)) atTop (𝓝 0) := by
  have hE := errorPolynomial_path_tendsto delta hprod
  have hx := negative_endpoint_path_tendsto delta hprod
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hN : Tendsto (fun A : ℝ => 544/A^2) atTop (𝓝 0) := by
    simpa [div_eq_mul_inv,inv_pow] using (hi.pow 2).const_mul 544
  have h1 : Tendsto (fun _ : ℝ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have ht := (hE.add (hx.mul (h1.add hE))).add hN
  simpa [sharpError] using ht

/-- Actual source ratio along admissible real A paths, with the pole filter retained. -/
theorem actual_source_ratio_path_tendsto (delta : ℝ → ℝ) (z : ℝ → ℂ)
    (hdelta : ∀ᶠ A : ℝ in atTop, 0 < delta A)
    (hz : ∀ᶠ A : ℝ in atTop, delta A ≤ (z A).re)
    (hf : ∀ᶠ A : ℝ in atTop, (z A)^2-1/4 ≠ 0)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => scaledAmplitude A (z A)/leadingCoefficient (z A))
      atTop (𝓝 1) := by
  have hb : ∀ᶠ A : ℝ in atTop,
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖ ≤ sharpError A (delta A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ),hdelta,hz,hf] with A hA hd hz hf
    exact actual_source_ratio_sharp hA hd hz hf
  have ht : Tendsto (fun A : ℝ =>
      ‖scaledAmplitude A (z A)/leadingCoefficient (z A)-1‖) atTop (𝓝 0) :=
    squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _)) hb
      (sharpError_path_tendsto delta hprod)
  have hc : Tendsto (fun A : ℝ =>
      scaledAmplitude A (z A)/leadingCoefficient (z A)-1) atTop (𝓝 0) :=
    tendsto_zero_iff_norm_tendsto_zero.mpr ht
  simpa only [zero_add,sub_add_cancel] using hc.add_const 1

theorem boundary_ratio_exact {A : ℝ} (hA : 1 ≤ A) {lambda : ℂ}
    (hlambda : lambda ≠ 0) :
    ContinuousResearch.SourceBoundaryTransform.boundaryTransform A lambda/
      (-lambda*leadingCoefficient (lambda+1/2)^2) =
      (scaledAmplitude A (lambda+1/2)/leadingCoefficient (lambda+1/2))^2 := by
  rw [boundary_eq_scaledAmplitude hA]
  field_simp

/-- Relative boundary transport uses an independently defined actual finite W. -/
theorem actual_boundary_ratio_path_tendsto (delta : ℝ → ℝ) (lambda : ℝ → ℂ)
    (hdelta : ∀ᶠ A : ℝ in atTop, 0 < delta A)
    (hz : ∀ᶠ A : ℝ in atTop, delta A ≤ (lambda A+1/2).re)
    (hf : ∀ᶠ A : ℝ in atTop, (lambda A+1/2)^2-1/4 ≠ 0)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ =>
      ContinuousResearch.SourceBoundaryTransform.boundaryTransform A (lambda A)/
        (-lambda A*leadingCoefficient (lambda A+1/2)^2)) atTop (𝓝 1) := by
  have ht := actual_source_ratio_path_tendsto delta (fun A => lambda A+1/2)
    hdelta hz hf hprod
  have he : (fun A : ℝ =>
      ContinuousResearch.SourceBoundaryTransform.boundaryTransform A (lambda A)/
        (-lambda A*leadingCoefficient (lambda A+1/2)^2)) =ᶠ[atTop]
      (fun A : ℝ => (scaledAmplitude A (lambda A+1/2)/leadingCoefficient (lambda A+1/2))^2) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ),hf] with A hA hf
    have hl : lambda A ≠ 0 := by
      intro h
      apply hf
      rw [h]
      norm_num
    exact boundary_ratio_exact hA hl
  apply Tendsto.congr' he.symm
  simpa using ht.pow 2

/-- An absolute coefficient envelope needs no imaginary-ordinate cap. -/
def leadingEnvelope (delta : ℝ) : ℝ :=
  (384/Real.sqrt (4096/109395 : ℝ))*(1/delta^3+(1/4)/delta^5)

theorem leadingCoefficient_half_plane_bound {delta : ℝ} (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖leadingCoefficient z‖ ≤ leadingEnvelope delta := by
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  have hs : 0 < Real.sqrt (4096/109395 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have he : leadingCoefficient z =
      ((384/Real.sqrt (4096/109395 : ℝ) : ℝ) : ℂ)*
        ((1 : ℂ)/z^3-(1/4)/z^5) := by
    unfold leadingCoefficient
    push_cast
    field_simp
    ring
  rw [he,norm_mul,Complex.norm_real,Real.norm_eq_abs,
    abs_of_pos (div_pos (by norm_num) hs)]
  unfold leadingEnvelope
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  calc
    _ ≤ ‖(1 : ℂ)/z^3‖+‖(1/4 : ℂ)/z^5‖ := norm_sub_le _ _
    _ = 1/‖z‖^3+(1/4)/‖z‖^5 := by norm_num [norm_div,norm_pow]
    _ ≤ _ := by gcongr

theorem half_plane_absolute_amplitude_rate {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      leadingEnvelope delta*rateConstant delta/A := by
  have hK := rateConstant_nonneg hdelta
  calc
    _ ≤ ‖leadingCoefficient z‖*rateConstant delta/A :=
      uniform_source_amplitude_rate_all hA hdelta hz
    _ ≤ _ := by
      gcongr
      exact leadingCoefficient_half_plane_bound hdelta hz

end ContinuousResearch.ComplexBoundaryPaths
