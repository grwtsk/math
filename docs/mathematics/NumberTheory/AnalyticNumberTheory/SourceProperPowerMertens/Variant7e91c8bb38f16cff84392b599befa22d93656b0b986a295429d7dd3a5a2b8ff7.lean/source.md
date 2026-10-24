# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProperPowerMertens.Variant7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7c84995668a909984fbfcf0e5d17788dabc31d5` · SHA-256 `7e91c8bb38f16cff84392b599befa22d93656b0b986a295429d7dd3a5a2b8ff7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceProperPowerInventory

/-! Completed applications of the finite all-power bound to the original
weighted-prime sums. No prime square or higher power is omitted. -/
set_option autoImplicit false
noncomputable section
namespace RH16ProperPowerMertens

open Finset Real ArithmeticFunction
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open RH16ProperPowerCell RH16ProperPowerInventory

theorem tailProperMass_one_eq (N : ℕ) :
    tailProperMass 1 N = weightedMangoldt N - weightedPrime N := by
  rw [tailProperMass, weighted_difference]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h1 : n = 1
  · subst n
    simp [properPowerCoefficient, primeCoefficient]
  · have hm : 1 < n.minFac := (Nat.minFac_prime h1).one_lt
    simp [hm]

theorem weighted_difference_le_three_halves (N : ℕ) :
    weightedMangoldt N - weightedPrime N ≤ 3 / 2 := by
  rw [← tailProperMass_one_eq]
  have hb := tailProperMass_le_budget 1 N (by omega)
  norm_num [powerTailBudget] at hb
  exact hb

theorem weightedPrime_sub_log_bounds (N : ℕ) (hN : 1 ≤ N) :
    -(5 / 2 : ℝ) ≤ weightedPrime N - Real.log N ∧
      weightedPrime N - Real.log N ≤ Real.log 4 + 4 := by
  have hwm := weightedMangoldt_sub_log_bounds N hN
  have hdiff0 := weighted_difference_nonneg N
  have hdiff := weighted_difference_le_three_halves N
  constructor <;> linarith

/-- The same explicit constant survives the asymmetric natural-floor transport. -/
theorem weightedPrime_mertens_real_fixed (x : ℝ) (hx : 1 ≤ x) :
    |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ) / (p : ℝ)) -
      Real.log x| ≤ Real.log 4 + 4 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.one_le_floor_iff x).mpr hx
  have hb := weightedPrime_sub_log_bounds ⌊x⌋₊ hN
  have hfloor := abs_le.mp (log_floor_error x hx)
  have hfloor0 : Real.log (⌊x⌋₊ : ℝ) - Real.log x ≤ 0 := by
    apply sub_nonpos.mpr
    apply Real.log_le_log
    · exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
    · exact Nat.floor_le (by linarith)
  have hlog24 : Real.log (2 : ℝ) ≤ Real.log 4 :=
    Real.log_le_log (by norm_num) (by norm_num)
  rw [← weightedPrime_eq_filtered]
  apply abs_le.mpr
  constructor <;> linarith

/-- The logarithmic cutoff specialization retains the original fixed source floor. -/
theorem weightedPrime_logcutoff_fixed (t : ℝ) (ht : 0 ≤ t) :
    |(∑ p ∈ (Ioc 0 ⌊Real.exp t⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ)) - t| ≤ Real.log 4 + 4 := by
  simpa using weightedPrime_mertens_real_fixed (Real.exp t) (Real.one_le_exp_iff.mpr ht)

end RH16ProperPowerMertens
```
