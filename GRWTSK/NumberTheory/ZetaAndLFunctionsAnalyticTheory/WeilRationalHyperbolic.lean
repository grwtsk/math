/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Rational hyperbolic enclosures from certified logarithms

MSC2020: 33B10, 65G20. Consumer: WeilPoleSampling.
Finite rational log comparisons admit positive exponential endpoints. Their
reciprocals enclose the negative exponential, with the reversed order paid.
The actual Real.sinh and Real.cosh are then enclosed by rational arithmetic.
No floating transcendental observation, infinite-tail omission or new axiom.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, kernel replay, transitive
axiom audit and independent review NOT_RUN. See the adjacent provenance.
-/
set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalHyperbolic

open RationalLogarithms

/-- The sinh endpoint as a rational function of a positive exp endpoint. -/
def sinhEndpoint (a : ℚ) : ℚ := (a - 1 / a) / 2

def coshLower (a b : ℚ) : ℚ := (a + 1 / b) / 2

def coshUpper (a b : ℚ) : ℚ := (b + 1 / a) / 2

/-- Admit exp(x) using only finite rational comparisons at positive endpoints.
The exp inverse is applied only after positivity of both endpoints is proved. -/
theorem exp_bounds_of_log_checks (x a b : ℚ) (N : ℕ)
    (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hl : upper a N ≤ x) (hu : x ≤ lower b N) :
    (a : ℝ) ≤ Real.exp (x : ℝ) ∧ Real.exp (x : ℝ) ≤ (b : ℝ) := by
  have haR : (0 : ℝ) < (a : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num : (0 : ℚ) < 1) ha)
  have hbR : (0 : ℝ) < (b : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num : (0 : ℚ) < 1) hb)
  have hlR : (upper a N : ℝ) ≤ (x : ℝ) := by exact_mod_cast hl
  have huR : (x : ℝ) ≤ (lower b N : ℝ) := by exact_mod_cast hu
  have hleft := Real.exp_le_exp.mpr ((log_enclosure ha N).2.trans hlR)
  have hright := Real.exp_le_exp.mpr (huR.trans (log_enclosure hb N).1)
  rw [Real.exp_log haR] at hleft
  rw [Real.exp_log hbR] at hright
  exact ⟨hleft, hright⟩

/-- The reciprocal intervals are reversed; there is no independence assumption. -/
theorem sinh_bounds_of_exp_bounds {x a b : ℝ} (ha : 0 < a)
    (hl : a ≤ Real.exp x) (hu : Real.exp x ≤ b) :
    (a - 1 / a) / 2 ≤ Real.sinh x ∧ Real.sinh x ≤ (b - 1 / b) / 2 := by
  have hrecL := one_div_le_one_div_of_le (Real.exp_pos x) hu
  have hrecU := one_div_le_one_div_of_le ha hl
  rw [Real.sinh_eq, Real.exp_neg]
  simp only [one_div] at hrecL hrecU ⊢
  constructor <;> linarith

/-- A valid cosh enclosure uses opposite reciprocal endpoints. -/
theorem cosh_bounds_of_exp_bounds {x a b : ℝ} (ha : 0 < a)
    (hl : a ≤ Real.exp x) (hu : Real.exp x ≤ b) :
    (a + 1 / b) / 2 ≤ Real.cosh x ∧ Real.cosh x ≤ (b + 1 / a) / 2 := by
  have hrecL := one_div_le_one_div_of_le (Real.exp_pos x) hu
  have hrecU := one_div_le_one_div_of_le ha hl
  rw [Real.cosh_eq, Real.exp_neg]
  simp only [one_div] at hrecL hrecU ⊢
  constructor <;> linarith

/-- Return finite log checks to the genuine hyperbolic sine. -/
theorem sinh_bounds_of_log_checks (x a b : ℚ) (N : ℕ)
    (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hl : upper a N ≤ x) (hu : x ≤ lower b N) :
    (sinhEndpoint a : ℝ) ≤ Real.sinh (x : ℝ) ∧
      Real.sinh (x : ℝ) ≤ (sinhEndpoint b : ℝ) := by
  have haR : (0 : ℝ) < (a : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num : (0 : ℚ) < 1) ha)
  obtain ⟨hleft, hright⟩ := exp_bounds_of_log_checks x a b N ha hb hl hu
  simpa only [sinhEndpoint, Rat.cast_div, Rat.cast_sub, Rat.cast_one, Rat.cast_ofNat] using
    sinh_bounds_of_exp_bounds haR hleft hright

/-- A rational source modulus can use this actual cosh upper bound. -/
theorem cosh_bounds_of_log_checks (x a b : ℚ) (N : ℕ)
    (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hl : upper a N ≤ x) (hu : x ≤ lower b N) :
    (coshLower a b : ℝ) ≤ Real.cosh (x : ℝ) ∧
      Real.cosh (x : ℝ) ≤ (coshUpper a b : ℝ) := by
  have haR : (0 : ℝ) < (a : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num : (0 : ℚ) < 1) ha)
  obtain ⟨hleft, hright⟩ := exp_bounds_of_log_checks x a b N ha hb hl hu
  simpa only [coshLower, coshUpper, Rat.cast_div, Rat.cast_add, Rat.cast_one, Rat.cast_ofNat] using
    cosh_bounds_of_exp_bounds haR hleft hright

theorem sinhEndpoint_nonneg {a : ℚ} (ha : 1 ≤ a) : 0 ≤ sinhEndpoint a := by
  have hap : 0 < a := lt_of_lt_of_le (by norm_num) ha
  have hrec : 1 / a ≤ 1 := (div_le_one hap).2 ha
  unfold sinhEndpoint
  linarith

/-- Odd reflection covers negative spatial arguments without changing the source. -/
theorem sinh_negative_bounds {x : ℝ} {l u : ℚ}
    (hl : (l : ℝ) ≤ Real.sinh x) (hu : Real.sinh x ≤ (u : ℝ)) :
    ((-u : ℚ) : ℝ) ≤ Real.sinh (-x) ∧ Real.sinh (-x) ≤ ((-l : ℚ) : ℝ) := by
  rw [Real.sinh_neg]
  push_cast
  constructor <;> linarith

/-- Outward rounding to a proposed rational center is checked, not assumed exact. -/
theorem sinh_sample_of_log_checks (x a b p e : ℚ) (N : ℕ)
    (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hl : upper a N ≤ x) (hu : x ≤ lower b N)
    (hp : p - e ≤ sinhEndpoint a) (hq : sinhEndpoint b ≤ p + e) :
    |Real.sinh (x : ℝ) - (p : ℝ)| ≤ (e : ℝ) := by
  obtain ⟨hsL, hsU⟩ := sinh_bounds_of_log_checks x a b N ha hb hl hu
  have hpR : (p : ℝ) - (e : ℝ) ≤ (sinhEndpoint a : ℝ) := by exact_mod_cast hp
  have hqR : (sinhEndpoint b : ℝ) ≤ (p : ℝ) + (e : ℝ) := by exact_mod_cast hq
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalHyperbolic
