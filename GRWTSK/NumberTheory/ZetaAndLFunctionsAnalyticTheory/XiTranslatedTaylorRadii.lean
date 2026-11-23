/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ZeroFreeHalfPlaneCriterion
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.Tactic

/-! Rational translates of the Euler-side unit disk for the completed zeta divisor. -/

namespace GRWTSK.XiTranslatedTaylorRadii

open GRWTSK.RiemannHypothesis

/-- Squared distance from a zero to the exterior Taylor center. -/
noncomputable def centerSq (t : ℝ) (z : ℂ) : ℝ := (3/2-z.re)^2 + (t-z.im)^2

theorem centerSq_eq_norm (t : ℝ) (z : ℂ) :
    centerSq t z = ‖(⟨3/2,t⟩ : ℂ) - z‖^2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp [centerSq, pow_two]

/-- The exact width in height for detecting a rightward displacement. -/
theorem disk_gap (t : ℝ) (z : ℂ) :
    1 - centerSq t z = (z.re-1/2)*(5/2-z.re) - (t-z.im)^2 := by
  unfold centerSq
  ring

theorem rational_detects_right_zero {z : ℂ} (hr : 1/2 < z.re) (h1 : z.re ≤ 1) :
    ∃ q : ℚ, centerSq (q : ℝ) z < 1 := by
  obtain ⟨q,hq,hq'⟩ := exists_rat_btwn (show z.im < z.im + (z.re-1/2) by linarith)
  refine ⟨q, ?_⟩
  have hprod : 0 < ((z.re-1/2)-((q:ℝ)-z.im))*((z.re-1/2)+((q:ℝ)-z.im)) :=
    mul_pos (by linarith) (by linarith)
  have hside : 0 < (z.re-1/2)*(3-2*z.re) := mul_pos (by linarith) (by linarith)
  unfold centerSq
  nlinarith

/-- Characterization at countably many exterior centers, using Mathlib's true target. -/
theorem rh_iff_rational_disks :
    _root_.RiemannHypothesis ↔
      ∀ (q : ℚ) (z : ℂ), NontrivialZetaZero z → 1 ≤ centerSq (q : ℝ) z := by
  constructor
  · intro hr q z hz
    have he := hr z hz.1 hz.2.1 hz.2.2
    unfold centerSq
    rw [he]
    nlinarith [sq_nonneg ((q:ℝ)-z.im)]
  · intro hd
    apply riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane (σ := 1/2) le_rfl
    intro z hr hz
    have h1 : z.re ≤ 1 := le_of_not_ge (fun h => riemannZeta_ne_zero_of_one_le_re h hz.1)
    obtain ⟨q,hq⟩ := rational_detects_right_zero hr h1
    exact (not_lt_of_ge (hd q z hz)) hq

/-- A single integer-spaced row can geometrically miss a transverse displacement. -/
theorem half_grid_miss (n : ℤ) :
    1 < centerSq (n : ℝ) (⟨3/5,1/2⟩ : ℂ) := by
  have h : n ≤ 0 ∨ 1 ≤ n := by omega
  rcases h with hn|hn
  · have h' : (n:ℝ) ≤ 0 := by exact_mod_cast hn
    unfold centerSq
    norm_num
    nlinarith [sq_nonneg (n:ℝ)]
  · have h' : 1 ≤ (n:ℝ) := by exact_mod_cast hn
    unfold centerSq
    norm_num
    nlinarith [mul_nonneg (show 0 ≤ (n:ℝ) by linarith) (show 0 ≤ (n:ℝ)-1 by linarith)]

/-- Each logarithmic-derivative Taylor contribution is paid by the positive
exterior Poisson contribution, with the horizontal distance floor to its order. -/
theorem pole_charge {d δ r : ℝ} (hd : 0 < d) (hδ : d ≤ δ) (hr : δ ≤ r) (k : ℕ) :
    d^(k+1) / r^(k+2) ≤ δ/r^2 := by
  have hr' : 0 < r := lt_of_lt_of_le hd (hδ.trans hr)
  have hk := pow_le_pow_left₀ hd.le (hδ.trans hr) k
  have h := mul_le_mul hk hδ hd.le (pow_nonneg hr'.le k)
  apply (div_le_div_iff₀ (pow_pos hr' _) (sq_pos_of_pos hr')).2
  rw [pow_add r k 2, pow_succ]
  nlinarith [mul_le_mul_of_nonneg_right h (sq_nonneg r)]

end GRWTSK.XiTranslatedTaylorRadii
