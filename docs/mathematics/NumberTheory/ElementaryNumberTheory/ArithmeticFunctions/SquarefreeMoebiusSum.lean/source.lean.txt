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
