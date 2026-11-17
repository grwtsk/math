/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic

/-!
# Rational thresholds for the Montgomery–Taylor window

The closed form is the constant in Alpöge–Furman, arXiv:2608.13637v2,
Theorem A, and in the pinned Zeta23 solution. A strict rational margin
lets a consumer choose an epsilon before using an eventual zero-count
estimate. The trigonometric estimate is independent of zero counting.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.MontgomeryTaylorWindow

open scoped Nat

/-- The closed form of the bandwidth-one Montgomery–Taylor window constant. -/
noncomputable def windowConstant : ℝ :=
  let x : ℝ := 1 / Real.sqrt 2
  Real.sqrt 2 * Real.tan x / (1 + x * Real.tan x)

private theorem antitoneTaylorTerm {x : ℝ} (hx₀ : 0 ≤ x) (hx₁ : x ≤ 1) (k : ℕ) :
    Antitone (fun n : ℕ => x ^ (2 * n + k) / ((2 * n + k)! : ℝ)) := by
  apply antitone_nat_of_succ_le
  intro n
  have hm : 2 * (n + 1) + k = 2 * n + k + 2 := by omega
  rw [hm, pow_add]
  have hpow : x ^ 2 ≤ 1 := by
    simpa using pow_le_pow_left₀ hx₀ hx₁ 2
  have hfact : ((2 * n + k)! : ℝ) ≤ ((2 * n + k + 2)! : ℝ) := by
    exact_mod_cast Nat.factorial_le (show 2 * n + k ≤ 2 * n + k + 2 by omega)
  have hdenom : (0 : ℝ) < ((2 * n + k)! : ℝ) := by exact_mod_cast Nat.factorial_pos _
  have hdenom' : (0 : ℝ) < ((2 * n + k + 2)! : ℝ) := by exact_mod_cast Nat.factorial_pos _
  calc
    _ ≤ x ^ (2 * n + k) / ((2 * n + k + 2)! : ℝ) :=
      div_le_div_of_nonneg_right
        (mul_le_of_le_one_right (pow_nonneg hx₀ _) hpow) hdenom'.le
    _ ≤ _ := div_le_div_of_nonneg_left (pow_nonneg hx₀ _) hdenom hfact

private theorem sin_lower_cos_upper {x : ℝ} (hx₀ : 0 ≤ x) (hx₁ : x ≤ 1)
    (hx₂ : x ^ 2 = 1 / 2) :
    x * (37043 / 40320) ≤ Real.sin x ∧ Real.cos x ≤ 163483 / 215040 := by
  have hs := Antitone.alternating_series_le_tendsto
    (by simpa only [mul_div_assoc] using (Real.hasSum_sin x).tendsto_sum_nat)
    (antitoneTaylorTerm hx₀ hx₁ 1) 2
  have hc := Antitone.tendsto_le_alternating_series
    (by simpa only [add_zero, mul_div_assoc] using (Real.hasSum_cos x).tendsto_sum_nat)
    (antitoneTaylorTerm hx₀ hx₁ 0) 2
  norm_num [Finset.sum_range_succ, Nat.factorial] at hs hc
  constructor
  · rw [show x ^ 3 = x * (x ^ 2) by ring, show x ^ 5 = x * (x ^ 2) ^ 2 by ring,
      show x ^ 7 = x * (x ^ 2) ^ 3 by ring, hx₂] at hs
    linarith only [hs]
  · rw [show x ^ 4 = (x ^ 2) ^ 2 by ring, show x ^ 6 = (x ^ 2) ^ 3 by ring,
      show x ^ 8 = (x ^ 2) ^ 4 by ring, hx₂] at hc
    linarith only [hc]

/-- The exact optimized constants strictly exceed the rational gates. -/
theorem rational_thresholds_lt :
    (269 / 400 : ℝ) < 2 - 1 / windowConstant ∧
      (669 / 800 : ℝ) < 3 / 2 - windowConstant⁻¹ / 2 := by
  let x : ℝ := 1 / Real.sqrt 2
  have hx₀ : 0 < x := by dsimp [x]; positivity
  have hx₂ : x ^ 2 = 1 / 2 := by
    dsimp [x]
    rw [div_pow, one_pow, Real.sq_sqrt (by norm_num)]
  have hx₁ : x ≤ 1 := by nlinarith only [hx₀, hx₂, sq_nonneg (x - 1)]
  obtain ⟨hs, hc⟩ := sin_lower_cos_upper hx₀.le hx₁ hx₂
  have hsin : 0 < Real.sin x := lt_of_lt_of_le (by positivity) hs
  have hcos : 0 < Real.cos x :=
    Real.cos_pos_of_mem_Ioo ⟨by linarith [Real.pi_gt_three], by linarith [Real.pi_gt_three]⟩
  have hratio : x * Real.cos x / Real.sin x < 331 / 400 := by
    apply (div_lt_iff₀ hsin).mpr
    calc
      _ ≤ x * (163483 / 215040) := mul_le_mul_of_nonneg_left hc hx₀.le
      _ < (331 / 400 : ℝ) * (x * (37043 / 40320)) := by linarith only [hx₀]
      _ ≤ _ := mul_le_mul_of_nonneg_left hs (by norm_num)
  have hsqrt : Real.sqrt 2 = 1 / x := by
    dsimp [x]
    simp
  have hInv : 1 / windowConstant = 1 / 2 + x * Real.cos x / Real.sin x := by
    change 1 / (Real.sqrt 2 * Real.tan x / (1 + x * Real.tan x)) =
      1 / 2 + x * Real.cos x / Real.sin x
    rw [hsqrt, Real.tan_eq_sin_div_cos]
    have hd : (1 : ℝ) + x * (Real.sin x / Real.cos x) ≠ 0 := by positivity
    field_simp
    nlinarith only [congrArg (fun a : ℝ => a * Real.sin x) hx₂]
  constructor
  · rw [hInv]
    linarith only [hratio]
  · rw [← one_div, hInv]
    linarith only [hratio]

/-- Transfer the exact source asymptotics to the two integer thresholds.
The three functions must refer to the same total, simple-line and distinct
counts over the same height windows. -/
theorem eventually_rational_counts (total simple distinct : ℝ → ℕ)
    (hsimple : ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 - 1 / windowConstant - ε) * (total T : ℝ) ≤ simple T)
    (hdistinct : ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (3 / 2 - windowConstant⁻¹ / 2 - ε) * (total T : ℝ) ≤ distinct T) :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      269 * total T ≤ 400 * simple T ∧ 669 * total T ≤ 800 * distinct T := by
  obtain ⟨hs, hd⟩ := rational_thresholds_lt
  obtain ⟨Ts, hTs⟩ := hsimple (2 - 1 / windowConstant - 269 / 400) (sub_pos.mpr hs)
  obtain ⟨Td, hTd⟩ := hdistinct (3 / 2 - windowConstant⁻¹ / 2 - 669 / 800) (sub_pos.mpr hd)
  refine ⟨max Ts Td, fun T hT => ⟨?_, ?_⟩⟩
  · have h := hTs T ((le_max_left Ts Td).trans hT)
    have hcoef : (2 - 1 / windowConstant) - (2 - 1 / windowConstant - 269 / 400) =
        (269 / 400 : ℝ) := by ring
    rw [hcoef] at h
    exact_mod_cast (show (269 : ℝ) * total T ≤ (400 : ℝ) * simple T by linarith only [h])
  · have h := hTd T ((le_max_right Ts Td).trans hT)
    have hcoef : (3 / 2 - windowConstant⁻¹ / 2) -
        (3 / 2 - windowConstant⁻¹ / 2 - 669 / 800) = (669 / 800 : ℝ) := by ring
    rw [hcoef] at h
    exact_mod_cast (show (669 : ℝ) * total T ≤ (800 : ℝ) * distinct T by linarith only [h])

end GRWTSK.NumberTheory.Zeta.MontgomeryTaylorWindow
