/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRoundedWindowCriterion
import Mathlib.Data.Nat.Sqrt

/-!
# A fixed binary threshold for the rounded ordinary-prime product

One rational comparison per order suffices for all the larger threshold
exponents in the cofinal window criterion. The binary comparison and its
threshold depend only on the integer order.
-/

namespace GRWTSK.XiAlpogeBinaryBudget
open XiAlpogeFiniteWindowCriterion XiAlpogeRationalRampCenter
  XiAlpogeRoundedProduct XiAlpogeRoundedWindowCriterion

/-- Finite prime-product test with one fixed, integer square-root budget. -/
def binaryTest (n : ℕ) : Prop :=
  roundedValue n (approxExp n) ≤ (2 : ℚ)^(3*n*(n.sqrt+1))

instance (n : ℕ) : Decidable (binaryTest n) := by
  unfold binaryTest
  infer_instance

/-- The integer square root is below each supercritical power cutoff. -/
theorem sqrt_le_cutoff {n a b : ℕ} (hn : 1 ≤ n) (hb : 0 < b) (hab : b ≤ 2*a) :
    n.sqrt ≤ powerCutoff n a b := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hs : (n.sqrt : ℝ) ≤ Real.sqrt (n:ℝ) := by
    apply (Real.le_sqrt (by positivity) (by positivity)).2
    exact_mod_cast Nat.sqrt_le' n
  have hab' : (1/2 : ℝ) ≤ (a:ℝ)/b := by
    apply (le_div_iff₀ (show (0:ℝ)<b by exact_mod_cast hb)).mpr
    have hr : (b:ℝ) ≤ 2*a := by exact_mod_cast hab
    linarith
  rw [Real.sqrt_eq_rpow] at hs
  rw [powerCutoff_eq_ceil n a hb]
  have h := (hs.trans (Real.rpow_le_rpow_of_exponent_le hn' hab')).trans
    (Nat.le_ceil ((n:ℝ)^((a:ℝ)/b)))
  exact_mod_cast h

/-- On every integer order at least sixty-four, a passing binary test pays
the rounded test for any cutoff exponent at least one half. -/
theorem rounded_of_binary {n a b : ℕ} (hn : 64 ≤ n) (hb : 0 < b)
    (hab : b ≤ 2*a) (h : binaryTest n) : roundedTest n (powerCutoff n a b) := by
  have hs := sqrt_le_cutoff (n := n) (by omega) hb hab
  have hp : 0 < n.sqrt := Nat.sqrt_pos.mpr (by omega)
  have hle : n * (3*(n.sqrt + 1)) ≤ n * (6*powerCutoff n a b) :=
    Nat.mul_le_mul_left _ (by omega)
  have he : 3*n*(n.sqrt+1) ≤ 6*(n*powerCutoff n a b) := by
    simpa [Nat.mul_left_comm, Nat.mul_assoc, Nat.mul_comm] using hle
  unfold binaryTest at h
  unfold roundedTest
  refine h.trans ((pow_le_pow_right₀ (by norm_num : (1:ℚ) ≤ 2) he).trans ?_)
  rw [pow_mul]
  exact pow_le_pow_left₀ (by norm_num) (by exact_mod_cast (show 2^6 ≤ n by omega)) _

/-- Arbitrarily late integer windows satisfying the single fixed binary
test supply every rational-exponent window of the rounded-product criterion. -/
theorem rounded_windows_of_binary
    (h : ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → binaryTest n) :
    RoundedProductWindows := by
  intro a b hb hab L
  obtain ⟨M,hM,hw⟩ := h (max L 64)
  refine ⟨M,(Nat.le_max_left _ _).trans hM,?_⟩
  intro n hn hn'
  exact rounded_of_binary (((Nat.le_max_right _ _).trans hM).trans hn) hb hab.le (hw n hn hn')

/-- Return to the actual centered von Mangoldt statistic. -/
theorem centered_windows_of_binary
    (h : ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → binaryTest n) :
    XiAlpogeOrdinaryRamp.WindowCeilings XiAlpogeFiniteRampScore.centeredRamp (3/2) :=
  centeredRamp_windows_iff_roundedProducts.mpr (rounded_windows_of_binary h)

end GRWTSK.XiAlpogeBinaryBudget
