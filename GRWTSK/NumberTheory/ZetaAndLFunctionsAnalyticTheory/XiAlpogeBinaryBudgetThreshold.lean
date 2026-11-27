/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeBinaryBudget
import Mathlib.Analysis.Real.Sqrt

/-!
# Scaled upper and lower bounds decide fixed binary thresholds

At order n the binary budget has normalized logarithm
b·log(2)·(floor(sqrt n)+1). Thus any eventual upper coefficient at most
b·log(2) ensures a pass, while a strictly greater eventual lower coefficient
forces failure. Both directions refer to the actual finite rational product.
-/

namespace GRWTSK.XiAlpogeBinaryBudgetThreshold
open XiAlpogeRoundedProduct XiAlpogeRationalRampWindow XiAlpogeRationalRampCenter
open XiAlpogeBinaryBudget Filter

/-- Fixed integer budget b and the rounded rational prime product. -/
def fixedTest (b n : ℕ) : Prop :=
  roundedValue n (approxExp n) ≤ (2:ℚ)^(b*n*(n.sqrt+1))

/-- The normalized logarithm of the tested product. -/
noncomputable def productScore (n : ℕ) : ℝ :=
  Real.log (roundedValue n (approxExp n) : ℝ) / n

private theorem product_pos {n : ℕ} (hn : 0 < n) : 0 < roundedValue n (approxExp n) := by
  have hE := approxExp_pos n
  unfold roundedValue
  apply mul_pos (pow_pos (by positivity) _)
  apply Finset.prod_pos
  intro p hp
  have hpr : p.Prime := (Finset.mem_filter.mp hp).2
  exact pow_pos (by exact_mod_cast hpr.pos) _

/-- No logarithm is needed to evaluate the rational side. -/
theorem fixedTest_iff {n : ℕ} (hn : 0 < n) (b : ℕ) :
    fixedTest b n ↔ productScore n ≤ (b:ℝ)*Real.log 2*((n.sqrt:ℝ)+1) := by
  unfold fixedTest productScore
  have hn' : (0:ℝ) < n := by exact_mod_cast hn
  have hpos : (0:ℝ) < (roundedValue n (approxExp n):ℝ) := by exact_mod_cast product_pos hn
  rw [← Rat.cast_le (K := ℝ)]
  push_cast
  rw [← Real.log_le_log_iff hpos (by positivity), Real.log_pow, div_le_iff₀ hn']
  push_cast
  ring_nf

/-- A scaled upper bound below the limiting threshold suffices for every
late order. Equality of the leading coefficients is allowed in this direction. -/
theorem eventually_fixed_of_scaled_upper {C : ℝ} (b : ℕ) (hC : C ≤ (b:ℝ)*Real.log 2)
    (h : ∀ᶠ n : ℕ in atTop, productScore n ≤ C*Real.sqrt n) :
    ∀ᶠ n : ℕ in atTop, fixedTest b n := by
  have hl : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  filter_upwards [h, eventually_gt_atTop 0] with n hn hn0
  apply (fixedTest_iff hn0 b).mpr
  calc
    _ ≤ C*Real.sqrt n := hn
    _ ≤ ((b:ℝ)*Real.log 2)*Real.sqrt n := mul_le_mul_of_nonneg_right hC (Real.sqrt_nonneg _)
    _ ≤ _ := mul_le_mul_of_nonneg_left Real.real_sqrt_lt_nat_sqrt_succ.le
      (mul_nonneg (Nat.cast_nonneg b) hl)

/-- The larger lower coefficient absorbs the single integer of rounding
in the threshold as the order tends to infinity. -/
theorem eventually_fails_of_scaled_lower {c : ℝ} (b : ℕ) (hc : (b:ℝ)*Real.log 2 < c)
    (h : ∀ᶠ n : ℕ in atTop, c*Real.sqrt n ≤ productScore n) :
    ∀ᶠ n : ℕ in atTop, ¬fixedTest b n := by
  let t : ℝ := b*Real.log 2
  have ht : 0 ≤ t := mul_nonneg (Nat.cast_nonneg b) (Real.log_nonneg (by norm_num))
  have hct : 0 < c-t := sub_pos.mpr hc
  have hlim : Tendsto (fun n : ℕ => Real.sqrt (n:ℝ)) atTop atTop :=
    Real.tendsto_sqrt_atTop.comp tendsto_natCast_atTop_atTop
  filter_upwards [h, hlim.eventually_gt_atTop (t/(c-t)), eventually_gt_atTop 0]
    with n hn hlarge hn0
  intro hpass
  have htest := (fixedTest_iff hn0 b).mp hpass
  change productScore n ≤ t*((n.sqrt:ℝ)+1) at htest
  have hdiff : t < Real.sqrt (n:ℝ)*(c-t) := (div_lt_iff₀ hct).mp hlarge
  have hround : t*((n.sqrt:ℝ)+1) ≤ t*(Real.sqrt (n:ℝ)+1) := by
    apply mul_le_mul_of_nonneg_left _ ht
    exact add_le_add_left Real.nat_sqrt_le_real_sqrt _
  nlinarith

/-- The coefficient three is the actual fixed budget in the window criterion. -/
theorem eventually_binaryBudget_of_scaled_upper {C : ℝ} (hC : C ≤ 3*Real.log 2)
    (h : ∀ᶠ n : ℕ in atTop, productScore n ≤ C*Real.sqrt n) :
    ∀ᶠ n : ℕ in atTop, binaryTest n :=
  eventually_fixed_of_scaled_upper 3 (by simpa using hC) h

theorem eventually_fails_two_of_scaled_lower {c : ℝ} (hc : 2*Real.log 2 < c)
    (h : ∀ᶠ n : ℕ in atTop, c*Real.sqrt n ≤ productScore n) :
    ∀ᶠ n : ℕ in atTop, ¬fixedTest 2 n :=
  eventually_fails_of_scaled_lower 2 (by simpa using hc) h

end GRWTSK.XiAlpogeBinaryBudgetThreshold
