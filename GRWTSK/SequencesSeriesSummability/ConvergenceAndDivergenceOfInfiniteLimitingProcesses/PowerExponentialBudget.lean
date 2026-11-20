/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

/-!
# Uniform absorption of a power-exponential error budget

Local attribution: grwtsk contributors.

This is an independent elementary proof of a numerical leaf in the submitted
power-window argument. It proves no arithmetic counting estimate and constructs
no power window. The proof first absorbs each of four terms separately using
strict separation between the exponents of their power functions.
-/

open Filter
open scoped Topology

namespace GRWTSK.Analysis.PowerExponentialBudget

/-- A fixed exponential of a smaller nonnegative power, with arbitrary real
coefficient and exponent multiplier, is eventually absorbed by any positive
multiple of a larger power in the exponent. -/
theorem eventually_mul_exp_rpow_le_exp (A D p q b : ℝ)
    (hp : 0 ≤ p) (hpq : p < q) (hb : 0 < b) :
    ∀ᶠ x : ℝ in atTop,
      A * Real.exp (D * x ^ p) ≤ Real.exp (b * x ^ q) := by
  let Q : ℝ := |A| + 1
  have hQ1 : 1 ≤ Q := by dsimp [Q]; linarith [abs_nonneg A]
  have hQ : 0 < Q := lt_of_lt_of_le zero_lt_one hQ1
  have hlogQ : 0 ≤ Real.log Q := Real.log_nonneg hQ1
  have hlarge : ∀ᶠ x : ℝ in atTop,
      (|D| + Real.log Q + 1) / b ≤ x ^ (q - p) :=
    (tendsto_rpow_atTop (sub_pos.mpr hpq)).eventually
      (eventually_ge_atTop ((|D| + Real.log Q + 1) / b))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hlarge] with x hx hxlarge
  have hxpos : 0 < x := lt_of_lt_of_le zero_lt_one hx
  have hxp : 1 ≤ x ^ p := Real.one_le_rpow hx hp
  have hxpn : 0 ≤ x ^ p := Real.rpow_nonneg hxpos.le p
  have hscale : |D| + Real.log Q + 1 ≤ b * x ^ (q - p) := by
    simpa only [mul_comm] using (div_le_iff₀ hb).mp hxlarge
  have hproduct : x ^ (q - p) * x ^ p = x ^ q := by
    rw [← Real.rpow_add hxpos]
    congr 1
    ring
  have hexponent : Real.log Q + D * x ^ p ≤ b * x ^ q := by
    have hlog := mul_le_mul_of_nonneg_left hxp hlogQ
    have hD := mul_le_mul_of_nonneg_right (le_abs_self D) hxpn
    have hscaled := mul_le_mul_of_nonneg_right hscale hxpn
    rw [mul_assoc, hproduct] at hscaled
    nlinarith
  calc
    A * Real.exp (D * x ^ p) ≤ Q * Real.exp (D * x ^ p) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      dsimp [Q]
      linarith [le_abs_self A]
    _ = Real.exp (Real.log Q + D * x ^ p) := by
      rw [Real.exp_add, Real.exp_log hQ]
    _ ≤ Real.exp (b * x ^ q) := Real.exp_le_exp.mpr hexponent

/-- Uniformly in `u`, its logarithmic size bound turns an arbitrary real
power `u^C` into an exponential of a smaller power of `x`. -/
theorem rpow_le_exp_of_log_le (x ε u C : ℝ) (hu : 1 ≤ u)
    (hlog : Real.log u ≤ 2 * x ^ (ε / 4)) :
    u ^ C ≤ Real.exp ((2 * |C|) * x ^ (ε / 4)) := by
  have hup : 0 < u := lt_of_lt_of_le zero_lt_one hu
  have hlogu : 0 ≤ Real.log u := Real.log_nonneg hu
  rw [Real.rpow_def_of_pos hup]
  apply Real.exp_le_exp.mpr
  calc
    Real.log u * C ≤ Real.log u * |C| :=
      mul_le_mul_of_nonneg_left (le_abs_self C) hlogu
    _ ≤ (2 * x ^ (ε / 4)) * |C| :=
      mul_le_mul_of_nonneg_right hlog (abs_nonneg C)
    _ = (2 * |C|) * x ^ (ε / 4) := by ring

/-- The exact elementary error budget used below the submitted arithmetic
window construction. `K` and `C` have no sign restrictions, and the cutoff is
independent of `u`. The conclusion supplies neither the arithmetic terms being
estimated nor their hypotheses. -/
theorem error_terms_le_sqrt_exp_rpow (ε K C : ℝ) (hε : 0 < ε) :
    ∃ x₀ : ℝ, ∀ x ≥ x₀, ∀ u : ℝ,
      1 ≤ u → Real.log u ≤ 2 * x ^ (ε / 4) →
      Real.exp (x ^ (4 * ε / 5)) * Real.log 2 +
        K * Real.exp (8 * x ^ (ε / 4)) +
        (u ^ C + C * Real.exp (x ^ (4 * ε / 5))) ≤
        Real.sqrt (Real.exp (x ^ ε)) := by
  have hbig : 0 ≤ 4 * ε / 5 := by positivity
  have hbiglt : 4 * ε / 5 < ε := by linarith
  have hsmall : 0 ≤ ε / 4 := by positivity
  have hsmalllt : ε / 4 < ε := by linarith
  have h₁ := eventually_mul_exp_rpow_le_exp
    (4 * Real.log 2) 1 (4 * ε / 5) ε (1 / 2) hbig hbiglt (by norm_num)
  have h₂ := eventually_mul_exp_rpow_le_exp
    (4 * K) 8 (ε / 4) ε (1 / 2) hsmall hsmalllt (by norm_num)
  have h₃ := eventually_mul_exp_rpow_le_exp
    4 (2 * |C|) (ε / 4) ε (1 / 2) hsmall hsmalllt (by norm_num)
  have h₄ := eventually_mul_exp_rpow_le_exp
    (4 * C) 1 (4 * ε / 5) ε (1 / 2) hbig hbiglt (by norm_num)
  have hfinal : ∀ᶠ x : ℝ in atTop, ∀ u : ℝ,
      1 ≤ u → Real.log u ≤ 2 * x ^ (ε / 4) →
      Real.exp (x ^ (4 * ε / 5)) * Real.log 2 +
        K * Real.exp (8 * x ^ (ε / 4)) +
        (u ^ C + C * Real.exp (x ^ (4 * ε / 5))) ≤
        Real.sqrt (Real.exp (x ^ ε)) := by
    filter_upwards [h₁, h₂, h₃, h₄] with x hx₁ hx₂ hx₃ hx₄
    intro u hu hlog
    have huC := rpow_le_exp_of_log_le x ε u C hu hlog
    have hhalf : Real.exp ((1 / 2 : ℝ) * x ^ ε) =
        Real.sqrt (Real.exp (x ^ ε)) := by
      rw [show (1 / 2 : ℝ) * x ^ ε = x ^ ε / 2 by ring, Real.exp_half]
    simp only [one_mul] at hx₁ hx₄
    rw [hhalf] at hx₁ hx₂ hx₃ hx₄
    nlinarith
  exact eventually_atTop.mp hfinal

end GRWTSK.Analysis.PowerExponentialBudget
