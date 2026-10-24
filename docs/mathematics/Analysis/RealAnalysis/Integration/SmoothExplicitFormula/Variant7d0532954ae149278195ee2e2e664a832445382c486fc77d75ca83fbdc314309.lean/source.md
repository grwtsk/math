# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SmoothExplicitFormula.Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b425f973f9833ebb51b75823e783d29be23875f7` · SHA-256 `ed29b18b47e7115480d4f0321bc4bbd5f1b36fda510da9d6ffe968910b40c8cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PolynomialNormLe.Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PolynomialNormLe.Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695","mathematical_subject":"Analysis.Integration","original_sha256":"627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/ZeroSide/SmoothExplicitFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Normed.Group.InfiniteSum

/-!
# Z2.6 smooth explicit-formula boundary

This module fixes the exact source-side proposition required at the smooth
explicit-formula stage of RH B3.2.  It proves all repository-local analytic
inputs for the prescribed mollifications:

* the smooth autocorrelation is C² and compactly supported in the doubled
  common support window;
* its positive-exponent Fourier/Laplace transform is the ordinary complex
  square of the smoothed source transform at every complex argument;
* both source pole evaluations vanish separately;
* the full analytic-multiplicity occurrence family of ordinary squares is
  absolutely summable.

The remaining proposition `SmoothExplicitFormulaObligation` is intentionally
a target, not an axiom or claimed proof.  It is the exact place where a proved
Weil explicit formula must be specialized to this source.  No RH premise,
positivity premise, or lower estimate is introduced.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PolynomialNormLe.Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula

open MeasureTheory Set Filter
open scoped Convolution ContDiff Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject ZeroSmoothing ZeroSmoothingMultiplier ZeroSmoothingTransform

noncomputable section

private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

private def decayConstant (A : ℝ) : ℝ := 408576 * A ^ 4 * Real.exp (A / 2)

private theorem transform_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤ decayConstant A / ‖z‖ ^ 3 := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    nlinarith [hzre.2]
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith [hzre.1]
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale : 1 ≤ A ^ (17 / 2 : ℝ) := Real.one_le_rpow hA (by norm_num)
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (1 * ‖z‖ ^ 9)) *
        (Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
        _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
            ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
          norm_sub_le _ _
        _ ≤ _ := by
          simp only [norm_mul]
          gcongr
          simpa only [neg_mul] using hn
    _ = decayConstant A / ‖z‖ ^ 3 := by
      unfold decayConstant
      field_simp
      ring

private theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤
      (64 * decayConstant A ^ 2) * (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hr : 0 < ‖z‖ := by linarith
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow : (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by gcongr; linarith
      _ = _ := by ring
  have hinv : 1 / ‖z‖ ^ 6 ≤ 64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  calc
    _ ≤ (decayConstant A / ‖z‖ ^ 3) ^ 2 := by simpa only [norm_pow] using hs
    _ = decayConstant A ^ 2 * (1 / ‖z‖ ^ 6) := by ring
    _ ≤ decayConstant A ^ 2 * (64 / (1 + ‖z‖) ^ 6) :=
      mul_le_mul_of_nonneg_left hinv (sq_nonneg _)
    _ = _ := by
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num, Real.rpow_neg hr1.le,
        Real.rpow_natCast]
      ring

private theorem eventually_one_le_shifted_norm :
    ∀ᶠ o : ZeroOccurrence in cofinite, 1 ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  have hfinite : Finite (ZeroSummability.ZeroShell 0) := ZeroSummability.zeroShell_finite 0
  have hf : {o : ZeroOccurrence | ZeroSummability.shellIndex o = 0}.Finite :=
    Set.finite_coe_iff.mp hfinite
  simpa only [not_le, ZeroSummability.shellIndex, Nat.floor_eq_zero] using hf

private theorem source_transform_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖bilateralTransform A (shiftedValue o) ^ 2‖) := by
  have hsum : Summable (fun o : ZeroOccurrence ↦
      (64 * decayConstant A ^ 2) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) :=
    ZeroShellCount.zero_summability.mul_left _
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  simpa only [norm_norm] using transform_square_norm_le A hA (shiftedValue o)
    ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩ ho

private theorem smoothed_square_norm_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (o : ZeroOccurrence) :
    ‖smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2‖ ≤
      Real.exp ε * ‖bilateralTransform A (shiftedValue o) ^ 2‖ := by
  rw [smoothed_bilateral_transform A ε hA hε, mul_pow, norm_mul,
    norm_pow (multiplier ε hε (shiftedValue o)) 2]
  have hm := pow_le_pow_left₀ (norm_nonneg _)
    (multiplier_norm_le_zeroOccurrence ε hε o) 2
  have he : Real.exp (ε / 2) ^ 2 = Real.exp ε := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he] at hm
  calc
    _ ≤ ‖bilateralTransform A (shiftedValue o) ^ 2‖ * Real.exp ε :=
      mul_le_mul_of_nonneg_left hm (norm_nonneg _)
    _ = _ := mul_comm _ _

/-- Every prescribed positive-scale smoothing has an absolutely summable
ordinary-square zero-occurrence family. -/
theorem smoothed_squares_summable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Summable (fun o : ZeroOccurrence ↦
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2) := by
  have hnorm : Summable (fun o : ZeroOccurrence ↦
      ‖smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2‖) := by
    apply ((source_transform_square_norms_summable A hA).mul_left
      (Real.exp ε)).of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    exact smoothed_square_norm_le A ε hA hε
  exact hnorm.of_norm

private def correlation (f : ℝ → ℝ) (t : ℝ) : ℝ := ∫ x, f x * f (x - t)

private def bilateral (f : ℝ → ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (f x : ℂ) * Complex.exp (z * (x : ℂ))

private theorem weighted_integrable (f : ℝ → ℝ) (hf : Continuous f)
    (hc : HasCompactSupport f) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hcont : Continuous (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp hf).mul (by fun_prop)
  have hsupport : HasCompactSupport (fun x : ℝ ↦ (f x : ℂ)) :=
    hc.comp_left (g := Complex.ofReal) (by simp)
  exact hcont.integrable_of_hasCompactSupport hsupport.mul_right

private theorem correlation_eq_convolution (f : ℝ → ℝ) (he : Function.Even f) :
    correlation f = f ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] f := by
  funext t
  change (∫ x, f x * f (x - t)) = ∫ x, f x * f (t - x)
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, he]

private theorem correlation_even (f : ℝ → ℝ) (he : Function.Even f) :
    Function.Even (correlation f) := by
  rw [correlation_eq_convolution f he]
  intro t
  exact convolution_neg_of_neg_eq (ContinuousLinearMap.lsmul ℝ ℝ)
    (Filter.Eventually.of_forall he) (Filter.Eventually.of_forall he)

private theorem correlation_contDiff (f : ℝ → ℝ) (hf : ContDiff ℝ ∞ f)
    (hc : HasCompactSupport f) (he : Function.Even f) : ContDiff ℝ ∞ (correlation f) := by
  rw [correlation_eq_convolution f he]
  exact hc.contDiff_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ) hf
    (hf.continuous.integrable_of_hasCompactSupport hc).locallyIntegrable

private theorem correlation_support_subset (f : ℝ → ℝ) (he : Function.Even f) (B : ℝ)
    (hs : Function.support f ⊆ Icc (-B) B) :
    Function.support (correlation f) ⊆ Icc (-(2 * B)) (2 * B) := by
  rw [correlation_eq_convolution f he]
  intro t ht
  obtain ⟨x, hx, y, hy, rfl⟩ :=
    support_convolution_subset (ContinuousLinearMap.lsmul ℝ ℝ) ht
  have hx' := hs hx
  have hy' := hs hy
  constructor <;> linarith [hx'.1, hx'.2, hy'.1, hy'.2]

private theorem weighted_correlation_eq_convolution (f : ℝ → ℝ) (he : Function.Even f)
    (z : ℂ) (t : ℝ) :
    (correlation f t : ℂ) * Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) ⋆[
        ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ)))) t := by
  rw [correlation, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, he]
    push_cast
    have hexp : Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ))) =
        Complex.exp (z * (t : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (f x : ℂ) * (f (t - x) : ℂ) *
          (Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ)))) := by
        rw [hexp]
      _ = _ := by ring

private theorem weighted_product_integrable (f : ℝ → ℝ) (hf : Continuous f)
    (hc : HasCompactSupport f) (z : ℂ) :
    Integrable (fun p : ℝ × ℝ ↦
      ((f p.2 : ℂ) * Complex.exp (z * (p.2 : ℂ))) *
      ((f (p.1 - p.2) : ℂ) * Complex.exp (z * ((p.1 - p.2 : ℝ) : ℂ))))
      (volume.prod volume) :=
  (weighted_integrable f hf hc z).convolution_integrand (ContinuousLinearMap.mul ℂ ℂ)
    (weighted_integrable f hf hc z)

private theorem bilateral_correlation (f : ℝ → ℝ) (hf : Continuous f)
    (hc : HasCompactSupport f) (he : Function.Even f) (z : ℂ) :
    bilateral (correlation f) z = bilateral f z ^ 2 := by
  unfold bilateral
  simp_rw [weighted_correlation_eq_convolution f he z]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (weighted_integrable f hf hc z) (weighted_integrable f hf hc z)]
  exact (pow_two (∫ x : ℝ, (f x : ℂ) * Complex.exp (z * (x : ℂ)))).symm

/-- Complex autocorrelation supplied to the smooth explicit formula. -/
def smoothKernel (A ε : ℝ) (hε : 0 < ε) (t : ℝ) : ℂ :=
  correlation (smoothedTest A ε hε) t

/-- The source-sign angular transform of the smooth autocorrelation. -/
def smoothKernelFT (A ε : ℝ) (hε : 0 < ε) (w : ℂ) : ℂ :=
  ∫ t : ℝ, smoothKernel A ε hε t * Complex.exp (Complex.I * w * (t : ℂ))

/-- The smooth autocorrelation transform is an ordinary complex square at every
complex argument.  No modulus square is substituted off the real Fourier axis. -/
theorem smoothKernelFT_eq_square (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (w : ℂ) :
    smoothKernelFT A ε hε w =
      smoothedBilateralTransform A ε hε (Complex.I * w) ^ 2 := by
  change bilateral (correlation (smoothedTest A ε hε)) (Complex.I * w) =
    smoothedBilateralTransform A ε hε (Complex.I * w) ^ 2
  rw [bilateral_correlation (smoothedTest A ε hε)
    (smoothedTest_contDiff A ε hA hε).continuous
    (smoothedTest_hasCompactSupport A ε hA hε)
    (smoothedTest_even A ε hA hε)]
  rfl

/-- Dividing the external spectral argument by `i` recovers the full shifted
zero, not merely its imaginary part. -/
theorem smoothKernelFT_shifted (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (z : ℂ) :
    smoothKernelFT A ε hε (z / Complex.I) =
      smoothedBilateralTransform A ε hε z ^ 2 := by
  rw [smoothKernelFT_eq_square A ε hA hε]
  have hI : Complex.I * (z / Complex.I) = z := by
    field_simp
  rw [hI]

/-- Both original pole moments vanish before any explicit-formula specialization. -/
theorem smoothed_pole_bilateral (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    smoothedBilateralTransform A ε hε (1 / 2) = 0 ∧
    smoothedBilateralTransform A ε hε (-1 / 2) = 0 := by
  have hp : bilateralTransform A (1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  have hn : bilateralTransform A (-1 / 2) = 0 := by
    rw [ZeroTransform.actual_transform A (by linarith) (-1 / 2) (by norm_num)]
    norm_num [dividedTransform]
  constructor
  · rw [smoothed_bilateral_transform A ε hA hε, hp, zero_mul]
  · rw [smoothed_bilateral_transform A ε hA hε, hn, zero_mul]

/-- Exact Z2.6 target: the prescribed smooth source, with the common support
radius `A + 1`, has its convergent occurrence sum equal to the unchanged
source arithmetic form.  This proposition is not asserted below. -/
def SmoothExplicitFormulaObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ (ε : ℝ) (hε : 0 < ε), ε ≤ 1 →
    HasSum (fun o : ZeroOccurrence ↦
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2)
      (BridgeAdmissibility.realArithmeticForm (A + 1)
        (smoothedTest A ε hε) : ℂ)

/-- All source-side analytic hypotheses needed by Z2.6 are proved.  The only
remaining Z2.6 step is the actual Weil explicit-formula equality represented by
`SmoothExplicitFormulaObligation`. -/
theorem smooth_kernel_admission (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) :
    ContDiff ℝ 2 (smoothKernel A ε hε) ∧
    HasCompactSupport (smoothKernel A ε hε) ∧
    Function.support (smoothKernel A ε hε) ⊆
      Icc (-(2 * (A + 1))) (2 * (A + 1)) ∧
    Function.Even (smoothKernel A ε hε) ∧
    (∀ z : ℂ, smoothKernelFT A ε hε (z / Complex.I) =
      smoothedBilateralTransform A ε hε z ^ 2) ∧
    Summable (fun o : ZeroOccurrence ↦
      smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2) := by
  let f := smoothedTest A ε hε
  have hf : ContDiff ℝ ∞ f := smoothedTest_contDiff A ε hA hε
  have hfc : HasCompactSupport f := smoothedTest_hasCompactSupport A ε hA hε
  have hfe : Function.Even f := smoothedTest_even A ε hA hε
  have hfs : Function.support f ⊆ Icc (-(A + 1)) (A + 1) := by
    intro x hx
    have hs := smoothedTest_support_subset A ε hA hε hx
    constructor <;> linarith [hs.1, hs.2]
  have hcorr : ContDiff ℝ ∞ (correlation f) := correlation_contDiff f hf hfc hfe
  have hsupport : Function.support (correlation f) ⊆
      Icc (-(2 * (A + 1))) (2 * (A + 1)) :=
    correlation_support_subset f hfe (A + 1) hfs
  have hkcompact : HasCompactSupport (smoothKernel A ε hε) := by
    apply (isCompact_Icc : IsCompact (Icc (-(2 * (A + 1))) (2 * (A + 1)))).of_isClosed_subset
      isClosed_closure
    apply closure_minimal _ isClosed_Icc
    intro t ht
    apply hsupport
    intro hz
    exact ht (by change ((correlation f t : ℝ) : ℂ) = 0; rw [hz]; rfl)
  refine ⟨?_, hkcompact, ?_, ?_, ?_, smoothed_squares_summable A ε hA hε⟩
  · exact (Complex.ofRealCLM.contDiff.comp hcorr).of_le
      (ENat.natCast_le_of_coe_top_le_withTop le_rfl 2)
  · intro t ht
    apply hsupport
    intro hz
    exact ht (by change ((correlation f t : ℝ) : ℂ) = 0; rw [hz]; rfl)
  · intro t
    change ((correlation f (-t) : ℝ) : ℂ) = ((correlation f t : ℝ) : ℂ)
    rw [correlation_even f hfe]
  · exact fun z ↦ smoothKernelFT_shifted A ε hA hε z

end
end FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
```
