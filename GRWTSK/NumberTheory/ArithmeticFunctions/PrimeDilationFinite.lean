/-
Copyright (c) grwtsk contributors. All rights reserved.
Finite prime-dilation bookkeeping. SOURCE_ONLY / NOT_RUN.
-/
import Mathlib

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimeDilation

/-- Finite prime-indexed dilation correlations, without assuming primality:
the analytic prime restriction is a separate hypothesis on `P`. -/
def dilationSum (P : Finset ℕ) (a : ℕ → ℂ) (X : ℕ) : ℂ :=
  ∑ p ∈ P, ∑ m ∈ Finset.range (X + 1), a (p * m)

/-- Exact exchange of finite dilation indices. No asymptotic estimate is used. -/
theorem dilationSum_swap (P : Finset ℕ) (a : ℕ → ℂ) (X : ℕ) :
    dilationSum P a X =
      ∑ m ∈ Finset.range (X + 1), ∑ p ∈ P, a (p * m) := by
  simp only [dilationSum]
  rw [Finset.sum_comm]

/-- The exact centered-weight decomposition, with no variance estimate
or multiplicative-weight transfer silently assumed. -/
theorem centered_sum_identity (s : Finset ℕ) (a w : ℕ → ℂ) (L : ℂ) :
    L * (∑ n ∈ s, a n) =
      (∑ n ∈ s, a n * w n) +
      (∑ n ∈ s, a n * (L - w n)) := by
  simp_rw [mul_sum]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  ring

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimeDilation
