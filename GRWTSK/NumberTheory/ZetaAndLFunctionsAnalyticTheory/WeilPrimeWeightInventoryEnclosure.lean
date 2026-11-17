/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeWeightRationalEnclosure
import Mathlib.Data.Nat.Sqrt

/-! # Executable weight enclosures on the native Weil inventory -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- Scale the radicand by `d²` before taking its floor square root.
Non-prime-powers contribute the exact zero interval. -/
def inventoryPrimeWeightEnclosure (n k d : ℕ) : ℚ × ℚ :=
  if IsPrimePow n then
    let m := Nat.sqrt (n * d ^ 2)
    rationalPrimeWeightEnclosure n.minFac k ((m : ℚ) / d) (((m + 1 : ℕ) : ℚ) / d)
  else (0, 0)

/-- Every index, including off-support indices, has certified endpoints
as long as the denominator scale is positive. -/
theorem inventoryPrimeWeightEnclosure_correct (n k d : ℕ) (hd : 0 < d) :
    ((inventoryPrimeWeightEnclosure n k d).1 : ℝ) ≤ LowSchur.primeWeight n ∧
      LowSchur.primeWeight n ≤ ((inventoryPrimeWeightEnclosure n k d).2 : ℝ) := by
  unfold inventoryPrimeWeightEnclosure
  split_ifs with h
  · let m := Nat.sqrt (n * d ^ 2)
    obtain ⟨p, e, hp, he, hn⟩ := (isPrimePow_nat_iff n).1 h
    have hbase : n.minFac = p := by rw [← hn, hp.pow_minFac he.ne']
    have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
    have hm : 0 < m := Nat.sqrt_pos.mpr (Nat.mul_pos (hn ▸ pow_pos hp.pos _) (pow_pos hd _))
    have hlo : (m : ℚ) ^ 2 ≤ (n : ℚ) * (d : ℚ) ^ 2 := by
      exact_mod_cast Nat.sqrt_le' (n * d ^ 2)
    have hhi : (n : ℚ) * (d : ℚ) ^ 2 ≤ (((m + 1 : ℕ) : ℚ)) ^ 2 := by
      exact_mod_cast (Nat.lt_succ_sqrt' (n * d ^ 2)).le
    have ha : 0 < (m : ℚ) / d := div_pos (by exact_mod_cast hm) hdQ
    have hb : 0 ≤ (((m + 1 : ℕ) : ℚ)) / d := by positivity
    have haSq : ((m : ℚ) / d) ^ 2 ≤ (n : ℚ) := by
      rw [div_pow]
      exact (div_le_iff₀ (pow_pos hdQ 2)).2 hlo
    have hbSq : (n : ℚ) ≤ ((((m + 1 : ℕ) : ℚ)) / d) ^ 2 := by
      rw [div_pow]
      exact (le_div_iff₀ (pow_pos hdQ 2)).2 hhi
    rw [hbase]
    have bounds := rationalPrimeWeightEnclosure_correct hp he.ne' k ha hb
      (by simpa only [hn] using haSq) (by simpa only [hn] using hbSq)
    simpa only [hn, m] using bounds
  · simp [LowSchur.primeWeight, ArithmeticFunction.vonMangoldt_apply, h]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
