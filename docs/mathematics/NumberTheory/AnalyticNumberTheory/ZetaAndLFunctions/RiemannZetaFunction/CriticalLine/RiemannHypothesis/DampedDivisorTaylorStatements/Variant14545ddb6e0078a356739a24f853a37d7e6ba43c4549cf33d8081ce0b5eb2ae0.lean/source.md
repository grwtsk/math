# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DampedDivisorTaylorStatements.Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d111b550e6a0288d80710feaeb9ab9c098e24bc` · SHA-256 `14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorPrimePower
import FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-! Independent von Mangoldt approximation of the actual damped divisor coefficients. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorCoefficient DampedDivisorPrimePower DivisorFloorTransport
open MobiusFractionalResidual MobiusPoleNumerator
noncomputable section

private theorem exp_negative_remainder (u : ℝ) (hu : 0 ≤ u) :
    |Real.exp (-u) - 1 + u| ≤ u ^ 2 := by
  have hnon : 0 ≤ Real.exp (-u) - 1 + u := by
    linarith [Real.add_one_le_exp (-u)]
  rw [abs_of_nonneg hnon]
  have hpos : 0 < 1 + u := by positivity
  have he : Real.exp (-u) ≤ 1 / (1 + u) := by
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le hpos (by linarith [Real.add_one_le_exp u])
  have hr : 1 / (1 + u) ≤ 1 - u + u ^ 2 := by
    apply (div_le_iff₀ hpos).mpr
    nlinarith [pow_nonneg hu 3]
  linarith


/-- The actual coefficient has a uniform arithmetic first-order remainder without a divisor-count
loss. -/
theorem dampedDivisorCoefficient_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 1 ≤ n) :
    |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
      ε * ArithmeticFunction.vonMangoldt n| ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  by_cases h1 : n = 1
  · simp [h1, dampedDivisorCoefficient]
  by_cases hp : IsPrimePow n
  · obtain ⟨p, k, hprime, hk, rfl⟩ := (isPrimePow_nat_iff n).mp hp
    rw [if_neg h1, dampedDivisorCoefficient_prime_pow ε p k hprime hk,
      ArithmeticFunction.vonMangoldt_apply_pow hk.ne',
      ArithmeticFunction.vonMangoldt_apply_prime hprime, sub_zero]
    have hl0 : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hprime.one_le)
    have hp_le : p ≤ p ^ k := Nat.le_self_pow hk.ne' p
    have hl : Real.log (p : ℝ) ≤ Real.log ((p ^ k : ℕ) : ℝ) :=
      Real.log_le_log (by exact_mod_cast hprime.pos) (by exact_mod_cast hp_le)
    calc
      _ = |Real.exp (-(ε * Real.log (p : ℝ))) - 1 + ε * Real.log (p : ℝ)| := by
        rw [show 1 - Real.exp (-ε * Real.log (p : ℝ)) - ε * Real.log (p : ℝ) =
          -(Real.exp (-(ε * Real.log (p : ℝ))) - 1 + ε * Real.log (p : ℝ)) by ring,
          abs_neg]
      _ ≤ (ε * Real.log (p : ℝ)) ^ 2 := exp_negative_remainder _ (mul_nonneg hε hl0)
      _ ≤ _ := by
        have hs : Real.log (p : ℝ) ^ 2 ≤ Real.log ((p ^ k : ℕ) : ℝ) ^ 2 := by nlinarith
        nlinarith [mul_le_mul_of_nonneg_left hs (sq_nonneg ε)]
  · rw [if_neg h1, (ArithmeticFunction.vonMangoldt_eq_zero_iff).mpr hp, mul_zero,
      sub_zero, sub_zero, abs_of_nonneg (dampedDivisorCoefficient_nonneg ε hε n hn)]
    exact dampedDivisorCoefficient_le_sq_of_not_prime_pow ε hε n (by omega) hp

/-- The complete finite divisor prefix has its actual prime-power first-order approximation. -/
theorem dampedDivisorCoefficient_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 := by
  have he : (∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n =
      ∑ n ∈ Icc 1 N, (dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n) := by
    simp [sum_sub_distrib, ← mul_sum, hN]
  rw [he]
  calc
    _ ≤ ∑ n ∈ Icc 1 N, |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Icc 1 N, ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      exact dampedDivisorCoefficient_first_order ε hε n (mem_Icc.mp hn).1
    _ ≤ ∑ _n ∈ Icc 1 N, ε ^ 2 * Real.log (N : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      have h0 : 0 ≤ Real.log (n : ℝ) :=
        Real.log_nonneg (by exact_mod_cast (mem_Icc.mp hn).1)
      have hl : Real.log (n : ℝ) ≤ Real.log (N : ℝ) := Real.log_le_log
        (by exact_mod_cast (show 0 < n by have := (mem_Icc.mp hn).1; omega))
        (by exact_mod_cast (mem_Icc.mp hn).2)
      exact mul_le_mul_of_nonneg_left (by nlinarith) (sq_nonneg ε)
    _ = _ := by simp; ring

/-- The actual real cutoff retains all prime powers in the uniform finite-prefix remainder. -/
theorem dampedDivisorCoefficient_real_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (x : ℝ) (hx : 1 ≤ x) :
    |(∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.le_floor_iff (by linarith)).mpr (by simpa using hx)
  have hb := dampedDivisorCoefficient_prefix_first_order ε hε ⌊x⌋₊ hN
  have hle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have h0 : 0 ≤ Real.log (⌊x⌋₊ : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have hl : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x :=
    Real.log_le_log (by exact_mod_cast (show 0 < ⌊x⌋₊ by omega)) hle
  have hs : Real.log (⌊x⌋₊ : ℝ) ^ 2 ≤ Real.log x ^ 2 := by nlinarith
  exact hb.trans (mul_le_mul (mul_le_mul_of_nonneg_left hle (sq_nonneg ε)) hs
    (sq_nonneg _) (by positivity))

/-- Before the actual cutoff, the signed source differs from its exact prime prefix by this
budget. -/
theorem arithmeticResidual_prime_prefix_error (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X)
    (hε : 0 ≤ ε) (hx : 1 ≤ x) (hxX : x < X) :
    ‖arithmeticResidual X ε x - ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ))‖ ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  rw [arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX]
  have he : (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
      ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) -
      ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
        (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) =
      -(((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, norm_neg, Complex.norm_real, Real.norm_eq_abs]
  exact dampedDivisorCoefficient_real_prefix_first_order ε hε x hx

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorTaylor DampedDivisorCoefficient MobiusFractionalResidual MobiusPoleNumerator

example (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
      ε * ArithmeticFunction.vonMangoldt n| ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 :=
  dampedDivisorCoefficient_first_order ε hε n hn

example (ε : ℝ) (hε : 0 ≤ ε) (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 :=
  dampedDivisorCoefficient_prefix_first_order ε hε N hN

example (ε : ℝ) (hε : 0 ≤ ε) (x : ℝ) (hx : 1 ≤ x) :
    |(∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * x * Real.log x ^ 2 :=
  dampedDivisorCoefficient_real_prefix_first_order ε hε x hx

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (hx : 1 ≤ x)
    (hxX : x < X) :
    ‖arithmeticResidual X ε x - ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ))‖ ≤
        ε ^ 2 * x * Real.log x ^ 2 :=
  arithmeticResidual_prime_prefix_error X ε x hX hε hx hxX
```
