/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFiniteWindowCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRoundedProduct

/-!
# Changing the finite prime-product test by a single integer threshold

The real power endpoints use no continuous sampling. For any rational
exponent above one half, its midpoint with one half is again a rational
exponent above one half, and the larger integer threshold eventually
exceeds the smaller threshold by at least one.
-/

namespace GRWTSK.XiAlpogeRoundedWindowCriterion
open XiAlpogeFiniteWindowCriterion XiAlpogeRationalRampWindow XiAlpogeRationalRampCenter

/-- The interval between an exponent and the critical exponent absorbs one
integer step uniformly in all sufficiently large tested orders. -/
theorem cutoff_midpoint_succ_le (a b : ℕ) (hb : 0 < b) (hab : b < 2*a) :
    ∃ T : ℕ, ∀ n ≥ T, powerCutoff n (2*a+b) (4*b) + 1 ≤ powerCutoff n a b := by
  let s := ((2*a+b : ℕ) : ℝ)/(4*b : ℕ)
  let t := (a : ℝ)/b
  have hb' : 0 < (b:ℝ) := by exact_mod_cast hb
  have hab' : (b:ℝ) < 2*(a:ℝ) := by exact_mod_cast hab
  have hs : 0 ≤ s := by dsimp [s]; positivity
  have hst : s < t := by
    dsimp [s,t]
    push_cast
    apply (div_lt_div_iff₀ (by positivity) hb').2
    nlinarith [mul_pos (sub_pos.mpr hab') hb']
  obtain ⟨T,hT⟩ := eventually_scaled_le hst 3
  refine ⟨max 1 ⌈T⌉₊, ?_⟩
  intro n hn
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast (Nat.le_max_left 1 ⌈T⌉₊).trans hn
  have hT' : T ≤ (n:ℝ) :=
    (Nat.le_ceil T).trans (by exact_mod_cast (Nat.le_max_right 1 ⌈T⌉₊).trans hn)
  have hbase : 1 ≤ (n:ℝ)^s := Real.one_le_rpow hn1 hs
  have hcut := Nat.ceil_lt_add_one (Real.rpow_nonneg (Nat.cast_nonneg n) s)
  have hmax := Nat.le_ceil ((n:ℝ)^t)
  have hreal : ((⌈(n:ℝ)^s⌉₊ : ℕ) : ℝ)+1 ≤ (⌈(n:ℝ)^t⌉₊ : ℕ) := by
    linarith [hT n hT']
  rw [powerCutoff_eq_ceil _ _ (show 0 < 4*b by omega), powerCutoff_eq_ceil _ _ hb]
  exact_mod_cast hreal

/-- All-threshold-window quantifiers for a finite test. -/
def CofinalTests (T : ℕ → ℕ → Prop) : Prop :=
  ∀ a b : ℕ, 0 < b → b < 2*a → ∀ L : ℕ, ∃ M ≥ L,
    ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → T n (powerCutoff n a b)

/-- One-step rounding can be removed by working first at the midpoint
exponent inside the same family of cofinal windows. -/
theorem cofinalTests_iff_of_one_step (A B : ℕ → ℕ → Prop)
    (hAB : ∀ n m : ℕ, 2 ≤ n → A n m → B n m)
    (hBA : ∀ n m : ℕ, 2 ≤ n → B n m → A n (m+1))
    (hmono : ∀ n : ℕ, 2 ≤ n → Monotone (A n)) :
    CofinalTests A ↔ CofinalTests B := by
  constructor
  · intro h a b hb hab L
    obtain ⟨M,hM,hgrid⟩ := h a b hb hab (max L 2)
    refine ⟨M, (Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hn hh
    exact hAB n _ (((Nat.le_max_right _ _).trans hM).trans hn) (hgrid n hn hh)
  · intro h a b hb hab L
    obtain ⟨T,hT⟩ := cutoff_midpoint_succ_le a b hb hab
    obtain ⟨M,hM,hgrid⟩ := h (2*a+b) (4*b) (by omega) (by omega) (max L (max 2 T))
    refine ⟨M, (Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hn hh
    have h2 : 2 ≤ n :=
      (((Nat.le_max_left 2 T).trans (Nat.le_max_right L _)).trans hM).trans hn
    have hidx : T ≤ n :=
      (((Nat.le_max_right 2 T).trans (Nat.le_max_right L _)).trans hM).trans hn
    exact hmono n h2 (hT n hidx) (hBA n _ h2 (hgrid n hn hh))

open XiAlpogeRoundedProduct

/-- The rounded rational product test. The index and exponent use natural
arithmetic, and the product uses the ordinary primes through n. -/
def roundedTest (n m : ℕ) : Prop :=
  roundedValue n (approxExp n) ≤ (n:ℚ)^(n*m)

instance (n m : ℕ) : Decidable (roundedTest n m) := by
  unfold roundedTest
  infer_instance

/-- Cofinal integer windows for the rounded products at all rational
exponents strictly above 1/2. -/
def RoundedProductWindows : Prop := CofinalTests roundedTest

/-- Both tests have the same cofinal windows as a family over exponents. -/
theorem integerProducts_iff_roundedProducts : IntegerProductWindows ↔ RoundedProductWindows := by
  let A := fun n m : ℕ => value n (approxExp n) ≤ (n:ℚ)^(n.factorial*m)
  change CofinalTests A ↔ CofinalTests roundedTest
  apply cofinalTests_iff_of_one_step A roundedTest
  · intro n m hn h
    exact rounded_of_exact (by omega : 0 < n) m (approxExp_pos n) h
  · intro n m hn h
    exact exact_succ_of_rounded (by omega : 0 < n) m (approxExp_pos n) h
  · intro n hn u v huv h
    apply h.trans
    apply pow_le_pow_right₀ (by exact_mod_cast (show 1 ≤ n by omega))
    exact Nat.mul_le_mul_left _ huv

/-- Exact equivalence for Alpöge's centered von Mangoldt statistic and three-halves
windows, with an integer-decided rounded-prime-product test at each point. -/
theorem centeredRamp_windows_iff_roundedProducts :
    XiAlpogeOrdinaryRamp.WindowCeilings XiAlpogeFiniteRampScore.centeredRamp (3/2) ↔
      RoundedProductWindows :=
  centeredRamp_windows_iff_integerProducts.trans integerProducts_iff_roundedProducts

end GRWTSK.XiAlpogeRoundedWindowCriterion
