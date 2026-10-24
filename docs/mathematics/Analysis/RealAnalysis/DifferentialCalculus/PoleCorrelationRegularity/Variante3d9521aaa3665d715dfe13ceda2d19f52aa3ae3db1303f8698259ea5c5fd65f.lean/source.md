# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleCorrelationRegularity.Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `940c5d71709e76b0932d44688cef08e036426a44` · SHA-256 `b70e8819eb6f67d15f08c2a27aa15acab4b2038ea591dcee8fb505eb11d465ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFourierIndicatorDeriv.Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceFourierIndicatorDeriv.Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44","mathematical_subject":"Analysis.Calculus","original_sha256":"ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation

/-!
# Actual fourth-order correlation regularity

The fourth derivative of the fixed bump has nonzero endpoint traces. A compact
interval Fourier estimate retains those traces and proves its square energy is
integrable. Four preceding zero-trace integrations by parts provide the actual
degree-eight bump moment and the degree-four source-density moment.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFourierIndicatorDeriv.Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44

namespace FormalResearch.RiemannHypothesis.PoleCorrelationRegularity

open MeasureTheory Set
open scoped FourierTransform
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DilationFourierFactorization BridgeFourier
open JointPhaseScaling CorrelationSpectralLens

noncomputable section

/-- Compact-interval Fourier differentiation retains both endpoint traces. -/
theorem source_fourier_indicator_deriv (f f' : ℝ → ℝ) (a b ξ : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x) :
    sourceFourier ((Icc a b).indicator f') ξ =
      (f b : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (b : ℂ)) -
      (f a : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (a : ℂ)) -
      (Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ := by
  let w : ℝ → ℂ := fun x ↦ Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))
  let c : ℂ := Complex.I * (ξ : ℂ)
  have hw : Continuous w := by dsimp [w]; fun_prop
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := a) (b := b) (Complex.continuous_ofReal.comp hf).continuousOn hw.continuousOn
    (fun x _ ↦ (hd x).ofReal_comp) (fun x _ ↦ wave_hasDerivAt ξ x)
    ((Complex.continuous_ofReal.comp hf').intervalIntegrable a b)
    ((continuous_const.mul hw).intervalIntegrable a b)
  have heq : (∫ x in a..b, (f x : ℂ) * (c * w x)) =
      c * ∫ x in a..b, (f x : ℂ) * w x := by
    simp_rw [mul_left_comm (f _ : ℂ) c]
    rw [intervalIntegral.integral_const_mul]
  change (∫ x in a..b, (f x : ℂ) * (c * w x)) =
    (f b : ℂ) * w b - (f a : ℂ) * w a - ∫ x in a..b, (f' x : ℂ) * w x at hi
  rw [heq] at hi
  rw [sourceFourier_indicator _ _ _ _ hab, sourceFourier_indicator _ _ _ _ hab]
  change (∫ x in a..b, (f' x : ℂ) * w x) =
    (f b : ℂ) * w b - (f a : ℂ) * w a - c * ∫ x in a..b, (f x : ℂ) * w x
  linear_combination hi

/-- Zero endpoint traces give the exact first Fourier differential factor. -/
theorem source_fourier_indicator_deriv_of_endpoints_zero
    (f f' : ℝ → ℝ) (a b ξ : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x)
    (ha : f a = 0) (hb : f b = 0) :
    sourceFourier ((Icc a b).indicator f') ξ =
      -(Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ := by
  rw [source_fourier_indicator_deriv f f' a b ξ hab hf hf' hd, ha, hb]
  simp

/-- Endpoint jumps contribute a finite, explicit reciprocal-frequency budget. -/
theorem source_fourier_indicator_frequency_bound
    (f f' : ℝ → ℝ) (a b ξ : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x) :
    |ξ| * ‖sourceFourier ((Icc a b).indicator f) ξ‖ ≤
      |f b| + |f a| + ∫ x, ‖(Icc a b).indicator f' x‖ := by
  have h := source_fourier_indicator_deriv f f' a b ξ hab hf hf' hd
  have heq : (Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ =
      (f b : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (b : ℂ)) -
      (f a : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (a : ℂ)) -
      sourceFourier ((Icc a b).indicator f') ξ := by linear_combination h
  calc
    _ = ‖(Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ‖ := by
      simp [Real.norm_eq_abs]
    _ = _ := congrArg norm heq
    _ ≤ ‖(f b : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (b : ℂ))‖ +
        ‖(f a : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (a : ℂ))‖ +
        ‖sourceFourier ((Icc a b).indicator f') ξ‖ := by
      exact (norm_sub_le _ _).trans (add_le_add (norm_sub_le _ _) le_rfl)
    _ ≤ _ := by
      simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
      simp only [Complex.mul_re, Complex.I_re, Complex.ofReal_re, zero_mul,
        Complex.I_im, Complex.ofReal_im, mul_zero, sub_zero, Real.exp_zero, mul_one]
      have hf := sourceFourier_norm_le ((Icc a b).indicator f') ξ
      simp only [Real.norm_eq_abs] at hf
      linarith

/-- A continuous polynomial on a compact interval has integrable Fourier-square energy,
including nonzero endpoint values of its zero extension. -/
theorem indicator_fourier_norm_sq_integrable (f f' : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x) :
    Integrable (fun ξ ↦ Complex.normSq (sourceFourier ((Icc a b).indicator f) ξ)) := by
  let B := ∫ x, ‖(Icc a b).indicator f x‖
  let D := |f b| + |f a| + ∫ x, ‖(Icc a b).indicator f' x‖
  have hm : AEStronglyMeasurable
      (fun ξ ↦ Complex.normSq (sourceFourier ((Icc a b).indicator f) ξ)) :=
    (Complex.continuous_normSq.comp
      (sourceFourier_continuous (integrable_zeroExtension f hf a b))).aestronglyMeasurable
  apply (integrable_inv_one_add_sq.const_mul (B ^ 2 + D ^ 2)).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hn := norm_nonneg (sourceFourier ((Icc a b).indicator f) ξ)
  have hb := sourceFourier_norm_le ((Icc a b).indicator f) ξ
  have hd' := source_fourier_indicator_frequency_bound f f' a b ξ hab hf hf' hd
  have hb0 : 0 ≤ B := integral_nonneg (fun x ↦ norm_nonneg _)
  have hd0 : 0 ≤ D := by
    dsimp [D]
    exact add_nonneg (add_nonneg (abs_nonneg _) (abs_nonneg _))
      (integral_nonneg (fun x ↦ abs_nonneg _))
  have hb2 := (sq_le_sq₀ hn hb0).2 hb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd0).2 hd'
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- The fixed bump's fourth interior derivative, whose endpoints need not vanish. -/
def fourthBumpInterior (x : ℝ) : ℝ := 144 - 1440 * x ^ 2 + 1680 * x ^ 4

/-- Its ordinary fifth interior derivative controls the retained endpoint Fourier budget. -/
def fifthBumpInterior (x : ℝ) : ℝ := -2880 * x + 6720 * x ^ 3

/-- The third polynomial trace differentiates to the actual fourth interior polynomial. -/
theorem third_bump_interior_has_deriv_at (x : ℝ) :
    HasDerivAt (thirdInterior 1) (fourthBumpInterior x) x := by
  have h := ((((hasDerivAt_id x).const_mul 144).sub
    (((hasDerivAt_id x).pow 3).const_mul 480)).add
      (((hasDerivAt_id x).pow 5).const_mul 336))
  convert h using 1 <;> try rfl
  · funext y
    norm_num [thirdInterior]
  · unfold fourthBumpInterior
    simp only [id_eq]
    ring

/-- Differentiation of the fourth interior polynomial is entirely classical. -/
theorem fourth_bump_interior_has_deriv_at (x : ℝ) :
    HasDerivAt fourthBumpInterior (fifthBumpInterior x) x := by
  have h := (((hasDerivAt_const x (144 : ℝ)).sub
    (((hasDerivAt_id x).pow 2).const_mul 1440)).add
      (((hasDerivAt_id x).pow 4).const_mul 1680))
  convert h using 1 <;> try rfl
  unfold fifthBumpInterior
  simp only [id_eq]
  ring

/-- Four zero-trace differentiations connect the discontinuous fourth derivative to the bump. -/
theorem fourth_bump_interior_fourier (ξ : ℝ) :
    sourceFourier ((Icc (-1 : ℝ) 1).indicator fourthBumpInterior) ξ =
      (ξ : ℂ) ^ 4 * sourceFourier sourceBump ξ := by
  have h0 := source_fourier_indicator_deriv_of_endpoints_zero
    (bumpInterior 1) (firstInterior 1) (-1) 1 ξ (by norm_num)
    (bumpInterior_continuous 1) (firstInterior_continuous 1) (bumpInterior_hasDerivAt 1)
    ((bumpInterior_endpoints 1 (by norm_num)).1)
    ((bumpInterior_endpoints 1 (by norm_num)).2)
  have h1 := source_fourier_indicator_deriv_of_endpoints_zero
    (firstInterior 1) (secondInterior 1) (-1) 1 ξ (by norm_num)
    (firstInterior_continuous 1) (secondInterior_continuous 1) (firstInterior_hasDerivAt 1)
    ((firstInterior_endpoints 1 (by norm_num)).1)
    ((firstInterior_endpoints 1 (by norm_num)).2)
  have h2 := source_fourier_indicator_deriv_of_endpoints_zero
    (secondInterior 1) (thirdInterior 1) (-1) 1 ξ (by norm_num)
    (secondInterior_continuous 1) (by unfold thirdInterior; fun_prop)
    (secondInterior_hasDerivAt 1)
    ((secondInterior_endpoints 1 (by norm_num)).1)
    ((secondInterior_endpoints 1 (by norm_num)).2)
  have h3 := source_fourier_indicator_deriv_of_endpoints_zero
    (thirdInterior 1) fourthBumpInterior (-1) 1 ξ (by norm_num)
    (by unfold thirdInterior; fun_prop) (by unfold fourthBumpInterior; fun_prop)
    third_bump_interior_has_deriv_at
    ((thirdInterior_endpoints 1 (by norm_num)).1)
    ((thirdInterior_endpoints 1 (by norm_num)).2)
  have hb : (Icc (-1 : ℝ) 1).indicator (bumpInterior 1) = sourceBump := by
    rw [← scaledBump_eq_indicator 1 (by norm_num)]
    funext x
    simp [scaledBump]
  rw [hb] at h0
  rw [h3, h2, h1, h0]
  calc
    _ = (Complex.I * Complex.I) ^ 2 * (ξ : ℂ) ^ 4 * sourceFourier sourceBump ξ := by ring
    _ = _ := by rw [Complex.I_mul_I]; ring

/-- The actual fixed bump has an integrable degree-eight Fourier moment. -/
theorem bump_eighth_moment_integrable : Integrable (bumpMomentDensity 4) := by
  have hi := indicator_fourier_norm_sq_integrable fourthBumpInterior fifthBumpInterior
    (-1) 1 (by norm_num) (by unfold fourthBumpInterior; fun_prop)
    (by unfold fifthBumpInterior; fun_prop) fourth_bump_interior_has_deriv_at
  convert hi.div_const (2 * Real.pi) using 1
  funext u
  rw [fourth_bump_interior_fourier, Complex.normSq_mul, map_pow,
    Complex.normSq_ofReal]
  unfold bumpMomentDensity bumpDensity
  ring

/-- Every lower absolute-frequency moment is controlled by mass plus the admitted top moment. -/
theorem integrable_lower_moment (f : ℝ → ℝ) (N n : ℕ) (hn : n ≤ N)
    (hf : Integrable f) (hc : Continuous f)
    (hN : Integrable (fun u ↦ ‖u‖ ^ N * ‖f u‖)) :
    Integrable (fun u ↦ ‖u‖ ^ n * ‖f u‖) := by
  apply (hf.norm.add hN).mono' (by fun_prop)
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  have hp : ‖u‖ ^ n ≤ 1 + ‖u‖ ^ N := by
    by_cases hu : ‖u‖ ≤ 1
    · have h : ‖u‖ ^ n ≤ 1 := pow_le_one₀ (norm_nonneg u) hu
      linarith [pow_nonneg (norm_nonneg u) N]
    · have h := pow_le_pow_right₀ (le_of_lt (lt_of_not_ge hu)) hn
      linarith
  calc
    _ ≤ (1 + ‖u‖ ^ N) * ‖f u‖ := mul_le_mul_of_nonneg_right hp (norm_nonneg _)
    _ = _ := by change _ = ‖f u‖ + ‖u‖ ^ N * ‖f u‖; ring

/-- The actual bump admits all five even spectral moments needed through degree eight. -/
theorem bump_moment_density_integrable_through_four (k : ℕ) (hk : k ≤ 4) :
    Integrable (bumpMomentDensity k) := by
  have hc : Continuous bumpDensity :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous source_bump_integrable)).div_const _
  have h0 : Integrable bumpDensity := by
    convert bump_moment_density_integrable 0 (by norm_num) using 1
    funext u
    simp [bumpMomentDensity]
  have hd (u : ℝ) : 0 ≤ bumpDensity u := by
    simpa [bumpMomentDensity] using bump_moment_density_nonneg 0 u
  have h8 : Integrable (fun u : ℝ ↦ ‖u‖ ^ 8 * ‖bumpDensity u‖) := by
    convert bump_eighth_moment_integrable using 1
    funext u
    simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ u ^ 8)]
  have hi := integrable_lower_moment bumpDensity 8 (2 * k) (by omega) h0 hc h8
  convert hi using 1
  funext u
  simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow, pow_mul]
  rw [abs_of_nonneg (pow_nonneg (sq_nonneg u) k)]

/-- The exact three-component source density admits a genuine fourth moment. -/
theorem rescaled_density_fourth_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun u ↦ u ^ 4 * rescaledDensity A u) := by
  have hi := (((bump_moment_density_integrable_through_four 2 (by omega)).div_const 16).add
    ((bump_moment_density_integrable_through_four 3 (by omega)).div_const (2 * A ^ 2))).add
      ((bump_moment_density_integrable_through_four 4 (by omega)).div_const (A ^ 4))
  convert hi.div_const (sourceNormalization A) using 1
  funext u
  change u ^ 4 * rescaledDensity A u =
    ((bumpMomentDensity 2 u / 16 + bumpMomentDensity 3 u / (2 * A ^ 2)) +
      bumpMomentDensity 4 u / A ^ 4) / sourceNormalization A
  rw [rescaled_density_eq_three_moments A u hA]
  unfold bumpMomentDensity
  ring

/-- The actual physical-frequency source density has an integrable fourth moment. -/
theorem spectral_density_fourth_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ ξ ^ 4 * spectralDensity A ξ) := by
  have hne : A ≠ 0 := by linarith
  have hi := ((rescaled_density_fourth_moment_integrable A hA).div_const (A ^ 3)).comp_mul_left' hne
  convert hi using 1
  funext ξ
  unfold rescaledDensity
  rw [show A * ξ / A = ξ by field_simp]
  field_simp

/-- Taking the real part of the source Fourier transform gives its cosine observation. -/
theorem source_fourier_re_eq_cos_integral (f : ℝ → ℝ) (hf : Integrable f) (t : ℝ) :
    (sourceFourier f t).re = ∫ u, Real.cos (u * t) * f u := by
  have hi : Integrable (fun u : ℝ ↦ (f u : ℂ) *
      Complex.exp (Complex.I * (t : ℂ) * (u : ℂ))) := by
    apply (Complex.ofRealCLM.integrable_comp hf).mul_bdd (c := 1)
    · exact (by fun_prop : Continuous (fun u : ℝ ↦
        Complex.exp (Complex.I * (t : ℂ) * (u : ℂ)))).aestronglyMeasurable
    · filter_upwards [] with u
      simp [Complex.norm_exp]
  unfold sourceFourier
  trans ∫ u : ℝ, ((f u : ℂ) *
    Complex.exp (Complex.I * (t : ℂ) * (u : ℂ))).re
  · exact (integral_re hi).symm
  apply integral_congr_ae
  filter_upwards [] with u
  simp [Complex.mul_re, Complex.exp_re, mul_comm]

/-- Native Fourier regularity applies to real cosine observations with genuine top moments. -/
theorem cosine_integral_cont_diff (f : ℝ → ℝ) (N : ℕ)
    (hf : Integrable f) (hc : Continuous f)
    (hN : Integrable (fun u ↦ ‖u‖ ^ N * ‖f u‖)) :
    ContDiff ℝ N (fun t ↦ ∫ u, Real.cos (u * t) * f u) := by
  have hF : ContDiff ℝ (N : ℕ∞) (𝓕 (fun u ↦ (f u : ℂ))) := by
    apply Real.contDiff_fourier
    intro n hn
    have hn' : n ≤ N := by exact_mod_cast hn
    simpa only [Complex.norm_real] using integrable_lower_moment f N n hn' hf hc hN
  have hsource : ContDiff ℝ N (sourceFourier f) := by
    have h := hF.comp (by fun_prop : ContDiff ℝ (N : ℕ∞)
      (fun t : ℝ ↦ -t / (2 * Real.pi)))
    convert h using 1 <;> try simp
    funext t
    exact sourceFourier_eq_fourier f t
  have h := Complex.reCLM.contDiff.comp hsource
  convert h using 1
  funext t
  exact (source_fourier_re_eq_cos_integral f hf t).symm

/-- The immutable source correlation has the actual fourth-order regularity needed by Green. -/
theorem source_correlation_cont_diff_four (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  have hc : Continuous (spectralDensity A) := by
    unfold spectralDensity
    exact (Complex.continuous_normSq.comp
      (sourceFourier_continuous (normalizedTest_integrable A (by linarith)))).div_const _
  have hm : Integrable (fun ξ : ℝ ↦ ‖ξ‖ ^ 4 * ‖spectralDensity A ξ‖) := by
    convert spectral_density_fourth_moment_integrable A hA using 1
    funext ξ
    simp only [Real.norm_eq_abs, abs_of_nonneg (spectralDensity_nonneg A ξ), ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ ξ ^ 4)]
  have h := cosine_integral_cont_diff (spectralDensity A) 4
    (spectralDensity_integrable A hA) hc hm
  convert h using 1 <;> try rfl
  funext t
  exact sourceCorrelation_eq_integral_cos A t hA

/-- The true fixed-bump base correlation is eighth-order smooth despite the bump boundary. -/
theorem base_correlation_cont_diff_eight (A : ℝ) :
    ContDiff ℝ 8 (PoleDifferentialCorrelation.baseCorrelation A) := by
  have hc : Continuous bumpDensity :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous source_bump_integrable)).div_const _
  have hd (u : ℝ) : 0 ≤ bumpDensity u := by
    simpa [bumpMomentDensity] using bump_moment_density_nonneg 0 u
  have hi : Integrable bumpDensity := by
    convert bump_moment_density_integrable 0 (by norm_num) using 1
    funext u
    simp [bumpMomentDensity]
  have hm : Integrable (fun u : ℝ ↦ ‖u‖ ^ 8 * ‖bumpDensity u‖) := by
    convert bump_eighth_moment_integrable using 1
    funext u
    simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ u ^ 8)]
  have h := (cosine_integral_cont_diff bumpDensity 8 hi hc hm).comp
    (by fun_prop : ContDiff ℝ (8 : ℕ) (fun t : ℝ ↦ t / A))
  convert h using 1 <;> try rfl
  funext t
  simp [PoleDifferentialCorrelation.baseCorrelation, fixedKernel, bumpMomentDensity]

end
end FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
```
