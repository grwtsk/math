/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Elementary growth of critical Möbius interval blocks

The coefficient bound `|μ(n)| ≤ 1` gives the natural linear and square-root
bounds for the two finite prefixes.  Inserted into the exact critical-block
majorants, these prove an unconditional harmonic `O(1/n)` block bound.  This
quantifies the logarithmic loss left before the required uniform boundary
estimate; it does not assert summability of the blocks.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.ArithmeticFunctions

/-- The elementary coefficient bound gives the sharp linear allowance for the
closed Mertens prefix. -/
theorem pickupMertensPrefix_abs_le_natCast (n : ℕ) :
    |pickupMertensPrefix n| ≤ (n : ℝ) := by
  unfold pickupMertensPrefix
  calc
    |∑ k ∈ Finset.Icc 1 n, GRWTSK.RiemannHypothesis.CCC.moebiusReal k| ≤
        ∑ k ∈ Finset.Icc 1 n, |GRWTSK.RiemannHypothesis.CCC.moebiusReal k| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _k ∈ Finset.Icc 1 n, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _
      simpa [GRWTSK.RiemannHypothesis.CCC.moebiusReal,
        GRWTSK.NumberTheory.ArithmeticFunctions.moebiusReal] using
          GRWTSK.NumberTheory.ArithmeticFunctions.moebiusReal_abs_le_one k
    _ = (n : ℝ) := by simp [Nat.card_Icc]

/-- Abel summation converts the elementary linear Mertens allowance into the
natural square-root allowance for the weighted prefix. -/
theorem pickupWeightedPrefix_abs_le_two_sqrt {n : ℕ} (hn : 1 ≤ n) :
    |pickupWeightedPrefix n| ≤ 2 * Real.sqrt n := by
  have h := pickupWeightedPrefix_le_of_mertensPowerBound
    (C := (1 : ℝ)) (β := (1 : ℝ)) (by norm_num) (by norm_num)
    (fun k _ => by simpa using pickupMertensPrefix_abs_le_natCast k) n hn
  norm_num at h
  simpa [Real.sqrt_eq_rpow] using h

/-- Each exact critical block has an unconditional harmonic upper bound. -/
theorem criticalIntervalBlock_le_harmonic {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤ 40 / (n : ℝ) := by
  have hx : (0 : ℝ) < n := by positivity
  have hAabs := pickupWeightedPrefix_abs_le_two_sqrt hn
  have hMabs := pickupMertensPrefix_abs_le_natCast n
  have hsqrt : Real.sqrt (n : ℝ) ^ 2 = (n : ℝ) := Real.sq_sqrt hx.le
  have hA2 : pickupWeightedPrefix n ^ 2 ≤ 4 * (n : ℝ) := by
    have h := (sq_le_sq₀ (abs_nonneg (pickupWeightedPrefix n))
      (mul_nonneg (by norm_num) (Real.sqrt_nonneg n))).2 hAabs
    rw [sq_abs, mul_pow, hsqrt] at h
    norm_num at h ⊢
    exact h
  have hM2 : pickupMertensPrefix n ^ 2 ≤ (n : ℝ) ^ 2 := by
    have h := (sq_le_sq₀ (abs_nonneg (pickupMertensPrefix n)) hx.le).2 hMabs
    simpa only [sq_abs] using h
  have hinvA : (n : ℝ) * (n : ℝ) ^ (-(2 : ℝ)) = 1 / (n : ℝ) := by
    rw [Real.rpow_neg hx.le, Real.rpow_two]
    field_simp [hx.ne']
  have hinvM : (n : ℝ) ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) = 1 / (n : ℝ) := by
    rw [Real.rpow_neg hx.le]
    field_simp [hx.ne']
    exact (Real.rpow_natCast (n : ℝ) 3).symm
  have hAterm : pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) ≤
      4 / (n : ℝ) := by
    calc
      _ ≤ (4 * (n : ℝ)) * (n : ℝ) ^ (-(2 : ℝ)) :=
        mul_le_mul_of_nonneg_right hA2 (Real.rpow_nonneg hx.le _)
      _ = 4 / (n : ℝ) := by rw [mul_assoc, hinvA]; ring
  have hMterm : pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) ≤
      1 / (n : ℝ) := by
    calc
      _ ≤ (n : ℝ) ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) :=
        mul_le_mul_of_nonneg_right hM2 (Real.rpow_nonneg hx.le _)
      _ = 1 / (n : ℝ) := hinvM
  calc
    criticalIntervalBlock n ≤ criticalIntervalMajorant n :=
      criticalIntervalBlock_le_majorant n
    _ ≤ criticalPrefixPowerMajorant n :=
      criticalIntervalMajorant_le_prefixPowerMajorant hn
    _ ≤ criticalPrefixSquareMajorant n :=
      criticalPrefixPowerMajorant_le_squareMajorant hn
    _ ≤ 40 / (n : ℝ) := by
      unfold criticalPrefixSquareMajorant
      calc
        8 * (pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) +
            pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ))) ≤
            8 * (4 / (n : ℝ) + 1 / (n : ℝ)) := by
          gcongr
        _ = 40 / (n : ℝ) := by ring

/-- The elementary block estimate sums to at most forty times the harmonic
number.  This is finite-horizon control, not a horizon-uniform bound. -/
theorem criticalIntervalBlockSum_le_harmonic (N : ℕ) :
    criticalIntervalBlockSum N ≤ 40 * (harmonic N : ℝ) := by
  unfold criticalIntervalBlockSum
  calc
    (∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, 40 / (n : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      exact criticalIntervalBlock_le_harmonic (Finset.mem_Icc.mp hn).1
    _ = 40 * (harmonic N : ℝ) := by
      rw [harmonic_eq_sum_Icc, Rat.cast_sum]
      simp_rw [Rat.cast_inv, Rat.cast_natCast, Finset.mul_sum, div_eq_mul_inv]

/-- In particular, the elementary critical block budget grows at most
logarithmically with the arithmetic horizon. -/
theorem criticalIntervalBlockSum_le_log (N : ℕ) :
    criticalIntervalBlockSum N ≤ 40 * (1 + Real.log N) := by
  calc
    criticalIntervalBlockSum N ≤ 40 * (harmonic N : ℝ) :=
      criticalIntervalBlockSum_le_harmonic N
    _ ≤ 40 * (1 + Real.log N) := by
      gcongr
      exact harmonic_le_one_add_log N

end GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth

#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth.pickupMertensPrefix_abs_le_natCast
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth.pickupWeightedPrefix_abs_le_two_sqrt
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth.criticalIntervalBlock_le_harmonic
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth.criticalIntervalBlockSum_le_harmonic
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth.criticalIntervalBlockSum_le_log
