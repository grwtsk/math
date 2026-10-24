# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c87aec058ab6ac87d894b33ce8944e59f78ca61b` · SHA-256 `a41a13f98333a42309501b176667295c408f011110b0cd011322eaa9e012d1a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients
import Mathlib.Data.Real.Basic

/-!
# Exact squareful-output cancellation of truncated Mobius coefficients

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
This scalar coefficient equality does not delete a source vector or Gram block.
-/
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius

/-- Above the closed cutoff, equality of complete low/high coefficients
recognizes precisely the squareful outputs. -/
theorem low_high_eq_iff_not_squarefree (U n : ℕ) (hU : U < n) :
    lowMoebiusCoefficient U n = highMoebiusCoefficient U n ↔ ¬Squarefree n := by
  have hreturn := moebius_low_high_coefficient_return U n hU
  have hzero : (μ n : ℤ) = 0 ↔ ¬Squarefree n := by
    simpa only [not_not] using not_congr
      (ArithmeticFunction.moebius_ne_zero_iff_squarefree (n := n))
  constructor
  · intro heq
    apply hzero.mp
    simpa [heq] using hreturn
  · intro hsq
    rw [hzero.mpr hsq] at hreturn
    omega

/-- Every finite weighted squareful-output block cancels in the scalar return.
Both complete source coefficients remain in the literal expression. -/
theorem weighted_squareful_low_high_cancel (U : ℕ) (S : Finset ℕ) (c : ℕ → ℝ)
    (hS : ∀ n ∈ S, U < n ∧ ¬Squarefree n) :
    ∑ n ∈ S, c n * (Int.cast (highMoebiusCoefficient U n - lowMoebiusCoefficient U n) : ℝ) =
      0 := by
  apply Finset.sum_eq_zero
  intro n hn
  have heq := (low_high_eq_iff_not_squarefree U n (hS n hn).1).mpr (hS n hn).2
  have hdiff : highMoebiusCoefficient U n - lowMoebiusCoefficient U n = 0 :=
    sub_eq_zero.mpr heq.symm
  simp only [hdiff, Int.cast_zero, mul_zero]

end GRWTSK.NumberTheory.ArithmeticFunctions
```
