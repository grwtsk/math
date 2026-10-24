# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroShellGrowth.Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `248fa7a39462de76ad3c0d98605b4803b2ebb954` · SHA-256 `5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-!
# Quantitative growth of the actual pole-cleared completed zeta function

This source proves the positive theta/Mellin comparison and its genuine
integrability, a positive-even-integer Gamma/factorial endpoint bound, and the
resulting all-radius fourth-power exponential envelope. No zero-count or RH
hypothesis occurs. This is an input to the separately frozen shell-count target;
it does not execute the later zero-side, Laplace, or Landau stages.
-/

open Complex
open scoped Real
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellGrowth

/-- The convergent positive p-series majorant for zeta at natural arguments at least two. -/
noncomputable def zetaMajorant : ℝ := ∑' n : ℕ, 1 / (n : ℝ)^2

lemma zetaMajorant_nonneg : 0 ≤ zetaMajorant := by
  exact tsum_nonneg (fun _ => by positivity)

lemma norm_zeta_nat_le (k : ℕ) (hk : 2 ≤ k) : ‖riemannZeta (k : ℂ)‖ ≤ zetaMajorant := by
  have hk1 : 1 < k := by omega
  have hs : Summable (fun n : ℕ => 1 / (n : ℝ)^k) := Real.summable_one_div_nat_pow.mpr hk1
  have hs2 : Summable (fun n : ℕ => 1 / (n : ℝ)^2) := Real.summable_one_div_nat_pow.mpr (by omega)
  have hn : ∀ n : ℕ, ‖(1 : ℂ) / (n : ℂ)^k‖ = 1 / (n : ℝ)^k := by
    intro n
    simp
  rw [zeta_nat_eq_tsum_of_gt_one hk1]
  calc
    _ ≤ ∑' n : ℕ, ‖(1 : ℂ) / (n : ℂ)^k‖ := norm_tsum_le_tsum_norm (by simpa only [hn] using hs)
    _ = ∑' n : ℕ, 1 / (n : ℝ)^k := tsum_congr hn
    _ ≤ zetaMajorant := hs.tsum_le_tsum (fun n => by
      by_cases h0 : n = 0
      · simp [h0, show k ≠ 0 by omega]
      · have h1 : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr h0
        exact one_div_le_one_div_of_le (by positivity)
          (pow_le_pow_right₀ h1 hk)) hs2

lemma factorial_le_exp_square (m : ℕ) : (m.factorial : ℝ) ≤ Real.exp ((m : ℝ)^2) := by
  have hp : (m.factorial : ℝ) ≤ (m : ℝ)^m := by exact_mod_cast Nat.factorial_le_pow m
  have he : (m : ℝ) ≤ Real.exp (m : ℝ) := le_trans (by linarith) (Real.add_one_le_exp (m : ℝ))
  calc
    _ ≤ (m : ℝ)^m := hp
    _ ≤ (Real.exp (m : ℝ))^m := pow_le_pow_left₀ (by positivity) he m
    _ = Real.exp ((m : ℝ)^2) := by rw [← Real.exp_nat_mul]; congr 1; ring

lemma norm_gammaR_even_le (m : ℕ) (hm : 1 ≤ m) :
    ‖Gammaℝ (2 * (m : ℂ))‖ ≤ (m.factorial : ℝ) := by
  have hgamma : Gamma (m : ℂ) = ((m - 1).factorial : ℂ) := by
    have he : ((m - 1 : ℕ) : ℂ) + 1 = (m : ℂ) := by
      exact_mod_cast Nat.sub_add_cancel hm
    rw [← he, Gamma_nat_eq_factorial]
  have hpi : ‖(Real.pi : ℂ) ^ (-(m : ℂ))‖ ≤ 1 := by
    rw [cpow_neg, cpow_natCast, norm_inv, norm_pow, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos Real.pi_pos]
    exact inv_le_one_of_one_le₀ (one_le_pow₀ (by linarith [Real.two_le_pi]))
  have hargs : -(2 * (m : ℂ)) / 2 = -(m : ℂ) := by ring
  have hhalf : 2 * (m : ℂ) / 2 = (m : ℂ) := by ring
  rw [Gammaℝ_def, hargs, hhalf, hgamma, norm_mul, Complex.norm_natCast]
  calc
    _ ≤ 1 * ((m - 1).factorial : ℝ) := mul_le_mul_of_nonneg_right hpi (by positivity)
    _ ≤ (m.factorial : ℝ) := by
      simp only [one_mul]
      exact_mod_cast Nat.factorial_le (Nat.sub_le m 1)

lemma norm_completed_even_le (m : ℕ) (hm : 2 ≤ m) :
    ‖completedRiemannZeta (2 * (m : ℂ))‖ ≤ zetaMajorant * Real.exp ((m : ℝ)^2) := by
  have hs0 : 2 * (m : ℂ) ≠ 0 := by
    have : m ≠ 0 := by omega
    exact mul_ne_zero two_ne_zero (Nat.cast_ne_zero.mpr this)
  have hgp : 0 < (2 * (m : ℂ)).re := by
    simp only [mul_re, re_ofNat, natCast_re, im_ofNat, natCast_im, mul_zero, sub_zero,
      Nat.ofNat_pos, mul_pos_iff_of_pos_left, Nat.cast_pos]
    omega
  have heq : completedRiemannZeta (2 * (m : ℂ)) =
      riemannZeta (2 * (m : ℂ)) * Gammaℝ (2 * (m : ℂ)) := by
    rw [riemannZeta_def_of_ne_zero hs0, div_mul_cancel₀ _ (Gammaℝ_ne_zero_of_re_pos hgp)]
  rw [heq, norm_mul]
  have hz : ‖riemannZeta (2 * (m : ℂ))‖ ≤ zetaMajorant := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using norm_zeta_nat_le (2 * m) (by omega)
  exact mul_le_mul hz ((norm_gammaR_even_le m (by omega)).trans (factorial_le_exp_square m))
    (norm_nonneg _) zetaMajorant_nonneg

lemma norm_pole_zero_le_one (m : ℕ) (hm : 1 ≤ m) :
    ‖1 / (2 * (m : ℂ))‖ ≤ 1 := by
  rw [norm_div, norm_one, norm_mul]
  simp only [norm_ofNat, Complex.norm_natCast]
  have hden : (1 : ℝ) ≤ 2 * (m : ℝ) := by exact_mod_cast (show 1 ≤ 2 * m by omega)
  simpa using one_div_le_one_div_of_le (show (0 : ℝ) < 1 by norm_num) hden

lemma norm_pole_one_le_one (m : ℕ) (hm : 1 ≤ m) :
    ‖1 / (1 - 2 * (m : ℂ))‖ ≤ 1 := by
  have hmR : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast hm
  have heq : (1 : ℂ) - 2 * (m : ℂ) = ((1 - 2 * (m : ℝ) : ℝ) : ℂ) := by push_cast; rfl
  have hn : ‖(1 : ℂ) - 2 * (m : ℂ)‖ = 2 * (m : ℝ) - 1 := by
    rw [heq, Complex.norm_real, Real.norm_eq_abs, abs_of_nonpos (by linarith : 1 - 2 * (m : ℝ) ≤ 0)]
    ring
  rw [norm_div, norm_one, hn]
  simpa using one_div_le_one_div_of_le (show (0 : ℝ) < 1 by norm_num)
    (show 1 ≤ 2 * (m : ℝ) - 1 by linarith)

/-- An unconditional Gaussian-growth envelope for actual positive-even completed zeta,
using a finite p-series constant and no zero-count or RH hypothesis. -/
lemma norm_completed_zero_even_le (m : ℕ) (hm : 2 ≤ m) :
    ‖completedRiemannZeta₀ (2 * (m : ℂ))‖ ≤
      (zetaMajorant + 2) * Real.exp ((m : ℝ)^2) := by
  have heq : completedRiemannZeta₀ (2 * (m : ℂ)) =
      (completedRiemannZeta (2 * (m : ℂ)) + 1 / (2 * (m : ℂ))) +
        1 / (1 - 2 * (m : ℂ)) := by
    rw [completedRiemannZeta_eq]
    ring
  rw [heq]
  calc
    _ ≤ ‖completedRiemannZeta (2 * (m : ℂ)) + 1 / (2 * (m : ℂ))‖ +
        ‖1 / (1 - 2 * (m : ℂ))‖ := norm_add_le _ _
    _ ≤ (‖completedRiemannZeta (2 * (m : ℂ))‖ + ‖1 / (2 * (m : ℂ))‖) +
        ‖1 / (1 - 2 * (m : ℂ))‖ := add_le_add (norm_add_le _ _) le_rfl
    _ ≤ (zetaMajorant * Real.exp ((m : ℝ)^2) + 1) + 1 :=
      add_le_add (add_le_add (norm_completed_even_le m hm) (norm_pole_zero_le_one m (by omega)))
        (norm_pole_one_le_one m (by omega))
    _ ≤ (zetaMajorant + 2) * Real.exp ((m : ℝ)^2) := by
      have he : 1 ≤ Real.exp ((m : ℝ)^2) := Real.one_le_exp_iff.mpr (sq_nonneg _)
      nlinarith

lemma completed_zero_even_re_bound : ∃ C : ℝ, 0 < C ∧ ∀ m : ℕ, 2 ≤ m →
    (completedRiemannZeta₀ (2 * (m : ℂ))).re ≤ C * Real.exp ((m : ℝ)^2) := by
  refine ⟨zetaMajorant + 2, by linarith [zetaMajorant_nonneg], ?_⟩
  intro m hm
  exact (Complex.re_le_norm _).trans (norm_completed_zero_even_le m hm)


open Complex Set HurwitzZeta

lemma shellGrowth_evenKernel_one_le {t : ℝ} (ht : 0 < t) :
    1 ≤ HurwitzZeta.evenKernel 0 t := by
  have hs := HurwitzZeta.hasSum_nat_cosKernel₀ 0 ht
  have hp : 0 ≤ ∑' n : ℕ, 2 * Real.cos (2 * Real.pi * 0 * (n + 1)) *
      Real.exp (-Real.pi * (n + 1) ^ 2 * t) :=
    tsum_nonneg (fun n ↦ by
      simp only [mul_zero, zero_mul, Real.cos_zero, mul_one, neg_mul, Nat.ofNat_pos,
        mul_nonneg_iff_of_pos_left]
      positivity)
  rw [hs.tsum_eq] at hp
  rw [HurwitzZeta.evenKernel_eq_cosKernel_of_zero]
  simpa using hp


lemma shellGrowth_fmodif_im (t : ℝ) :
    ((hurwitzEvenFEPair 0).f_modif t).im = 0 := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  by_cases ha : t ∈ Ioi (1 : ℝ) <;> by_cases hb : t ∈ Ioo (0 : ℝ) 1 <;>
    simp [ha, hb, hurwitzEvenFEPair]

lemma shellGrowth_fmodif_nonneg {t : ℝ} (ht : 0 < t) :
    0 ≤ ((hurwitzEvenFEPair 0).f_modif t).re := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  rcases lt_trichotomy t 1 with h | rfl | h
  · have h₁ : ¬t ∈ Ioi (1 : ℝ) := by simpa using h.le
    have h₂ : t ∈ Ioo (0 : ℝ) 1 := ⟨ht, h⟩
    simp only [indicator_of_notMem h₁, indicator_of_mem h₂, zero_add]
    simp only [hurwitzEvenFEPair, Function.comp_apply, if_true, smul_eq_mul,
      one_mul, mul_one, Complex.sub_re, Complex.ofReal_re]
    have hi := shellGrowth_evenKernel_one_le (one_div_pos.mpr ht)
    rw [evenKernel_eq_cosKernel_of_zero] at hi
    rw [evenKernel_functional_equation]
    rw [Real.rpow_neg ht.le]
    exact sub_nonneg.mpr (by simpa [one_div] using
      mul_le_mul_of_nonneg_left hi (show 0 ≤ (t ^ (1 / 2 : ℝ))⁻¹ by positivity))
  · simp [hurwitzEvenFEPair]
  · simp only [indicator_of_mem (show t ∈ Ioi (1 : ℝ) from h),
      indicator_of_notMem (notMem_Ioo_of_ge h.le), add_zero]
    simpa [hurwitzEvenFEPair] using shellGrowth_evenKernel_one_le ht

open MeasureTheory
noncomputable section

lemma shellGrowth_fmodif_real (t : ℝ) :
    (hurwitzEvenFEPair 0).f_modif t = (((hurwitzEvenFEPair 0).f_modif t).re : ℂ) := by
  apply Complex.ext <;> simp [shellGrowth_fmodif_im]

lemma shellGrowth_mellin_integrable (s : ℂ) :
    IntegrableOn (fun t : ℝ ↦ (t : ℂ) ^ (s / 2 - 1) *
      (hurwitzEvenFEPair 0).f_modif t) (Ioi 0) := by
  exact ((hurwitzEvenFEPair 0).isStrongFEPair_toStrongFEPair.hasMellin (s / 2)).1

lemma shellGrowth_lambda_integral (s : ℂ) :
    completedRiemannZeta₀ s =
      (∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s / 2 - 1) *
        (hurwitzEvenFEPair 0).f_modif t) / 2 := rfl

lemma shellGrowth_real_integrand (a : ℝ) {t : ℝ} (ht : 0 < t) :
    (t : ℂ) ^ ((a : ℂ) / 2 - 1) * (hurwitzEvenFEPair 0).f_modif t =
      (t ^ (a / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re : ℝ) := by
  rw [shellGrowth_fmodif_real, Complex.ofReal_mul]
  congr 1
  simpa using (Complex.ofReal_cpow ht.le (a / 2 - 1)).symm

lemma shellGrowth_real_integrable (a : ℝ) :
    IntegrableOn (fun t : ℝ ↦ t ^ (a / 2 - 1) *
      ((hurwitzEvenFEPair 0).f_modif t).re) (Ioi 0) := by
  apply (shellGrowth_mellin_integrable a).re.congr
  apply (ae_restrict_iff' measurableSet_Ioi).mpr
  filter_upwards with t ht
  rw [shellGrowth_real_integrand a ht]
  rfl

lemma shellGrowth_real_integral (a : ℝ) :
    (completedRiemannZeta₀ a).re =
      (∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) *
        ((hurwitzEvenFEPair 0).f_modif t).re) / 2 := by
  rw [shellGrowth_lambda_integral, Complex.div_ofNat_re]
  congr 1
  change Complex.reCLM _ = _
  rw [← Complex.reCLM.integral_comp_comm (shellGrowth_mellin_integrable a)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t ht
  dsimp only
  rw [shellGrowth_real_integrand a ht]
  rfl

lemma shellGrowth_strip_bound (s : ℂ) (a b : ℝ) (ha : a ≤ s.re) (hb : s.re ≤ b) :
    ‖completedRiemannZeta₀ s‖ ≤
      (completedRiemannZeta₀ a).re + (completedRiemannZeta₀ b).re := by
  have hi : ‖∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s / 2 - 1) *
      (hurwitzEvenFEPair 0).f_modif t‖ ≤
      ∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re +
        t ^ (b / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re := by
    apply norm_integral_le_of_norm_le ((shellGrowth_real_integrable a).add
      (shellGrowth_real_integrable b))
    apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with t ht
    change 0 < t at ht
    rw [norm_mul, shellGrowth_fmodif_real t,
      Complex.norm_of_nonneg (shellGrowth_fmodif_nonneg ht),
      Complex.norm_cpow_eq_rpow_re_of_pos ht, Complex.sub_re,
      Complex.div_ofNat_re, Complex.one_re, Pi.add_apply, ← add_mul]
    apply mul_le_mul_of_nonneg_right _ (shellGrowth_fmodif_nonneg ht)
    rcases le_total t 1 with ht1 | ht1
    · exact (Real.rpow_le_rpow_of_exponent_ge ht ht1 (by linarith)).trans
        (le_add_of_nonneg_right (by positivity))
    · exact (Real.rpow_le_rpow_of_exponent_le ht1 (by linarith)).trans
        (le_add_of_nonneg_left (by positivity))
  rw [integral_add (shellGrowth_real_integrable a) (shellGrowth_real_integrable b)] at hi
  rw [shellGrowth_lambda_integral, norm_div, norm_ofNat, shellGrowth_real_integral,
    shellGrowth_real_integral]
  simpa only [add_div] using div_le_div_of_nonneg_right hi (show (0 : ℝ) ≤ 2 by norm_num)

lemma shellGrowth_integer_endpoint_bound (s : ℂ) (m : ℕ)
    (ha : 1 - (2 * m : ℝ) ≤ s.re) (hb : s.re ≤ (2 * m : ℝ)) :
    ‖completedRiemannZeta₀ s‖ ≤ 2 * (completedRiemannZeta₀ (2 * m)).re := by
  have ht := shellGrowth_strip_bound s (1 - 2 * m) (2 * m) ha hb
  push_cast at ht
  rw [completedRiemannZeta₀_one_sub] at ht
  linarith


lemma shellGrowth_sphere_of_endpoint (C : ℝ) (hC : 0 < C)
    (hbound : ∀ m : ℕ, 2 ≤ m →
      (completedRiemannZeta₀ (2 * m)).re ≤ C * Real.exp ((m : ℝ) ^ 2)) :
    ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z : ℂ, z ∈ Metric.sphere 0 (2 * r) →
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤ Real.exp (A * r ^ 4) := by
  refine ⟨12 * C + 25, by positivity, ?_⟩
  intro r hr z hz
  have hr0 : 0 < r := by linarith
  have hzNorm : ‖z‖ = 2 * r := by simpa [Metric.mem_sphere, dist_eq_norm] using hz
  let m : ℕ := ⌈2 * r⌉₊ + 2
  have hm2 : 2 ≤ m := by dsimp [m]; omega
  have hrm : 2 * r ≤ (m : ℝ) := by
    have := Nat.le_ceil (2 * r)
    dsimp [m]
    push_cast
    linarith
  have hmr : (m : ℝ) ≤ 5 * r := by
    have := Nat.ceil_lt_add_one (show 0 ≤ 2 * r by positivity)
    dsimp [m]
    push_cast
    linarith
  have hzre : |z.re| ≤ 2 * r := hzNorm ▸ Complex.abs_re_le_norm z
  have hstrip := shellGrowth_integer_endpoint_bound z m (by
    have := (abs_le.mp hzre).1
    have : (2 : ℝ) ≤ m := by exact_mod_cast hm2
    linarith) (by linarith [(abs_le.mp hzre).2])
  have hL : ‖completedRiemannZeta₀ z‖ ≤ 2 * C * Real.exp (25 * r ^ 2) := by
    apply hstrip.trans
    have hmexp : Real.exp ((m : ℝ) ^ 2) ≤ Real.exp (25 * r ^ 2) := by
      apply Real.exp_le_exp.mpr
      nlinarith [show (0 : ℝ) ≤ m from Nat.cast_nonneg m]
    nlinarith [hbound m hm2, mul_le_mul_of_nonneg_left hmexp hC.le]
  have hzm : ‖z - 1‖ ≤ 3 * r := by
    calc
      ‖z - 1‖ ≤ ‖z‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ 3 * r := by rw [hzNorm, norm_one]; linarith
  have hf : ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
      (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) := by
    calc
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
          ‖z‖ * ‖z - 1‖ * ‖completedRiemannZeta₀ z‖ + 1 := by
        simpa only [norm_mul, norm_one] using norm_add_le
          (z * (z - 1) * completedRiemannZeta₀ z) 1
      _ ≤ (2 * r) * (3 * r) * (2 * C * Real.exp (25 * r ^ 2)) + 1 := by
        rw [hzNorm]
        gcongr
      _ ≤ _ := by
        have he : 1 ≤ Real.exp (25 * r ^ 2) := Real.one_le_exp (by positivity)
        nlinarith
  apply hf.trans
  calc
    (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) ≤
        Real.exp (12 * C * r ^ 2) * Real.exp (25 * r ^ 2) := by
      gcongr
      exact Real.add_one_le_exp _
    _ = Real.exp ((12 * C + 25) * r ^ 2) := by rw [← Real.exp_add]; congr 1; ring
    _ ≤ Real.exp ((12 * C + 25) * r ^ 4) := by
      apply Real.exp_le_exp.mpr
      have hr2 : r ^ 2 ≤ r ^ 4 := by nlinarith [sq_nonneg (r ^ 2 - 1)]
      exact mul_le_mul_of_nonneg_left hr2 (by positivity)

lemma shellGrowth_global :
    ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z : ℂ, z ∈ Metric.sphere 0 (2 * r) →
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤ Real.exp (A * r ^ 4) := by
  obtain ⟨C, hC, hbound⟩ :=
    completed_zero_even_re_bound
  exact shellGrowth_sphere_of_endpoint C hC hbound
end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellGrowth
```
