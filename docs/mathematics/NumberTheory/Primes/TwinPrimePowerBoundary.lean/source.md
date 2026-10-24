# Complete source: GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b2fac581ef0b3d2f816849aef39ff39d101994b` · SHA-256 `48a8c8d7ae8929e7d07b0cbe1ce43d9d4a044b141e073cf891f42fcce008ce49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact prime-pair and proper-prime-power boundary for twin correlations

The Mangoldt correlation contains prime powers.  This module defines the
prime-only logarithmic source, proves that its positivity is exactly positivity
of the existing `twinCount`, and exposes the complete finite difference as the
proper-prime-power correction.

A Mangoldt lower bound reaches an actual twin-prime witness only after a
separately supplied upper bound for that full correction.  No such quantitative
bound or parity-breaking estimate is constructed here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary

open scoped BigOperators ArithmeticFunction
open Finset Nat ArithmeticFunction
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion

noncomputable section

/-- Prime-only logarithmic weight at the literal shift two. -/
def twinPrimePairLogWeight (n : ℕ) : ℝ :=
  if Nat.Prime n ∧ Nat.Prime (n + 2) then
    Real.log n * Real.log (n + 2)
  else 0

/-- The bounded prime-only logarithmic correlation. -/
def twinPrimeLogCorrelation (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X, twinPrimePairLogWeight n

/-- Every prime-only pair weight is nonnegative. -/
theorem twinPrimePairLogWeight_nonneg
    (n : ℕ) :
    0 ≤ twinPrimePairLogWeight n := by
  by_cases hpair : Nat.Prime n ∧ Nat.Prime (n + 2)
  · rw [twinPrimePairLogWeight, if_pos hpair]
    exact mul_nonneg
      (Real.log_nonneg (by exact_mod_cast hpair.1.one_le))
      (Real.log_nonneg (by exact_mod_cast hpair.2.one_le))
  · simp [twinPrimePairLogWeight, hpair]

/-- An actual twin-prime pair has strictly positive logarithmic weight. -/
theorem twinPrimePairLogWeight_pos
    {n : ℕ} (hn : Nat.Prime n)
    (hn2 : Nat.Prime (n + 2)) :
    0 < twinPrimePairLogWeight n := by
  rw [twinPrimePairLogWeight, if_pos ⟨hn, hn2⟩]
  exact mul_pos
    (Real.log_pos (by exact_mod_cast hn.one_lt))
    (Real.log_pos (by exact_mod_cast hn2.one_lt))

/-- Positivity of the prime-only logarithmic source is exactly positivity of
the existing exact twin count. -/
theorem twinPrimeLogCorrelation_pos_iff
    (X : ℕ) :
    0 < twinPrimeLogCorrelation X ↔
      0 < twinCount X := by
  constructor
  · intro hcorr
    by_contra hcount
    have hnoexist :
        ¬ ∃ p, p ≤ X ∧ Nat.Prime p ∧ Nat.Prime (p + 2) := by
      intro hex
      exact hcount ((twinCount_pos_iff X).2 hex)
    have hzero : twinPrimeLogCorrelation X = 0 := by
      unfold twinPrimeLogCorrelation
      apply Finset.sum_eq_zero
      intro n hn
      have hnotpair :
          ¬ (Nat.Prime n ∧ Nat.Prime (n + 2)) := by
        intro hpair
        exact hnoexist
          ⟨n, (Finset.mem_Icc.mp hn).2,
            hpair.1, hpair.2⟩
      simp [twinPrimePairLogWeight, hnotpair]
    linarith
  · intro hcount
    rcases (twinCount_pos_iff X).1 hcount with
      ⟨p, hpX, hp, hp2⟩
    have hp_mem : p ∈ Finset.Icc 1 X :=
      Finset.mem_Icc.mpr ⟨hp.one_le, hpX⟩
    have hsingle :
        twinPrimePairLogWeight p ≤
          twinPrimeLogCorrelation X := by
      unfold twinPrimeLogCorrelation
      exact Finset.single_le_sum
        (fun n hn => twinPrimePairLogWeight_nonneg n)
        hp_mem
    exact lt_of_lt_of_le
      (twinPrimePairLogWeight_pos hp hp2) hsingle

/-- The prime-only source never exceeds the complete Mangoldt source. -/
theorem twinPrimePairLogWeight_le_mangoldt
    (n : ℕ) :
    twinPrimePairLogWeight n ≤
      Λ n * Λ (n + 2) := by
  by_cases hpair : Nat.Prime n ∧ Nat.Prime (n + 2)
  · rw [twinPrimePairLogWeight, if_pos hpair,
      vonMangoldt_apply_prime hpair.1,
      vonMangoldt_apply_prime hpair.2]
    simp only [Nat.cast_add, Nat.cast_ofNat, le_refl]
  · rw [twinPrimePairLogWeight, if_neg hpair]
    exact mul_nonneg vonMangoldt_nonneg vonMangoldt_nonneg

/-- The complete finite proper-prime-power correction as a termwise source. -/
def twinPrimePowerCorrectionSource
    (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X,
    (Λ n * Λ (n + 2) - twinPrimePairLogWeight n)

/-- Equivalent difference form of the complete correction. -/
def twinPrimePowerCorrection
    (X : ℕ) : ℝ :=
  twinMangoldtCorrelation X - twinPrimeLogCorrelation X

/-- The termwise and difference definitions agree exactly. -/
theorem twinPrimePowerCorrection_eq_source
    (X : ℕ) :
    twinPrimePowerCorrection X =
      twinPrimePowerCorrectionSource X := by
  unfold twinPrimePowerCorrection
    twinPrimePowerCorrectionSource
    twinMangoldtCorrelation twinPrimeLogCorrelation
  rw [Finset.sum_sub_distrib]

/-- The complete proper-prime-power correction is nonnegative. -/
theorem twinPrimePowerCorrection_nonneg
    (X : ℕ) :
    0 ≤ twinPrimePowerCorrection X := by
  rw [twinPrimePowerCorrection_eq_source]
  apply Finset.sum_nonneg
  intro n hn
  exact sub_nonneg.mpr
    (twinPrimePairLogWeight_le_mangoldt n)

/-- Exact Mangoldt decomposition into actual prime pairs and the complete
proper-prime-power correction. -/
theorem twinMangoldtCorrelation_eq_prime_add_correction
    (X : ℕ) :
    twinMangoldtCorrelation X =
      twinPrimeLogCorrelation X +
        twinPrimePowerCorrection X := by
  unfold twinPrimePowerCorrection
  ring

/-- Quantitative transfer boundary: a Mangoldt lower bound yields an actual
twin-prime pair only after the entire prime-power correction is bounded below
the announced main term. -/
theorem twinCount_pos_of_mangoldt_correction_bounds
    {X : ℕ} {mainLower powerError : ℝ}
    (hmain : mainLower ≤ twinMangoldtCorrelation X)
    (hpower : twinPrimePowerCorrection X ≤ powerError)
    (hstrict : powerError < mainLower) :
    0 < twinCount X := by
  have hprime : 0 < twinPrimeLogCorrelation X := by
    rw [twinMangoldtCorrelation_eq_prime_add_correction] at hmain
    linarith
  exact (twinPrimeLogCorrelation_pos_iff X).1 hprime

/-- The same terminal boundary after the exact small-divisor and signed
residual split.  No bound on the signed residual is constructed here. -/
theorem twinCount_pos_of_divisor_residual_bounds
    {D X : ℕ}
    {localLower residualError powerError : ℝ}
    (hlocal : localLower ≤ twinSmallDivisorSource D X)
    (hresidual :
      |twinSignedDivisorResidual D X| ≤ residualError)
    (hpower : twinPrimePowerCorrection X ≤ powerError)
    (hstrict : residualError + powerError < localLower) :
    0 < twinCount X := by
  apply twinCount_pos_of_mangoldt_correction_bounds
    (mainLower := localLower - residualError)
    (powerError := powerError)
  · rw [twinMangoldtCorrelation_eq_small_add_residual]
    have hlower :
        -residualError ≤
          twinSignedDivisorResidual D X :=
      (abs_le.mp hresidual).1
    linarith
  · exact hpower
  · linarith

end
end GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary
```
