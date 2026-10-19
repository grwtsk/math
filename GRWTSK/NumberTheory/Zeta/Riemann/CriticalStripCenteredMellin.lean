/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower

set_option autoImplicit false

/-!
# Centering the actual fractional Mellin kernel

Subtracting 1/2 from the fractional-part kernel is an EXACT source change with
an explicitly integrated correction, not a declaration that an error has mean zero.
The centered kernel is bounded in absolute value by 1/2. The same convergent
integrals give C(s)=M(s)-1/(2s), H(s)=(s+1)/2-s(s-1)C(s), and a centered tail bound.
At an integer cutoff the finite model has an essential half-endpoint correction.

These identities do not bound a zero-divisor tail, assume RH, or construct a
positive Weil form. Every integral is consumed with Re(s)>0 and cutoff>=1.
Source scripts: exact Lean elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin

open Complex MeasureTheory Set Filter
open scoped Topology

noncomputable section

/-- The centered real kernel, integrated only above 1. -/
def kernel (t : ℝ) : ℝ := realFractionalKernel t - 1 / 2

lemma kernel_abs_le (t : ℝ) : |kernel t| ≤ (1 / 2 : ℝ) := by
  have hlo := realFractionalKernel_nonneg t
  have hhi := realFractionalKernel_le_one t
  apply abs_le.mpr
  constructor <;> dsimp only [kernel] <;> linarith

def integrand (s : ℂ) (t : ℝ) : ℂ :=
  (kernel t : ℂ) * (t : ℂ) ^ (-(s + 1))

lemma integrand_eq_sub {s : ℂ} {t : ℝ} (ht : 1 < t) :
    integrand s t = fractionalIntegrand s t -
      (1 / 2 : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
  simp only [integrand, kernel, realFractionalKernel, if_pos ht.le, fractionalIntegrand]
  push_cast
  ring

lemma power_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-(s + 1))) (Ioi T) := by
  apply integrableOn_Ioi_cpow_of_lt
  · simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  · exact zero_lt_one.trans_le hT

lemma integrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (integrand s) (Ioi T) := by
  have h := (fractionalMellinTail_integrable hT hs).sub
    ((power_integrable hT hs).const_mul (1 / 2 : ℂ))
  refine h.congr_fun ?_ measurableSet_Ioi
  intro t ht
  exact (integrand_eq_sub (hT.trans_lt ht)).symm

lemma integrand_norm_le {s : ℂ} {t : ℝ} (ht : 1 < t) :
    ‖integrand s t‖ ≤ (1 / 2 : ℝ) * t ^ (-(s.re + 1)) := by
  rw [integrand, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans ht)]
  simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
  exact mul_le_mul_of_nonneg_right (kernel_abs_le t)
    (Real.rpow_nonneg (zero_lt_one.trans ht).le _)

/-- The full centered integral and its actual omitted tail. -/
def value (s : ℂ) : ℂ := ∫ t : ℝ in Ioi 1, integrand s t

def tail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, integrand s t

/-- No periodic cancellation is assumed; only the proved pointwise half bound. -/
theorem tail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-σ) / (2 * σ) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := integrand_integrable hT (hσ.trans_le hs)
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(σ + 1))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  have hg := hp.const_mul (1 / 2 : ℝ)
  calc
    ‖tail T s‖ ≤ ∫ t in Ioi T, ‖integrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 2 : ℝ) * t ^ (-(σ + 1)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact (integrand_norm_le (hT.trans_lt ht)).trans
        (mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
          (by norm_num))
    _ = T ^ (-σ) / (2 * σ) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 1) < -1) hT0,
        show -(σ + 1) + 1 = -σ by ring, neg_div_neg_eq]
      ring

theorem value_norm_le {σ : ℝ} {s : ℂ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖value s‖ ≤ 1 / (2 * σ) := by
  simpa only [tail, value, Real.one_rpow] using tail_norm_le (T := 1) le_rfl hσ hs

/-- Evaluate the correction before subtracting it. Both integrands are integrable. -/
theorem tail_eq_sub {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    tail T s = fractionalMellinTail T s - (T : ℂ) ^ (-s) / (2 * s) := by
  have hp := power_integrable hT hs
  have hi := fractionalMellinTail_integrable hT hs
  have heq : tail T s = ∫ t : ℝ in Ioi T,
      (fractionalIntegrand s t - (1 / 2 : ℂ) * (t : ℂ) ^ (-(s + 1))) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    exact integrand_eq_sub (hT.trans_lt ht)
  rw [heq, integral_sub hi (hp.const_mul (1 / 2 : ℂ)), integral_const_mul]
  have hexp : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  rw [integral_Ioi_cpow_of_lt hexp (zero_lt_one.trans_le hT),
    show -(s + 1) + 1 = -s by ring, neg_div_neg_eq]
  change fractionalMellinTail T s - (1 / 2 : ℂ) * ((T : ℂ) ^ (-s) / s) = _
  ring

/-- Exact full source identity. The apparent singularity is never used at s=0. -/
theorem value_eq_sub {s : ℂ} (hs : 0 < s.re) :
    value s = fractionalMellin s - (1 / 2 : ℂ) / s := by
  have h := tail_eq_sub (T := 1) le_rfl hs
  have hm : fractionalMellinTail 1 s = fractionalMellin s := by
    rw [fractionalMellin_eq_integral]
    rfl
  simpa only [tail, value, hm, Complex.ofReal_one, Complex.one_cpow,
    div_mul_eq_div_div] using h

lemma parameter_ne_zero {s : ℂ} (hs : 0 < s.re) : s ≠ 0 := by
  intro heq
  simpa only [heq, Complex.zero_re, lt_self_iff_false] using hs

theorem value_differentiableAt {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ value s := by
  have hbase : DifferentiableAt ℂ (fun z => fractionalMellin z - (1 / 2 : ℂ) / z) s :=
    (fractionalMellin_differentiableAt hs).sub
    (differentiableAt_const.div differentiableAt_id (parameter_ne_zero hs))
  have hopen : {z : ℂ | 0 < z.re} ∈ 𝓝 s :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds hs
  have heq : value =ᶠ[𝓝 s] (fun z => fractionalMellin z - (1 / 2 : ℂ) / z) := by
    filter_upwards [hopen] with z hz
    exact value_eq_sub hz
  exact hbase.congr_of_eventuallyEq heq

/-- The extracted half constant becomes an affine reference; it is not dropped. -/
theorem source_identity {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = (s + 1) / 2 - s * (s - 1) * value s := by
  rw [value_eq_sub hs, poleNormalized_eq_fractional hs]
  unfold fractionalPoleModel
  field_simp [parameter_ne_zero hs] <;> ring

/-- Explicit error from the affine reference. No positivity of complex C is assumed. -/
theorem source_error {σ : ℝ} {s : ℂ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - (s + 1) / 2‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * σ) := by
  have heq : poleNormalizedZeta s - (s + 1) / 2 = -(s * (s - 1) * value s) := by
    rw [source_identity (hσ.trans_le hs)]
    ring
  rw [heq, norm_neg, norm_mul, norm_mul]
  exact (mul_le_mul_of_nonneg_left (value_norm_le hσ hs)
    (mul_nonneg (norm_nonneg s) (norm_nonneg (s - 1)))).trans_eq (by ring)

/-- Integer-cutoff correction. The previous uncentered finite model is unchanged. -/
def finiteModel (N : ℕ) (s : ℂ) : ℂ :=
  finitePowerPoleModel N s - (s - 1) * (N : ℂ) ^ (-s) / 2

@[simp] theorem finiteModel_at_one (N : ℕ) : finiteModel N 1 = 1 := by
  simp [finiteModel]

@[simp] theorem finiteModel_cutoff_one (s : ℂ) : finiteModel 1 s = (s + 1) / 2 := by
  rw [finiteModel, finitePowerPoleModel_cutoff_one]
  simp only [Nat.cast_one, Complex.one_cpow]
  ring

/-- The half-endpoint is charged exactly; the centered tail has half the old radius. -/
theorem finiteModel_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -(s * (s - 1)) * tail N s := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [tail_eq_sub hNr hs, finiteModel]
  have hsource := finitePower_source_residual hN hs
  rw [show poleNormalizedZeta s -
      (finitePowerPoleModel N s - (s - 1) * (N : ℂ) ^ (-s) / 2) =
      (poleNormalizedZeta s - finitePowerPoleModel N s) +
        (s - 1) * (N : ℂ) ^ (-s) / 2 by ring, hsource]
  simp only [Complex.ofReal_natCast]
  field_simp [parameter_ne_zero hs] <;> ring

theorem finiteModel_error {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ((N : ℝ) ^ (-σ) / (2 * σ)) := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [finiteModel_residual hN (hσ.trans_le hs), norm_mul, norm_neg, norm_mul]
  exact mul_le_mul_of_nonneg_left (tail_norm_le hNr hσ hs)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin
