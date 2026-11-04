/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

/-!
# Exact square-root amplitude and finite critical-line sums

For a positive real x and rho.re = 1/2, the actual principal complex power
satisfies norm (x^rho) = sqrt x. Consequently a weighted finite sum is bounded
by sqrt x times the sum of coefficient norms. Dividing each coefficient by its
zero gives the finite zero-sum expression used in explicit formulae, with the
full sum norm(c_i)/norm(rho_i) retained. Since norm(rho_i) >= 1/2, a separate
coarse bound is available with constant 2. No cancellation estimate is assumed.

The primary argument is the exact complex-power norm identity and the triangle
inequality. Coefficient perturbations and disjoint truncation increments return
to these same source sums by algebraic equalities. The residual consumer retains
an independently bounded remainder; it does not supply an explicit formula for
prime counting or a tail bound. These missing analytic bridges are not RH.

Hostile checks: repeated roots attain the mass bound, so line localization alone
cannot imply square-root cancellation in the number of summands. Repetitions are
index multiplicities, not a claim about multiplicities of actual zeta zeros.
Positive x is essential to the real logarithm interpretation. No infinite sum,
zero enumeration, completeness of a truncation, or uniform height estimate is
inferred. These are classical elementary estimates, not novelty claims.

Consumer: ConditionalFiniteZeroCalculus supplies actual RH/GRH zero hypotheses.
Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612; complex-power
and real-power authors and their upstream licenses remain unchanged.
AI-assisted formalization; independent analytical review: NOT_RUN.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.NumberTheory.CriticalLine

open scoped BigOperators

variable {ι : Type*}

theorem power_norm {ρ : ℂ} (hρ : ρ.re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖(x : ℂ) ^ ρ‖ = Real.sqrt x := by
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hx, hρ, ← Real.sqrt_eq_rpow]

/-- Removing the exact square-root amplitude leaves unit norm. -/
theorem normalized_power_norm {ρ : ℂ} (hρ : ρ.re = 1 / 2)
    {x : ℝ} (hx : 0 < x) : ‖(x : ℂ) ^ (ρ - (1 / 2 : ℂ))‖ = 1 := by
  have hre : (ρ - (1 / 2 : ℂ)).re = 0 := by
    simp only [Complex.sub_re]
    norm_num [hρ]
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hx, hre, Real.rpow_zero]

/-- Critical-line denominators are nonzero, with an explicit uniform norm bound. -/
theorem inverse_norm_le_two {ρ : ℂ} (hρ : ρ.re = 1 / 2) : ‖ρ⁻¹‖ ≤ 2 := by
  have hnorm : (1 / 2 : ℝ) ≤ ‖ρ‖ := by
    calc
      (1 / 2 : ℝ) = ρ.re := hρ.symm
      _ ≤ |ρ.re| := le_abs_self _
      _ ≤ ‖ρ‖ := Complex.abs_re_le_norm _
  rw [norm_inv]
  calc
    ‖ρ‖⁻¹ ≤ (1 / 2 : ℝ)⁻¹ := by
      simpa only [one_div] using
        one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1 / 2) hnorm
    _ = 2 := by norm_num

/-- Coefficients may be complex, signed, or zero. -/
def powerSum (s : Finset ι) (roots coefficient : ι → ℂ) (x : ℝ) : ℂ :=
  ∑ i ∈ s, coefficient i * (x : ℂ) ^ roots i

theorem powerSum_norm_le (s : Finset ι) (roots coefficient : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖powerSum s roots coefficient x‖ ≤ Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ := by
  calc
    ‖powerSum s roots coefficient x‖ ≤
        ∑ i ∈ s, ‖coefficient i * (x : ℂ) ^ roots i‖ := norm_sum_le _ _
    _ = ∑ i ∈ s, ‖coefficient i‖ * Real.sqrt x := by
      apply Finset.sum_congr rfl
      intro i hi
      rw [norm_mul, power_norm (hline i hi) hx]
    _ = Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ := by
      rw [← Finset.sum_mul, mul_comm]

/-- Error in coefficients is measured in the exact weighted source expression. -/
theorem coefficient_error_le (s : Finset ι) (roots c d : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖powerSum s roots c x - powerSum s roots d x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖c i - d i‖ := by
  have hid : powerSum s roots c x - powerSum s roots d x =
      powerSum s roots (fun i => c i - d i) x := by
    simp only [powerSum, sub_mul, Finset.sum_sub_distrib]
  rw [hid]
  exact powerSum_norm_le s roots (fun i => c i - d i) hline hx

/-- Adding disjoint indices preserves every term, even when some root values coincide. -/
theorem disjoint_increment_le [DecidableEq ι] (s t : Finset ι)
    (hdis : Disjoint s t) (roots coefficient : ι → ℂ)
    (hline : ∀ i ∈ t, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖powerSum (s ∪ t) roots coefficient x - powerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ t, ‖coefficient i‖ := by
  have hid : powerSum (s ∪ t) roots coefficient x =
      powerSum s roots coefficient x + powerSum t roots coefficient x := by
    exact Finset.sum_union hdis
  rw [hid, add_sub_cancel_left]
  exact powerSum_norm_le t roots coefficient hline hx

/-- A finite zero sum, not an assertion that the omitted infinite tail converges. -/
def dividedPowerSum (s : Finset ι) (roots coefficient : ι → ℂ) (x : ℝ) : ℂ :=
  powerSum s roots (fun i => coefficient i / roots i) x

theorem dividedPowerSum_eq (s : Finset ι) (roots coefficient : ι → ℂ) (x : ℝ) :
    dividedPowerSum s roots coefficient x =
      ∑ i ∈ s, coefficient i * (x : ℂ) ^ roots i / roots i := by
  apply Finset.sum_congr rfl
  intro i _
  dsimp [dividedPowerSum, powerSum]
  ring

theorem dividedPowerSum_norm_le (s : Finset ι) (roots coefficient : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ := by
  simpa only [dividedPowerSum, norm_div] using
    powerSum_norm_le s roots (fun i => coefficient i / roots i) hline hx

/-- An intentionally coarse bound requiring no zero-counting or ordinate estimate. -/
theorem dividedPowerSum_coarse_bound (s : Finset ι) (roots coefficient : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots coefficient x‖ ≤
      2 * Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ := by
  calc
    ‖dividedPowerSum s roots coefficient x‖ ≤
        Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖ :=
      dividedPowerSum_norm_le s roots coefficient hline hx
    _ ≤ Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ * 2 := by
      apply mul_le_mul_of_nonneg_left _ (Real.sqrt_nonneg x)
      apply Finset.sum_le_sum
      intro i hi
      simpa only [div_eq_mul_inv, norm_inv] using
        mul_le_mul_of_nonneg_left (inverse_norm_le_two (hline i hi))
          (norm_nonneg (coefficient i))
    _ = 2 * Real.sqrt x * ∑ i ∈ s, ‖coefficient i‖ := by
      rw [← Finset.sum_mul]
      ring

/-- An exact formula and a complete remainder bound are separate consumer inputs. -/
theorem residual_bound (s : Finset ι) (roots coefficient : ι → ℂ)
    (hline : ∀ i ∈ s, (roots i).re = 1 / 2) {x : ℝ} (hx : 0 < x)
    {observed main remainder : ℂ} {R : ℝ}
    (formula : observed = main - dividedPowerSum s roots coefficient x + remainder)
    (hR : ‖remainder‖ ≤ R) :
    ‖observed - main‖ ≤
      Real.sqrt x * (∑ i ∈ s, ‖coefficient i‖ / ‖roots i‖) + R := by
  have hid : observed - main = -dividedPowerSum s roots coefficient x + remainder := by
    rw [formula]
    ring
  rw [hid]
  exact (norm_add_le _ _).trans
    (add_le_add (by simpa only [norm_neg] using
      dividedPowerSum_norm_le s roots coefficient hline hx) hR)

/-- Repeated-root data attain the mass bound: no cancellation follows from line location. -/
theorem repeated_root_sharp (n : ℕ) {ρ : ℂ} (hρ : ρ.re = 1 / 2)
    {x : ℝ} (hx : 0 < x) :
    ‖powerSum (Finset.range n) (fun _ => ρ) (fun _ => 1) x‖ =
      (n : ℝ) * Real.sqrt x := by
  simp only [powerSum, one_mul, Finset.sum_const, Finset.card_range, nsmul_eq_mul,
    norm_mul, norm_natCast, power_norm hρ hx]

end GRWTSK.NumberTheory.CriticalLine
