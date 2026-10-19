import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Exp

open Complex
open scoped Real
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellEndpoint

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
  have hgp : 0 < (2 * (m : ℂ)).re := by simp; exact_mod_cast (show 0 < m by omega)
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

#print axioms norm_completed_zero_even_le
#print axioms completed_zero_even_re_bound
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellEndpoint
