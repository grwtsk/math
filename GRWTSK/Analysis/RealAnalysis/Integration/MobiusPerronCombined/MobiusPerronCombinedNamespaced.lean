-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.KernelIntegrandIntegrableIoiZero.Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.KernelIntegrandIntegrableIoiZero.Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1","mathematical_subject":"Analysis.Integration","original_sha256":"1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/MobiusPerronCombined.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
import Mathlib.Analysis.Fourier.Inversion
import Mathlib.Analysis.MellinTransform
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence


/-!
The logarithmically smoothed Perron kernel is genuinely absolutely convergent.
Fourier inversion of the continuous damped ramp retains the cutoff value zero.
No zeta inverse, Möbius estimate, or contour displacement is assumed here.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.KernelIntegrandIntegrableIoiZero.Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel
open MeasureTheory Set Filter
open scoped FourierTransform
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
noncomputable section

/-- Actual polynomial Laplace integrability extends to the complete positive half-line. -/
theorem kernelIntegrand_integrable_Ioi_zero (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi 0) := by
  have hr := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := (1 : ℝ)) (by have := Nat.cast_nonneg (α := ℝ) k; linarith)
    zero_lt_one hw
  simp only [Real.rpow_natCast, Real.rpow_one] at hr
  refine (integrable_norm_iff ?_).mp ?_
  · apply Continuous.aestronglyMeasurable
    unfold kernelIntegrand
    fun_prop
  · exact hr.congr_fun (fun t ht => (norm_kernelIntegrand k w t ht.le).symm)
      measurableSet_Ioi

/-- Integration by parts gives the exact first Laplace moment, with genuine admission. -/
theorem integral_first_moment (w : ℂ) (hw : 0 < w.re) :
    (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) = 1 / w ^ 2 := by
  have h0 := kernelIntegrand_integrable_Ioi_zero 0 w hw
  have h1 := kernelIntegrand_integrable_Ioi_zero 1 w hw
  have h := integral_Ioi_of_hasDerivAt_of_tendsto' (a := (0 : ℝ))
    (fun t _ => kernelIntegrand_deriv 0 w t)
    ((h0.const_mul _).sub (h1.const_mul _)) (kernelIntegrand_tendsto 1 w hw)
  rw [integral_sub (h0.const_mul _) (h1.const_mul _), integral_const_mul,
    integral_const_mul] at h
  have hw0 : w ≠ 0 := by intro he; simp [he] at hw
  simp only [kernelIntegrand, Nat.zero_add, Nat.cast_one, pow_zero, pow_one,
    one_mul, Complex.ofReal_zero, mul_zero, Complex.exp_zero, zero_sub] at h
  rw [integral_exp_mul_complex_Ioi (a := -w) (by simpa using hw) 0] at h
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq] at h
  simp only [zero_mul, neg_zero] at h
  apply (eq_div_iff (pow_ne_zero 2 hw0)).mpr
  calc
    _ = (w * ∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) * w := by ring
    _ = (1 / w) * w := by rw [← sub_eq_zero.mp h]
    _ = 1 := div_mul_cancel₀ 1 hw0

/-- The continuous one-sided ramp with genuine positive exponential damping. -/
def dampedRamp (c t : ℝ) : ℂ :=
  (max t 0 : ℝ) * Complex.exp (-(c : ℂ) * (t : ℂ))

/-- The vanishing value at the cutoff makes the damped ramp continuous everywhere. -/
theorem dampedRamp_continuous (c : ℝ) : Continuous (dampedRamp c) := by
  unfold dampedRamp
  fun_prop

/-- The damped ramp equals its genuine positive-half-line polynomial-exponential integrand. -/
theorem dampedRamp_eq_indicator (c : ℝ) :
    dampedRamp c = (Ioi (0 : ℝ)).indicator (kernelIntegrand 1 (c : ℂ)) := by
  funext t
  by_cases ht : 0 < t
  · simp [dampedRamp, kernelIntegrand, ht, max_eq_left ht.le]
  · simp [dampedRamp, ht, max_eq_right (le_of_not_gt ht)]

/-- The Fourier input is integrable before invoking Fourier inversion. -/
theorem dampedRamp_integrable (c : ℝ) (hc : 0 < c) : Integrable (dampedRamp c) := by
  rw [dampedRamp_eq_indicator]
  exact (kernelIntegrand_integrable_Ioi_zero 1 (c : ℂ) hc).integrable_indicator measurableSet_Ioi

/-- The exact Fourier transform fixes both the sign and the 2π convention. -/
theorem dampedRamp_fourier (c : ℝ) (hc : 0 < c) (ξ : ℝ) :
    𝓕 (dampedRamp c) ξ = 1 / ((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) ^ 2 := by
  rw [Real.fourier_eq']
  simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun t ht => by simp [dampedRamp, max_eq_right (le_of_not_gt (show ¬0 < t from ht))])]
  calc
    _ = ∫ t : ℝ in Ioi 0, (t : ℂ) *
        Complex.exp (-((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) * t) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      simp only [dampedRamp, max_eq_left (mem_Ioi.mp ht).le]
      rw [mul_left_comm, ← Complex.exp_add]
      congr 2
      push_cast
      ring
    _ = _ := integral_first_moment _ (by simpa using hc)

/-- The reciprocal-square vertical kernel is absolutely integrable for every c>0. -/
theorem reciprocal_square_integrable (c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) := by
  refine (integrable_norm_iff (show AEStronglyMeasurable
    (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) volume from
      (show Measurable _ from by fun_prop).aestronglyMeasurable)).mp ?_
  have h := (integrable_inv_one_add_sq.comp_mul_right' (inv_ne_zero hc.ne')).const_mul (c ^ 2)⁻¹
  refine h.congr (Filter.Eventually.of_forall (fun t => ?_))
  simp only [norm_div, norm_one, norm_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im, mul_zero,
    zero_add, add_zero, mul_one, sub_zero]
  field_simp

/-- The Fourier transform is itself genuinely integrable, as required by inversion. -/
theorem dampedRamp_fourier_integrable (c : ℝ) (hc : 0 < c) :
    Integrable (𝓕 (dampedRamp c)) := by
  have h := (reciprocal_square_integrable c hc).comp_mul_right'
    (show (2 * Real.pi : ℝ) ≠ 0 by positivity)
  convert h using 1
  funext ξ
  rw [dampedRamp_fourier c hc]
  congr 3
  push_cast
  ring

/-- The full, untruncated vertical integrand of the logarithmically smoothed Perron kernel. -/
def perronIntegrand (c x t : ℝ) : ℂ :=
  (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
    ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2

/-- The original vertical integral has genuine absolute convergence, including at x=1. -/
theorem perronIntegrand_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (perronIntegrand c x) := by
  have h := (reciprocal_square_integrable c hc).norm.const_mul (x ^ c)
  refine (integrable_norm_iff (show AEStronglyMeasurable (perronIntegrand c x) volume from
    (show Measurable _ from by unfold perronIntegrand; fun_prop).aestronglyMeasurable)).mp ?_
  refine h.congr (Filter.Eventually.of_forall (fun t => ?_))
  simp only [perronIntegrand, norm_div, norm_one]
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hx]
  simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
  ring

/-- Fourier inversion with exact 2π rescaling gives the absolutely convergent ramp kernel. -/
theorem vertical_ramp_inversion (c L : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) = dampedRamp c L := by
  have h := (dampedRamp_integrable c hc).fourierInv_fourier_eq
    (v := L) (dampedRamp_fourier_integrable c hc) (dampedRamp_continuous c).continuousAt
  calc
    _ = ∫ ξ : ℝ, Complex.exp (((2 * Real.pi * ξ : ℝ) : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) ^ 2 := by
      convert (Measure.integral_comp_mul_left
        (fun t : ℝ => Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
          ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) (2 * Real.pi)).symm using 1
      rw [abs_of_pos (inv_pos.mpr (by positivity : 0 < 2 * Real.pi))]
      simp only [one_div]
    _ = 𝓕⁻ (𝓕 (dampedRamp c)) L := by
      rw [Real.fourierInv_eq']
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [dampedRamp_fourier c hc]
      simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial, mul_one_div]
      congr 2
      push_cast
      ring
    _ = _ := h

/-- The exact smoothed Perron kernel, including the zero value at the cutoff x=1. -/
theorem elementary_perron_kernel (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c x t) =
      ((max (Real.log x) 0 : ℝ) : ℂ) := by
  have hfun : perronIntegrand c x = fun t : ℝ =>
      Complex.exp ((c : ℂ) * (Real.log x : ℂ)) *
        (Complex.exp ((t : ℂ) * (Real.log x : ℂ) * Complex.I) /
          ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) := by
    funext t
    unfold perronIntegrand
    rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr hx.ne'),
      ← Complex.ofReal_log hx.le, ← mul_div_assoc, ← Complex.exp_add]
    congr 2
    ring
  rw [hfun, integral_const_mul, ← mul_smul_comm]
  change Complex.exp ((c : ℂ) * (Real.log x : ℂ)) *
    ((1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
      Complex.exp ((t : ℂ) * (Real.log x : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2)) = _
  rw [vertical_ramp_inversion c (Real.log x) hc, dampedRamp]
  rw [mul_comm ((max (Real.log x) 0 : ℝ) : ℂ), ← mul_assoc, ← Complex.exp_add]
  simp

/-- The n=x endpoint contributes exactly zero, without a half-weight convention. -/
theorem elementary_perron_endpoint (c : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c 1 t) = 0 := by
  simpa using elementary_perron_kernel c 1 hc (by norm_num)

/-- Scaling by a positive denominator gives the strict Perron cutoff and retains its zero endpoint. -/
theorem elementary_perron_ratio (c x y : ℝ) (hc : 0 < c) (hx : 0 < x) (hy : 0 < y) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c (x / y) t) =
      if y < x then ((Real.log (x / y) : ℝ) : ℂ) else 0 := by
  rw [elementary_perron_kernel c (x / y) hc (div_pos hx hy)]
  by_cases hxy : y < x
  · rw [if_pos hxy, max_eq_left]
    exact (Real.log_pos ((lt_div_iff₀ hy).mpr (by simpa using hxy))).le
  · rw [if_neg hxy, max_eq_right]
    · simp
    · exact Real.log_nonpos (div_nonneg hx.le hy.le)
        ((div_le_one hy).mpr (le_of_not_gt hxy))

end
end FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel


/-! The actual corrected finite Möbius numerator and its removable one-half value. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
open Finset MeasureTheory Filter
open scoped ComplexConjugate Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController
noncomputable section

/-- The original finite signed reciprocal Dirichlet numerator in exponential coordinates. -/
def dirichletNumerator (X : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))

/-- The complete corrected numerator, retaining the actual endpoint coefficient. -/
def correctedNumerator (X : ℕ) (z : ℂ) : ℂ :=
  dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
    Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ))

/-- The signed logarithmic normalization required at the removed source pole. -/
def logNormalization (X : ℕ) : ℝ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
    Real.log ((X : ℝ) / (n : ℝ))

/-- Positive integer logarithms give the exact reciprocal coefficient at one half. -/
theorem exponential_at_half (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h : -(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) : ℝ) : ℂ) := by push_cast; ring
  rw [h, ← Complex.ofReal_exp, Real.exp_neg, Real.exp_log hn0, Complex.ofReal_inv]
  rfl

/-- The finite numerator at one half is exactly the original signed reciprocal sum. -/
theorem dirichletNumerator_half (X : ℕ) :
    dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) := by
  unfold dirichletNumerator mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
    Complex.ofReal_intCast]
  apply sum_congr rfl
  intro n hn
  rw [exponential_at_half n (mem_Icc.mp hn).1]
  rfl

/-- The actual endpoint correction cancels the numerator at one half exactly. -/
theorem correctedNumerator_half (X : ℕ) : correctedNumerator X (1 / 2) = 0 := by
  rw [correctedNumerator, dirichletNumerator_half]
  simp

/-- The finite exponential numerator is entire; no zeta inverse is taken here. -/
theorem correctedNumerator_differentiable (X : ℕ) : Differentiable ℂ (correctedNumerator X) := by
  unfold correctedNumerator dirichletNumerator
  fun_prop

/-- Its ordinary complex derivative retains every signed coefficient and the endpoint. -/
theorem correctedNumerator_hasDerivAt (X : ℕ) (z : ℂ) :
    HasDerivAt (correctedNumerator X)
      ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
          (-(Real.log (n : ℝ) : ℂ)))) +
        (mobiusReciprocalSum X : ℂ) *
          (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
            (Real.log (X : ℝ) : ℂ))) z := by
  unfold correctedNumerator dirichletNumerator
  have hd := (HasDerivAt.fun_sum (u := Icc 1 X) (fun n _ =>
    (((hasDerivAt_const z (1 / 2 : ℂ)).add (hasDerivAt_id z)).neg.mul_const
      (Real.log (n : ℝ) : ℂ)).cexp.const_mul (ArithmeticFunction.moebius n : ℂ))).sub
    ((((hasDerivAt_const z (1 / 2 : ℂ)).sub (hasDerivAt_id z)).mul_const
      (Real.log (X : ℝ) : ℂ)).cexp.const_mul (mobiusReciprocalSum X : ℂ))
  convert! hd using 1
  simp [Pi.add_apply, Pi.neg_apply, Pi.sub_apply, id_eq, neg_mul, mul_neg]


/-- The logarithmic normalization separates into its endpoint and signed log moments. -/
theorem logNormalization_eq (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) = (mobiusReciprocalSum X : ℂ) *
      (Real.log (X : ℝ) : ℂ) -
      ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  unfold logNormalization mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_mul, Complex.ofReal_div,
    Complex.ofReal_intCast, Complex.ofReal_natCast, sum_mul, ← sum_sub_distrib]
  apply sum_congr rfl
  intro n hn
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by have := (mem_Icc.mp hn).1; omega)
  rw [Real.log_div hX0 hn0, Complex.ofReal_sub]
  ring

/-- The derivative at the canceled pole is the signed logarithmic normalization. -/
theorem correctedNumerator_hasDerivAt_half (X : ℕ) (hX : 1 ≤ X) :
    HasDerivAt (correctedNumerator X) (logNormalization X : ℂ) (1 / 2) := by
  convert! correctedNumerator_hasDerivAt X (1 / 2) using 1
  rw [logNormalization_eq X hX]
  simp only [sub_self, zero_mul, Complex.exp_zero, one_mul]
  have hs : (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) =
      -(∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ)) := by
    rw [← sum_neg_distrib]
    apply sum_congr rfl
    intro n hn
    rw [exponential_at_half n (mem_Icc.mp hn).1]
    ring
  rw [hs]
  ring

/-- The entire divided difference performs the pole cancellation before any controller cutoff. -/
def correctedQuotient (X : ℕ) : ℂ → ℂ := dslope (correctedNumerator X) (1 / 2)

/-- Away from the removed point the divided difference is the literal corrected quotient. -/
theorem correctedQuotient_of_ne (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    correctedQuotient X z = correctedNumerator X z / (z - 1 / 2) := by
  rw [correctedQuotient, dslope_of_ne _ hz, slope_def_module, correctedNumerator_half]
  simp [div_eq_mul_inv, mul_comm]

/-- The canceled numerator factors through the same entire quotient at every point. -/
theorem correctedNumerator_factor (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) * correctedQuotient X z := by
  simpa only [smul_eq_mul, correctedNumerator_half, sub_zero, correctedQuotient] using
    (sub_smul_dslope (correctedNumerator X) (1 / 2) z).symm

/-- Removing the canceled factor leaves an entire function, without a zeta-zero hypothesis. -/
theorem correctedQuotient_differentiable (X : ℕ) : Differentiable ℂ (correctedQuotient X) := by
  apply differentiableOn_univ.mp
  exact (Complex.differentiableOn_dslope (s := Set.univ) (by simp)).mpr
    (correctedNumerator_differentiable X).differentiableOn

/-- The actual value at the removed pole is retained rather than assigned arbitrarily. -/
theorem correctedQuotient_half (X : ℕ) (hX : 1 ≤ X) :
    correctedQuotient X (1 / 2) = (logNormalization X : ℂ) := by
  rw [correctedQuotient, dslope_same]
  exact (correctedNumerator_hasDerivAt_half X hX).deriv

/-- The literal quotient approaches the same signed logarithmic normalization. -/
theorem correctedQuotient_tendsto_half (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (logNormalization X : ℂ)) := by
  have hc : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
      (𝓝 (correctedQuotient X (1 / 2))) :=
    ((correctedQuotient_differentiable X).continuous.continuousAt
    (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
  rw [correctedQuotient_half X hX] at hc
  apply hc.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact correctedQuotient_of_ne X z hz

end
end FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator


/-!
The original logarithmically weighted Möbius prefix has a genuinely convergent
Perron integral in its initial half-plane. Every infinite exchange uses an
explicit summable L1 majorant. No contour shift or large-scale limit is used.
-/
set_option autoImplicit false
namespace MobiusPerronScratch
open MeasureTheory Set Filter
open scoped LSeries.notation
open FormalResearch.RiemannHypothesis.SourceComparison
open SmoothedPerronKernel MobiusPoleNumerator
noncomputable section

/-- The original Möbius Dirichlet series is the actual zeta reciprocal where it converges absolutely. -/
theorem mobiusDirichlet_reciprocal (s : ℂ) (hs : 1 < s.re) :
    LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s = 1 / riemannZeta s := by
  have h := ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
  rw [ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs] at h
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  apply (eq_div_iff hz).mpr
  simpa only [mul_comm] using h

/-- The n-th original signed Perron term, with the zero index explicitly suppressed by LSeries.term. -/
def perronTerm (c x : ℝ) (n : ℕ) (t : ℝ) : ℂ :=
  perronIntegrand c x t * LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
    (1 + (c : ℂ) + (t : ℂ) * Complex.I) n

/-- The norm separates the occurrence-free arithmetic coefficient from the admitted vertical kernel. -/
theorem perronTerm_norm (c x : ℝ) (n : ℕ) (t : ℝ) :
    ‖perronTerm c x n t‖ =
      ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖ *
        ‖perronIntegrand c x t‖ := by
  simp only [perronTerm, norm_mul, LSeries.norm_term_eq, Complex.add_re,
    Complex.one_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
  ring

/-- Each original signed Perron term is genuinely integrable on the complete vertical line. -/
theorem perronTerm_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) :
    Integrable (perronTerm c x n) := by
  have hm : Measurable (perronTerm c x n) := by
    unfold perronTerm perronIntegrand LSeries.term
    split_ifs <;> fun_prop
  refine (integrable_norm_iff hm.aestronglyMeasurable).mpr ?_
  simpa only [perronTerm_norm] using (perronIntegrand_integrable c x hc hx).norm.const_mul
    ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖

/-- Summability of the full L1 norms is established before exchanging the infinite series and integral. -/
theorem perronTerm_norm_integrals_summable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖perronTerm c x n t‖) := by
  have hs : Summable (LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ))) :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr (by simpa using hc)
  simpa only [perronTerm_norm, integral_const_mul] using
    hs.norm.mul_right (∫ t : ℝ, ‖perronIntegrand c x t‖)

/-- The pointwise sum is the original actual zeta Perron integrand in the initial half-plane. -/
theorem perronTerm_tsum (c x : ℝ) (hc : 0 < c) (t : ℝ) :
    (∑' n : ℕ, perronTerm c x n t) =
      (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := by
  rw [perronTerm, tsum_mul_left]
  change perronIntegrand c x t *
    LSeries (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ) + (t : ℂ) * Complex.I) = _
  rw [mobiusDirichlet_reciprocal _ (by simpa using hc)]
  unfold perronIntegrand
  ring

/-- Positive integer scaling retains exactly the original signed coefficient and source cutoff ratio. -/
theorem perronTerm_ratio (c x : ℝ) (hx : 0 < x) (n : ℕ) (hn : 0 < n) (t : ℝ) :
    perronTerm c x n t = (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
      perronIntegrand c (x / (n : ℝ)) t := by
  have hn0 : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn.ne'
  have hnr : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  rw [perronTerm, LSeries.term_of_ne_zero hn.ne']
  unfold perronIntegrand
  rw [show 1 + (c : ℂ) + (t : ℂ) * Complex.I =
      1 + ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
    Complex.cpow_add _ _ hn0, Complex.cpow_one,
    Complex.ofReal_div, Complex.div_cpow_ofReal_nonneg hx.le hnr]
  push_cast
  ring

end
end MobiusPerronScratch
