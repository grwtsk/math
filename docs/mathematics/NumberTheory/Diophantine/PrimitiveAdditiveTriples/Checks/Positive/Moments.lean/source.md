# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Positive.Moments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31fe0fc9c2c7e6597ed6a376578344e123b2aa62` · SHA-256 `5ce120fecc5dd0a2b2fcca10a63eea283d29cf5b175ab1c9311e8701b6732c70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Direct consumers and exact finite counterexample neighbors. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing

set_option autoImplicit false

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

example {R : Type*} [Ring R] (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorWeightedMoment N d W :=
  typedPrimitiveWeightedMoment_eq_moebius_sum N W

example {R : Type*} [Ring R] (N : ℕ) (A B C : ℕ → R) :
    typedPrimitiveMoment N A B C =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorMoment N d A B C :=
  typedPrimitiveMoment_eq_moebius_sum N A B C

example : primitiveMoment 0 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by
  decide

example : primitiveMoment 1 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by
  decide

example : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 5 := by
  decide

example : commonDivisorMoment 4 1 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 6 := by
  decide

example : commonDivisorMoment 4 2 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 1 := by
  decide

example : (∑ d ∈ Finset.Icc 1 4,
    |ArithmeticFunction.moebius d| *
      commonDivisorMoment 4 d (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1)) = 7 := by
  have h1 : commonDivisorMoment 4 1 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 6 := by decide
  have h2 : commonDivisorMoment 4 2 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 1 := by decide
  have h3 : commonDivisorMoment 4 3 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by decide
  have h4 : commonDivisorMoment 4 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 0 := by decide
  norm_num [show Finset.Icc 1 4 = {1, 2, 3, 4} by decide, h1, h2, h3, h4,
    ArithmeticFunction.moebius_apply_one,
    ArithmeticFunction.moebius_apply_prime (by decide : Nat.Prime 2)]

example : (∑ p ∈ (Finset.Icc 1 4).product (Finset.Icc 1 4),
    if Nat.Coprime p.1 p.2 then (1 : ℤ) else 0) = 11 := by
  decide

example : primitiveMoment 4 (fun n => (n : ℤ)) (fun n => (n : ℤ)) (fun n => (n : ℤ)) = 38 := by
  decide

example : commonDivisorMoment 4 2
    (fun n => (n : ℤ)) (fun n => (n : ℤ)) (fun n => (n : ℤ)) = 16 := by
  decide

example : (∑ d ∈ Finset.Icc 1 4,
    (ArithmeticFunction.moebius d : ℤ) *
      commonDivisorMoment 4 d (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1)) = 5 := by
  have h := primitiveMoment_eq_moebius_sum 4
    (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1)
  have hc : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 5 := by decide
  simpa only [Int.cast_id, hc] using h.symm
```
