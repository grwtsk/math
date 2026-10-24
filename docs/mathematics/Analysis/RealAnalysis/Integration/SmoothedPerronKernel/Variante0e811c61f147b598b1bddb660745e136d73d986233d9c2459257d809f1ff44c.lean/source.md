# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SmoothedPerronKernel.Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `466f88a40275564abf7b79356ff47b938e9b6ac9` · SHA-256 `e0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
import Mathlib.Analysis.Fourier.Inversion
import Mathlib.Analysis.MellinTransform

/-!
The logarithmically smoothed Perron kernel is genuinely absolutely convergent.
Fourier inversion of the continuous damped ramp retains the cutoff value zero.
No zeta inverse, Möbius estimate, or contour displacement is assumed here.
-/
set_option autoImplicit false
namespace SmoothedPerronKernelScratch
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
end SmoothedPerronKernelScratch
```
