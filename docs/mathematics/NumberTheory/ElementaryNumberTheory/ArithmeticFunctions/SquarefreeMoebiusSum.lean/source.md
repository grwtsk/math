# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.SquarefreeMoebiusSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39ef4c4ce904e59d37253cfd41c81f2ee373621e` · SHA-256 `21de88fb707a9f4e133601981b882790443f85d3706b37fd87208d557e0ae9ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn

/-!
# Squarefree restriction of the completed weighted Mobius scalar return

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
This is a finite scalar equality; it supplies no source-vector projection or budget.
-/
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius

/-- Restricting the complete scalar return to squarefree outputs preserves it.
The real weights are arbitrary, and the closed cutoff remains in both coefficients. -/
theorem weighted_moebius_squarefree_return (U : ℕ) (S : Finset ℕ) (c : ℕ → ℝ)
    (hS : ∀ n ∈ S, U < n) :
    ∑ n ∈ S, c n * (Int.cast (μ n) : ℝ) =
      ∑ n ∈ S.filter (fun n => Squarefree n),
        c n * (Int.cast (highMoebiusCoefficient U n - lowMoebiusCoefficient U n) : ℝ) := by
  classical
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hs : Squarefree n
  · simp only [hs, if_true]
    have hi : (μ n : ℤ) = highMoebiusCoefficient U n - lowMoebiusCoefficient U n := by
      have hr := moebius_low_high_coefficient_return U n (hS n hn)
      omega
    rw [hi]
  · simp only [hs, if_false]
    rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hs]
    simp only [Int.cast_zero, mul_zero]

end GRWTSK.NumberTheory.ArithmeticFunctions
```
