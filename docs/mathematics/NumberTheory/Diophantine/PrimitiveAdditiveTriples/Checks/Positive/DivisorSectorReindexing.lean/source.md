# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Positive.DivisorSectorReindexing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5b50270c36c0a9d5047a0e41984ffc5403a9230` · SHA-256 `94d16c978dc40f3a33b8ea5a29d5e904892cbb8cf55790cbb22c749fe53af58a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Mathlib retains upstream attribution.
Direct consumers and exact finite boundary/counterexample neighbors only. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

set_option autoImplicit false

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

example {N d u v : ℕ} (hd : 0 < d) :
    (d * u, d * v) ∈ additivePairs N ↔ (u, v) ∈ additivePairs (N / d) :=
  mem_additivePairs_scaled_iff hd

example {d : ℕ} (hd : 0 < d) :
    Function.Injective (fun p : ℕ × ℕ => (d * p.1, d * p.2)) :=
  scaledPair_injective hd

example {R : Type*} [Ring R] (N d : ℕ) (W : ℕ → ℕ → ℕ → R) (hd : 0 < d) :
    commonDivisorWeightedMoment N d W =
      ∑ p ∈ additivePairs (N / d),
        W (d * p.1) (d * p.2) (d * (p.1 + p.2)) :=
  commonDivisorWeightedMoment_eq_scaled_sum N d W hd

example {R : Type*} [Ring R] (N d : ℕ) (A B C : ℕ → R) (hd : 0 < d) :
    commonDivisorMoment N d A B C =
      ∑ p ∈ additivePairs (N / d),
        A (d * p.1) * B (d * p.2) * C (d * (p.1 + p.2)) :=
  commonDivisorMoment_eq_scaled_sum N d A B C hd

example {R : Type*} [Ring R] (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius d : R) *
        ∑ p ∈ additivePairs (N / d),
          W (d * p.1) (d * p.2) (d * (p.1 + p.2)) :=
  typedPrimitiveWeightedMoment_eq_moebius_scaled_sum N W

example : commonDivisorWeightedMoment 0 2 (fun _ _ _ => (1 : ℤ)) = 0 := by
  decide

example : (∑ _p ∈ additivePairs (0 / 2), (1 : ℤ)) = 0 := by
  decide

example : commonDivisorWeightedMoment 5 6 (fun _ _ _ => (1 : ℤ)) = 0 := by
  decide

example : (∑ _p ∈ additivePairs (5 / 6), (1 : ℤ)) = 0 := by
  decide

-- The two degenerate sums at d = 0 agree; no counterexample to that identity
-- is claimed. The public positive-divisor interface keeps its hypothesis.
example : commonDivisorWeightedMoment 5 0 (fun _ _ _ => (1 : ℤ)) = 0 := by
  decide

example : (∑ _p ∈ additivePairs (5 / 0), (1 : ℤ)) = 0 := by
  decide

example : ¬0 < (0 : ℕ) * 1 := by
  decide

example : ¬ Function.Injective (fun p : ℕ × ℕ => (0 * p.1, 0 * p.2)) := by
  intro h
  have hpair : ((1, 1) : ℕ × ℕ) = (1, 2) := h (by decide)
  have hcoord : (1 : ℕ) = 2 := congrArg Prod.snd hpair
  omega

-- N = 5 is not divisible by d = 2: the exact quotient cutoff is floor(5/2).
example : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) = 1 := by
  decide

example : (∑ _p ∈ additivePairs (5 / 2), (1 : ℤ)) = 1 := by
  decide

example : (∑ _p ∈ additivePairs ((5 + 2 - 1) / 2), (1 : ℤ)) = 3 := by
  decide

example : (∑ _p ∈ (Finset.Icc 1 (5 / 2)).product (Finset.Icc 1 (5 / 2)),
    (1 : ℤ)) = 4 := by
  decide

example : commonDivisorWeightedMoment 5 2
    (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) = 16 := by
  decide

example : (∑ p ∈ additivePairs (5 / 2),
    ((2 * p.1 : ℕ) : ℤ) * ((2 * p.2 : ℕ) : ℤ) *
      ((2 * (p.1 + p.2) : ℕ) : ℤ)) = 16 := by
  decide

example : (∑ p ∈ additivePairs (5 / 2),
    ((2 * p.1 : ℕ) : ℤ) * ((2 * p.2 : ℕ) : ℤ) *
      ((p.1 + p.2 : ℕ) : ℤ)) = 8 := by
  decide

-- Divisor sectors are unrestricted: quotient pair (2,2) is retained.
example : (2, 2) ∈ additivePairs (8 / 2) ∧ ¬ Nat.Coprime 2 2 := by
  decide

example : commonDivisorWeightedMoment 8 2 (fun _ _ _ => (1 : ℤ)) = 6 := by
  decide

example : commonDivisorWeightedMoment 8 2
    (fun a b c => (a : ℤ) * (b : ℤ) * (c : ℤ)) = 432 := by
  decide

example : (∑ p ∈ additivePairs (8 / 2),
    if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) = 5 := by
  decide

-- A genuinely joint test weight is admissible without a product premise.
example : commonDivisorWeightedMoment 5 2
    (fun a b c => if a = b ∧ c = a + b then (c : ℤ) else 0) = 4 := by
  decide
```
