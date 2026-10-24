# Complete source: GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9d05c84f041f3bb0151e251e711a92dc6c366ee` · SHA-256 `fd58d78a5d4a9c8274d7b3a5b6005e55979591249070906c9cf32912ae1c080a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

/-!
# Mertens power bounds and weighted square energy

A pointwise Mertens bound at exponent `β` strictly between `1/2` and `1`
controls the exact positive Mertens-square energy at exponent `2β - 1`.
Thus the energy power-saving parameter is `2 - 2β`.

The result is conditional and does not assert a Mertens power bound.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.Asymptotics.FinitePowerSum
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

/-- A pointwise Mertens power bound gives an explicit bound for the positive
weighted Mertens-square energy. -/
theorem mertensSquareEnergy_le_of_powerBound {C β : ℝ}
    (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    ∀ n : ℕ, 1 ≤ n →
      mertensSquareEnergy n ≤
        (C ^ 2 + C ^ 2 / (2 * β - 1)) * (n : ℝ) ^ (2 * β - 1) := by
  intro n hn
  let α : ℝ := 2 * β - 1
  have hα0 : 0 < α := by dsimp [α]; linarith
  have hα1 : α ≤ 1 := by dsimp [α]; linarith
  have hsquare (k : ℕ) (hk : 1 ≤ k) :
      pickupMertensPrefix k ^ 2 ≤ C ^ 2 * (k : ℝ) ^ (2 * β) := by
    have hb := hM k hk
    have hsq : pickupMertensPrefix k ^ 2 ≤
        (C * (k : ℝ) ^ β) ^ 2 := by
      rw [← sq_abs]
      simpa only [pow_two] using
        mul_self_le_mul_self (abs_nonneg _) hb
    calc
      pickupMertensPrefix k ^ 2 ≤ (C * (k : ℝ) ^ β) ^ 2 := hsq
      _ = C ^ 2 * (k : ℝ) ^ (2 * β) := by
        rw [mul_pow]
        have hkpos : (0 : ℝ) < k := by exact_mod_cast hk
        rw [show ((k : ℝ) ^ β) ^ 2 = (k : ℝ) ^ (2 * β) by
          calc
            _ = ((k : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
            _ = (k : ℝ) ^ (β * 2) := (Real.rpow_mul hkpos.le β 2).symm
            _ = _ := by ring]
  have hterm (k : ℕ) (hk : 1 ≤ k) :
      pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) ≤
        C ^ 2 * (k : ℝ) ^ (α - 1) := by
    have hkpos : (0 : ℝ) < k := by exact_mod_cast hk
    calc
      pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ)) ≤
          (C * (k : ℝ) ^ β) ^ 2 / ((k : ℝ) * (k : ℝ)) := by
        apply div_le_div₀
        · positivity
        · have hb := hM k hk
          rw [← sq_abs]
          simpa only [pow_two] using
            mul_self_le_mul_self (abs_nonneg _) hb
        · positivity
        · gcongr
          exact_mod_cast Nat.le_succ k
      _ = C ^ 2 * (k : ℝ) ^ (α - 1) := by
        rw [mul_pow]
        have hrpow : ((k : ℝ) ^ β) ^ 2 = (k : ℝ) ^ (2 * β) := by
          calc
            _ = ((k : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
            _ = (k : ℝ) ^ (β * 2) := (Real.rpow_mul hkpos.le β 2).symm
            _ = _ := by ring
        rw [hrpow, show (k : ℝ) * (k : ℝ) = (k : ℝ) ^ (2 : ℝ) by
          rw [Real.rpow_two]; ring]
        calc
          C ^ 2 * (k : ℝ) ^ (2 * β) / (k : ℝ) ^ (2 : ℝ) =
              C ^ 2 * ((k : ℝ) ^ (2 * β) / (k : ℝ) ^ (2 : ℝ)) := by ring
          _ = C ^ 2 * (k : ℝ) ^ (2 * β - 2) := by
            rw [← Real.rpow_sub hkpos]
          _ = C ^ 2 * (k : ℝ) ^ (α - 1) := by
            dsimp [α]
            ring
  have hend : pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
      C ^ 2 * (n : ℝ) ^ α := by
    have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
    calc
      pickupMertensPrefix n ^ 2 / (n : ℝ) ≤
          (C ^ 2 * (n : ℝ) ^ (2 * β)) / (n : ℝ) := by
        gcongr
        exact hsquare n hn
      _ = C ^ 2 * (n : ℝ) ^ α := by
        calc
          C ^ 2 * (n : ℝ) ^ (2 * β) / (n : ℝ) =
              C ^ 2 * ((n : ℝ) ^ (2 * β) / (n : ℝ) ^ (1 : ℝ)) := by
            rw [Real.rpow_one, mul_div_assoc]
          _ = C ^ 2 * (n : ℝ) ^ (2 * β - 1) := by
            rw [← Real.rpow_sub hnpos]
          _ = C ^ 2 * (n : ℝ) ^ α := by rfl
  have hzero : (0 : ℝ) ^ (α - 1) = 0 :=
    Real.zero_rpow (by linarith : α - 1 ≠ 0)
  have hrange :
      (∑ k ∈ Finset.range n, (k : ℝ) ^ (α - 1)) ≤
        ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (α - 1) := by
    have hmem : 0 ∈ Finset.range n :=
      Finset.mem_range.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
    rw [← Finset.sum_erase_add (Finset.range n)
      (fun k : ℕ => (k : ℝ) ^ (α - 1)) hmem]
    simp only [Nat.cast_zero, hzero, add_zero]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro k hk
      simp only [Finset.mem_erase, Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr hk.1, hk.2.le⟩
    · intro k _ _
      exact Real.rpow_nonneg (Nat.cast_nonneg k) _
  have hhistory :
      (∑ k ∈ Finset.range n,
        pickupMertensPrefix k ^ 2 / ((k : ℝ) * (k + 1 : ℕ))) ≤
        (C ^ 2 / α) * (n : ℝ) ^ α := by
    calc
      _ ≤ ∑ k ∈ Finset.range n, C ^ 2 * (k : ℝ) ^ (α - 1) := by
        apply Finset.sum_le_sum
        intro k _hk
        by_cases hk0 : k = 0
        · subst k
          simp [pickupMertensPrefix, hzero]
        · exact hterm k (Nat.one_le_iff_ne_zero.mpr hk0)
      _ = C ^ 2 * ∑ k ∈ Finset.range n, (k : ℝ) ^ (α - 1) := by
        rw [Finset.mul_sum]
      _ ≤ C ^ 2 * ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (α - 1) :=
        mul_le_mul_of_nonneg_left hrange (sq_nonneg C)
      _ ≤ C ^ 2 * ((n : ℝ) ^ α / α) :=
        mul_le_mul_of_nonneg_left
          (sum_Icc_rpow_sub_one_le hα0 hα1 n) (sq_nonneg C)
      _ = (C ^ 2 / α) * (n : ℝ) ^ α := by ring
  unfold mertensSquareEnergy
  calc
    _ ≤ C ^ 2 * (n : ℝ) ^ α + (C ^ 2 / α) * (n : ℝ) ^ α :=
      add_le_add hend hhistory
    _ = (C ^ 2 + C ^ 2 / (2 * β - 1)) * (n : ℝ) ^ (2 * β - 1) := by
      dsimp [α]
      ring

/-- A pointwise Mertens bound between the square-root and linear scales pays
the exact positive Mertens-square energy premise. -/
theorem mertensSquareEnergyPowerSaving_of_mertensPowerBound {C β : ℝ}
    (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    MertensSquareEnergyPowerSaving := by
  let K : ℝ := C ^ 2 + C ^ 2 / (2 * β - 1)
  let δ : ℝ := 2 - 2 * β
  have hden : 0 < 2 * β - 1 := by linarith
  have hK : 0 ≤ K := by
    dsimp [K]
    positivity
  have hδ : 0 < δ := by dsimp [δ]; linarith
  refine ⟨K, δ, hK, hδ, ?_⟩
  intro n hn
  have h := mertensSquareEnergy_le_of_powerBound hβ0 hβ1 hM n hn
  dsimp [K, δ]
  convert h using 1
  ring

/-- The same pointwise Mertens power bound reaches the critical boundary
through the positive square-energy route. -/
theorem criticalBoundary_of_mertensPowerBound_viaSquareEnergy {C β : ℝ}
    (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensSquareEnergyPowerSaving
    (mertensSquareEnergyPowerSaving_of_mertensPowerBound hβ0 hβ1 hM)

end GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound.mertensSquareEnergy_le_of_powerBound
#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound.mertensSquareEnergyPowerSaving_of_mertensPowerBound
#print axioms GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound.criticalBoundary_of_mertensPowerBound_viaSquareEnergy
```
