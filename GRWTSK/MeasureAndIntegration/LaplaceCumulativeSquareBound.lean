/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-!
# Cumulative square bounds and signed Laplace transforms

Integration of the weighted primitive accounts for the whole half-line and
gives the exact factorial constant from a polynomial bound on cumulative
energy. Cauchy–Schwarz then bounds the original signed transform at every
positive decay. The estimates apply to the causal Möbius residual without
requiring a pointwise amplitude bound.
-/

noncomputable section
set_option autoImplicit false

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound

def cumulativeSquare (f : ℝ → ℝ) (T : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..T, f t ^ 2

def weightedSquare (f : ℝ → ℝ) (σ : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), Real.exp (-σ * t) * f t ^ 2

def signedLaplace (f : ℝ → ℝ) (z : ℂ) : ℂ :=
  ∫ t in Ioi (0 : ℝ), Complex.exp (-(z * (t : ℂ))) * (f t : ℂ)

private theorem moment_integrable (p : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * t ^ p) (Ioi 0) := by
  have hi := integrableOn_rpow_mul_exp_neg_mul_rpow (s := (p : ℝ))
    (p := 1) ((by norm_num : (-1 : ℝ) < 0).trans_le (Nat.cast_nonneg p))
    (by norm_num) hσ
  simpa only [Real.rpow_natCast, Real.rpow_one, neg_mul, mul_comm] using hi

private theorem moment_integral (p : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    σ * (∫ t in Ioi (0 : ℝ), Real.exp (-σ * t) * t ^ p) =
      (p.factorial : ℝ) / σ ^ p := by
  have hi := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := (p : ℝ) + 1)
    (by positivity) hσ
  simp only [add_sub_cancel_right, Real.rpow_natCast] at hi
  rw [← Nat.cast_succ, Real.rpow_natCast, Nat.cast_succ, Real.Gamma_nat_eq_factorial] at hi
  rw [show (fun t : ℝ => Real.exp (-σ * t) * t ^ p) =
      (fun t : ℝ => t ^ p * Real.exp (-(σ * t))) by
        ext t
        rw [neg_mul, mul_comm], hi]
  rw [div_pow, one_pow, pow_succ]
  field_simp

private theorem decay_tendsto (p : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    Tendsto (fun t : ℝ => Real.exp (-σ * t) * t ^ p) atTop (𝓝 0) := by
  simpa only [Real.rpow_natCast, mul_comm] using
    tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (p : ℝ) σ hσ

private theorem weightedSquare_integrable_and_eq {f : ℝ → ℝ} (hf : Continuous f)
    {A C σ : ℝ} {p : ℕ} (hσ : 0 < σ)
    (hE : ∀ T : ℝ, 0 ≤ T → cumulativeSquare f T ≤ A * T ^ p + C) :
    IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * f t ^ 2) (Ioi 0) ∧
      (weightedSquare f σ =
        σ * (∫ t in Ioi (0 : ℝ), Real.exp (-σ * t) * cumulativeSquare f t)) ∧
      IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * cumulativeSquare f t) (Ioi 0) := by
  let d (t : ℝ) := Real.exp (-σ * t) * cumulativeSquare f t
  let g (T : ℝ) := d T + σ * (∫ t in (0 : ℝ)..T, d t)
  have hderiv (T : ℝ) : HasDerivAt (cumulativeSquare f) (f T ^ 2) T :=
    ((hf.pow 2).integral_hasStrictDerivAt 0 T).hasDerivAt
  have hcont : Continuous d :=
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-σ * t))).mul
      (show Differentiable ℝ (cumulativeSquare f) from
        fun T => (hderiv T).differentiableAt).continuous
  have hd_nonneg {t : ℝ} (ht : 0 ≤ t) : 0 ≤ d t :=
    mul_nonneg (Real.exp_pos _).le (intervalIntegral.integral_nonneg ht fun x _ => sq_nonneg _)
  have hbound (t : ℝ) (ht : 0 ≤ t) :
      d t ≤ A * (Real.exp (-σ * t) * t ^ p) + C * (Real.exp (-σ * t) * t ^ 0) := by
    dsimp [d]
    rw [pow_zero, mul_one]
    calc
      _ ≤ Real.exp (-σ * t) * (A * t ^ p + C) :=
        mul_le_mul_of_nonneg_left (hE t ht) (Real.exp_pos _).le
      _ = _ := by ring
  have hd_integrable : IntegrableOn d (Ioi 0) := by
    refine (((moment_integrable p hσ).const_mul A).add
      ((moment_integrable 0 hσ).const_mul C)).mono' hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    rw [Real.norm_of_nonneg (hd_nonneg ht.le)]
    exact hbound t ht.le
  have hd_zero : Tendsto d atTop (𝓝 0) := by
    apply squeeze_zero'
    · filter_upwards [eventually_ge_atTop 0] with t ht using hd_nonneg ht
    · filter_upwards [eventually_ge_atTop 0] with t ht using hbound t ht
    · simpa only [mul_zero, add_zero] using
        ((decay_tendsto p hσ).const_mul A).add ((decay_tendsto 0 hσ).const_mul C)
  have hg_deriv (T : ℝ) : HasDerivAt g (Real.exp (-σ * T) * f T ^ 2) T := by
    have he := ((hasDerivAt_id T).const_mul (-σ)).exp
    simp only [id_eq, mul_one] at he
    have hp := he.mul (hderiv T)
    have hi := (hcont.integral_hasStrictDerivAt 0 T).hasDerivAt.const_mul σ
    convert hp.add hi using 1
    dsimp [d]
    ring
  have hg_lim : Tendsto g atTop (𝓝 (σ * ∫ t in Ioi 0, d t)) := by
    have hi := intervalIntegral_tendsto_integral_Ioi 0 hd_integrable tendsto_id
    simpa only [g, zero_add, id_eq] using hd_zero.add (hi.const_mul σ)
  have hpos (t : ℝ) (_ : t ∈ Ioi 0) : 0 ≤ Real.exp (-σ * t) * f t ^ 2 := by
    positivity
  refine ⟨integrableOn_Ioi_deriv_of_nonneg' (fun t _ => hg_deriv t) hpos hg_lim, ?_, hd_integrable⟩
  rw [weightedSquare, integral_Ioi_of_hasDerivAt_of_nonneg' (fun t _ => hg_deriv t) hpos hg_lim]
  simp [g, d, cumulativeSquare]

theorem weightedSquare_integrable {f : ℝ → ℝ} (hf : Continuous f)
    {A C σ : ℝ} {p : ℕ} (hσ : 0 < σ)
    (hE : ∀ T : ℝ, 0 ≤ T → cumulativeSquare f T ≤ A * T ^ p + C) :
    IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * f t ^ 2) (Ioi 0) :=
  (weightedSquare_integrable_and_eq hf hσ hE).1

theorem weightedSquare_le_factorial {f : ℝ → ℝ} (hf : Continuous f)
    {A C σ : ℝ} {p : ℕ} (hσ : 0 < σ)
    (hE : ∀ T : ℝ, 0 ≤ T → cumulativeSquare f T ≤ A * T ^ p + C) :
    weightedSquare f σ ≤ A * (p.factorial : ℝ) / σ ^ p + C := by
  -- The term at infinity is accounted for in the weighted primitive.
  rcases weightedSquare_integrable_and_eq hf hσ hE with ⟨_, hEq, hi⟩
  rw [hEq]
  let d (t : ℝ) := Real.exp (-σ * t) * cumulativeSquare f t
  let m (n : ℕ) (t : ℝ) := Real.exp (-σ * t) * t ^ n
  have hbound (t : ℝ) (ht : 0 ≤ t) : d t ≤ A * m p t + C * m 0 t := by
    exact (mul_le_mul_of_nonneg_left (hE t ht) (Real.exp_pos (-σ * t)).le).trans_eq
      (by dsimp [m]; ring)
  have hm (n : ℕ) : IntegrableOn (m n) (Ioi 0) := moment_integrable n hσ
  change σ * (∫ t in Ioi 0, d t) ≤ _
  calc
    _ ≤ σ * (∫ t in Ioi 0, A * m p t + C * m 0 t) := by
      refine mul_le_mul_of_nonneg_left (setIntegral_mono_on hi
        (((hm p).const_mul A).add ((hm 0).const_mul C)) measurableSet_Ioi ?_) hσ.le
      exact fun t ht => hbound t ht.out.le
    _ = A * (σ * ∫ t in Ioi 0, m p t) + C * (σ * ∫ t in Ioi 0, m 0 t) := by
      rw [integral_add ((hm p).const_mul A) ((hm 0).const_mul C),
        integral_const_mul, integral_const_mul]
      ring
    _ = _ := by
      rw [show σ * (∫ t in Ioi 0, m p t) = _ from moment_integral p hσ,
        show σ * (∫ t in Ioi 0, m 0 t) = _ from moment_integral 0 hσ]
      simp [mul_div_assoc]

private theorem exp_mul_sq (σ t a : ℝ) :
    (Real.exp (-σ * t / 2) * a) ^ 2 = Real.exp (-σ * t) * a ^ 2 := by
  rw [mul_pow, pow_two (Real.exp _), ← Real.exp_add]
  congr 2
  ring

private theorem exp_mul_mul (σ t a b : ℝ) :
    (Real.exp (-σ * t / 2) * a) * (Real.exp (-σ * t / 2) * b) =
      Real.exp (-σ * t) * a * b := by
  calc
    _ = (Real.exp (-σ * t / 2) * Real.exp (-σ * t / 2)) * a * b := by ring
    _ = _ := by rw [← Real.exp_add]; congr 3; ring

private theorem weighted_memLp {f : ℝ → ℝ} (hf : Continuous f) {σ : ℝ}
    (hi : IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * f t ^ 2) (Ioi 0)) :
    MemLp (fun t : ℝ => Real.exp (-σ * t / 2) * f t) 2 (volume.restrict (Ioi 0)) := by
  have hcont : Continuous (fun t : ℝ => Real.exp (-σ * t / 2) * f t) := by fun_prop
  apply (memLp_two_iff_integrable_sq hcont.aestronglyMeasurable).2
  simpa only [IntegrableOn, exp_mul_sq] using hi

private theorem weightedSquare_nonneg (f : ℝ → ℝ) (σ : ℝ) :
    0 ≤ weightedSquare f σ := by
  apply integral_nonneg
  intro t
  positivity

/-- Cauchy–Schwarz for signed products under the same exponential decay. -/
theorem integral_weighted_mul_sq_le {f g : ℝ → ℝ} (hf : Continuous f) (hg : Continuous g)
    {σ : ℝ}
    (hfi : IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * f t ^ 2) (Ioi 0))
    (hgi : IntegrableOn (fun t : ℝ => Real.exp (-σ * t) * g t ^ 2) (Ioi 0)) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-σ * t) * f t * g t) ^ 2 ≤
      weightedSquare f σ * weightedSquare g σ := by
  have hconj : (2 : ℝ).HolderConjugate 2 := Real.holderConjugate_iff.mpr (by norm_num)
  have h := integral_mul_norm_le_Lp_mul_Lq hconj
    (by simpa using weighted_memLp hf hfi)
    (by simpa using weighted_memLp hg hgi)
  simp only [Real.rpow_two, one_div] at h
  let a (t : ℝ) := Real.exp (-σ * t / 2) * f t
  let b (t : ℝ) := Real.exp (-σ * t / 2) * g t
  have hf_sq : (∫ t in Ioi (0 : ℝ), ‖a t‖ ^ 2) = weightedSquare f σ := by
    simp only [a, weightedSquare, Real.norm_eq_abs, sq_abs, exp_mul_sq]
  have hg_sq : (∫ t in Ioi (0 : ℝ), ‖b t‖ ^ 2) = weightedSquare g σ := by
    simp only [b, weightedSquare, Real.norm_eq_abs, sq_abs, exp_mul_sq]
  have hbound : ‖∫ t in Ioi (0 : ℝ), a t * b t‖ ≤
      Real.sqrt (weightedSquare f σ) * Real.sqrt (weightedSquare g σ) := by
    have hn := norm_integral_le_integral_norm (μ := volume.restrict (Ioi (0 : ℝ)))
      (fun t => a t * b t)
    simp only [norm_mul] at hn
    rw [← hf_sq, ← hg_sq]
    rw [Real.sqrt_eq_rpow, Real.sqrt_eq_rpow]
    exact hn.trans (by
      dsimp [a, b]
      simpa only [one_div, Real.norm_eq_abs, neg_mul] using h)
  have hsq := pow_le_pow_left₀ (norm_nonneg _) hbound 2
  simpa only [a, b, exp_mul_mul, Real.norm_eq_abs, sq_abs, mul_pow,
    Real.sq_sqrt (weightedSquare_nonneg f σ), Real.sq_sqrt (weightedSquare_nonneg g σ)]
    using hsq

private theorem norm_signedLaplace_integrand (f : ℝ → ℝ) (z : ℂ) (t : ℝ) :
    ‖Complex.exp (-(z * (t : ℂ))) * (f t : ℂ)‖ = Real.exp (-z.re * t) * |f t| := by
  simp only [norm_mul, Complex.norm_exp, Complex.neg_re, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, neg_mul,
    Complex.norm_real, Real.norm_eq_abs]

theorem signedLaplace_integrable {f : ℝ → ℝ} (hf : Continuous f) {z : ℂ}
    (hz : 0 < z.re)
    (hi : IntegrableOn (fun t : ℝ => Real.exp (-z.re * t) * f t ^ 2) (Ioi 0)) :
    IntegrableOn (fun t : ℝ => Complex.exp (-(z * (t : ℂ))) * (f t : ℂ)) (Ioi 0) := by
  refine ((moment_integrable 0 hz).add hi).mono'
    (show Continuous (fun t : ℝ => Complex.exp (-(z * (t : ℂ))) * (f t : ℂ))
      by fun_prop).aestronglyMeasurable ?_
  apply Eventually.of_forall
  intro t
  rw [norm_signedLaplace_integrand]
  simp only [Pi.add_apply, pow_zero, mul_one]
  have ha : |f t| ≤ 1 + f t ^ 2 := by nlinarith [sq_nonneg (|f t| - 1), sq_abs (f t)]
  linarith [mul_le_mul_of_nonneg_left ha (Real.exp_pos (-z.re * t)).le]

theorem norm_signedLaplace_sq_le {f : ℝ → ℝ} (hf : Continuous f) {z : ℂ}
    (hz : 0 < z.re)
    (hi : IntegrableOn (fun t : ℝ => Real.exp (-z.re * t) * f t ^ 2) (Ioi 0)) :
    ‖signedLaplace f z‖ ^ 2 ≤ weightedSquare f z.re / z.re := by
  have hnorm : ‖signedLaplace f z‖ ≤ ∫ t in Ioi (0 : ℝ), Real.exp (-z.re * t) * |f t| := by
    unfold signedLaplace
    simpa only [norm_signedLaplace_integrand] using
      norm_integral_le_integral_norm (μ := volume.restrict (Ioi (0 : ℝ)))
        (fun t : ℝ => Complex.exp (-(z * (t : ℂ))) * (f t : ℂ))
  have hi_abs : IntegrableOn (fun t : ℝ => Real.exp (-z.re * t) * |f t| ^ 2) (Ioi 0) := by
    simpa only [sq_abs] using hi
  have h1 : IntegrableOn (fun t : ℝ => Real.exp (-z.re * t) * (1 : ℝ) ^ 2) (Ioi 0) := by
    simpa using moment_integrable 0 hz
  have hcs := integral_weighted_mul_sq_le hf.abs (continuous_const (y := (1 : ℝ))) hi_abs h1
  have hmoment : weightedSquare (fun _ => (1 : ℝ)) z.re = 1 / z.re := by
    apply (eq_div_iff hz.ne').2
    rw [mul_comm]
    simpa only [Nat.factorial_zero, Nat.cast_one, pow_zero, div_one, mul_one, one_pow,
      weightedSquare] using moment_integral 0 hz
  have habs : weightedSquare (fun t => |f t|) z.re = weightedSquare f z.re := by
    simp only [weightedSquare, sq_abs]
  simp only [mul_one, habs, hmoment, ← div_eq_mul_one_div] at hcs
  exact (pow_le_pow_left₀ (norm_nonneg _) hnorm 2).trans hcs

end GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
