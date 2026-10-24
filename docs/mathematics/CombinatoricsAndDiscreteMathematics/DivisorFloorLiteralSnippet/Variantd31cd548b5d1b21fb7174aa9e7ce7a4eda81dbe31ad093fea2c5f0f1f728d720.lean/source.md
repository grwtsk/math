# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorFloorLiteralSnippet.Variantd31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ee5a72d9304aba063ef97098044702513f7544f` · SHA-256 `d31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open DivisorFloorTransportScratch DampedDivisorCoefficient
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (x : ℝ) (a : ℕ → ℝ) (hxX : x ≤ X) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors, a d :=
  floor_sum_divisors X x a hxX

example (N : ℕ) (a : ℕ → ℝ) :
    (∑ n ∈ Icc 1 N, ∑ d ∈ n.divisors, a d) =
      ∑ d ∈ Icc 1 N, a d * ((N / d : ℕ) : ℝ) :=
  divisor_prefix_eq_floor N a

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x ≤ X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX

example (X : ℕ) (x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X 0 x = 0 :=
  arithmeticResidual_zero_of_lt_cutoff X x hX hx hxX

example (X : ℕ) (hX : 1 ≤ X) : arithmeticResidual X 0 (X : ℝ) =
    ((X : ℝ) * mobiusReciprocalSum X : ℂ) :=
  arithmeticResidual_zero_damping_endpoint X hX
end
```
