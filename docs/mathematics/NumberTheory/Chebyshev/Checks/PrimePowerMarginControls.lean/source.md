# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.PrimePowerMarginControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8134904a6da6686ac7dff6008676d79e3f877fc1` · SHA-256 `1cb8a906df4f809f775cb52f24f5530498d550503114fe658203262411e5b63a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

set_option autoImplicit false

/-!
# Arithmetic controls for proper-power subtraction

Ordinary finite `decide` terms are proof drafts, not a report of Lean execution.
The interval `(8,9]` contains the proper prime power nine but no prime. The first
square interval charges the upper endpoint four. A non-strict zero margin does
not force a prime. No control is an analytic estimate or global prime theorem.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.PrimePowerMarginControls

open scoped BigOperators
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness
open GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

noncomputable section

/-- Nine contributes log three, not log nine. -/
theorem correction_eight_nine : properPrimePowerMass 8 9 = Real.log 3 := by
  have hi : Finset.Ioc (8 : ℕ) 9 = {9} := by decide
  have hp : ¬ Nat.Prime 9 := by decide
  have hv : ArithmeticFunction.vonMangoldt 9 = Real.log 3 := by
    simpa using
      (ArithmeticFunction.vonMangoldt_apply_pow (n := 3) (k := 2) (by decide)).trans
        (ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 3))
  simp [properPrimePowerMass, hi, hp, hv]

/-- The same closed-right interval has zero prime-only mass. -/
theorem theta_eight_nine : Chebyshev.theta 9 - Chebyshev.theta 8 = 0 := by
  have hi : Finset.Ioc (8 : ℕ) 9 = {9} := by decide
  have hp : ¬ Nat.Prime 9 := by decide
  simpa [hi, hp] using theta_sub_nat_eq_prime_sum 8 9 (by decide)

/-- A positive actual prime-power increment does not imply a positive prime count. -/
theorem positive_source_without_prime :
    0 < chebyshevPrimePower 9 - chebyshevPrimePower 8 ∧ intervalCount 8 9 = 0 := by
  have hs := source_sub_eq_theta_sub_add_proper 8 9 (by decide)
  have hl : 0 < Real.log 3 := Real.log_pos (by norm_num)
  constructor
  · norm_num only [Nat.cast_ofNat] at hs
    rw [theta_eight_nine, correction_eight_nine, zero_add] at hs
    linarith
  · decide

/-- Equality at the corrected margin remains compatible with a zero prime count. -/
theorem non_strict_margin_control :
    0 ≤ Real.log 3 - 0 - Real.log 3 ∧ intervalCount 8 9 = 0 := by
  constructor
  · simp
  · decide

/-- Four is a charged proper-power endpoint of the first square interval. -/
theorem first_square_upper_correction : properPrimePowerMass 1 4 = Real.log 2 := by
  have hi : Finset.Ioc (1 : ℕ) 4 = {2, 3, 4} := by decide
  have h2 : Nat.Prime 2 := by decide
  have h3 : Nat.Prime 3 := by decide
  have h4 : ¬ Nat.Prime 4 := by decide
  have hv : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
    simpa using
      (ArithmeticFunction.vonMangoldt_apply_pow (n := 2) (k := 2) (by decide)).trans
        (ArithmeticFunction.vonMangoldt_apply_prime h2)
  simp [properPrimePowerMass, hi, h2, h3, h4, hv]

/-- Omitting that upper endpoint strictly decreases the proper-power inventory. -/
theorem upper_endpoint_omission_changes_correction :
    properPrimePowerMass 1 3 = 0 ∧ 0 < properPrimePowerMass 1 4 := by
  have hi : Finset.Ioc (1 : ℕ) 3 = {2, 3} := by decide
  have h2 : Nat.Prime 2 := by decide
  have h3 : Nat.Prime 3 := by decide
  constructor
  · simp [properPrimePowerMass, hi, h2, h3]
  · rw [first_square_upper_correction]
    exact Real.log_pos (by norm_num)

/-- The weighted prime-only consumer does accept an interval with actual primes. -/
theorem first_square_positive_weight :
    0 < Chebyshev.theta 4 - Chebyshev.theta 1 := by
  have h := (theta_square_sub_pos_iff 1).mpr (by decide : 0 < squareCount 1)
  simpa using h

/-- A prime right endpoint invalidates the open-interval transfer without the nonprime guard. -/
theorem prime_upper_endpoint_control :
    0 < Chebyshev.theta 3 - Chebyshev.theta 2 ∧ intervalCount 2 3 = 0 := by
  have hi : Finset.Ioc (2 : ℕ) 3 = {3} := by decide
  have hp : Nat.Prime 3 := by decide
  have hs : Chebyshev.theta 3 - Chebyshev.theta 2 = Real.log 3 := by
    simpa [hi, hp] using theta_sub_nat_eq_prime_sum 2 3 (by decide)
  constructor
  · rw [hs]
    exact Real.log_pos (by norm_num)
  · decide

end

end GRWTSK.NumberTheory.Chebyshev.Checks.PrimePowerMarginControls
```
