/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic

/-!
# Finite summation by parts for arithmetic exponential sums

This is a purely finite identity. No prime-distribution, cancellation,
zero-free-region, or asymptotic estimate is assumed or concluded.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteAbelTransfer

open scoped BigOperators

noncomputable section

/-- Inclusive cumulative sum of complex coefficients. -/
def prefix (a : ℕ → ℂ) (n : ℕ) : ℂ :=
  ∑ k ∈ Finset.range (n + 1), a k

/-- Finite Abel summation, with the last endpoint retained. -/
theorem sum_mul_eq_prefix_endpoint
    (a z : ℕ → ℂ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), a n * z n) =
      prefix a N * z N +
        ∑ n ∈ Finset.range N, prefix a n * (z n - z (n + 1)) := by
  induction N with
  | zero =>
      simp [prefix]
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      rw [ih]
      have hp : prefix a (N + 1) = prefix a N + a (N + 1) := by
        simp [prefix, Finset.sum_range_succ]
      rw [hp]
      ring

/-- A norm bound requiring no cancellation hypothesis. -/
theorem norm_sum_mul_le_prefix_variation
    (a z : ℕ → ℂ) (N : ℕ) :
    ‖∑ n ∈ Finset.range (N + 1), a n * z n‖ ≤
      ‖prefix a N‖ * ‖z N‖ +
        ∑ n ∈ Finset.range N,
          ‖prefix a n‖ * ‖z n - z (n + 1)‖ := by
  rw [sum_mul_eq_prefix_endpoint]
  calc
    ‖prefix a N * z N +
        ∑ n ∈ Finset.range N, prefix a n * (z n - z (n + 1))‖ ≤
      ‖prefix a N * z N‖ +
        ‖∑ n ∈ Finset.range N, prefix a n * (z n - z (n + 1))‖ :=
          norm_add_le _ _
    _ ≤ ‖prefix a N‖ * ‖z N‖ +
        ∑ n ∈ Finset.range N,
          ‖prefix a n‖ * ‖z n - z (n + 1)‖ := by
      rw [norm_mul]
      gcongr
      calc
        ‖∑ n ∈ Finset.range N, prefix a n * (z n - z (n + 1))‖ ≤
          ∑ n ∈ Finset.range N, ‖prefix a n * (z n - z (n + 1))‖ :=
            norm_sum_le _ _
        _ = _ := by simp [norm_mul]


/-- A supplied bound on each inclusive partial sum transfers to a
phase-weighted bound. All analytic cancellation remains in `hE`. -/
theorem norm_sum_mul_le_of_prefix_bounds
    (a z : ℕ → ℂ) (E : ℕ → ℝ) (N : ℕ)
    (hE : ∀ n ≤ N, ‖prefix a n‖ ≤ E n)
    (hz : ‖z N‖ ≤ 1) :
    ‖∑ n ∈ Finset.range (N + 1), a n * z n‖ ≤
      E N + ∑ n ∈ Finset.range N,
        E n * ‖z n - z (n + 1)‖ := by
  calc
    ‖∑ n ∈ Finset.range (N + 1), a n * z n‖ ≤
        ‖prefix a N‖ * ‖z N‖ +
          ∑ n ∈ Finset.range N,
            ‖prefix a n‖ * ‖z n - z (n + 1)‖ :=
      norm_sum_mul_le_prefix_variation a z N
    _ ≤ E N + ∑ n ∈ Finset.range N,
          E n * ‖z n - z (n + 1)‖ := by
      have hnonneg : 0 ≤ ‖prefix a N‖ := norm_nonneg _
      have hend : ‖prefix a N‖ * ‖z N‖ ≤ E N := by
        calc
          ‖prefix a N‖ * ‖z N‖ ≤ ‖prefix a N‖ * 1 :=
            mul_le_mul_of_nonneg_left hz hnonneg
          _ = ‖prefix a N‖ := by ring
          _ ≤ E N := hE N le_rfl
      apply add_le_add hend
      apply Finset.sum_le_sum
      intro n hn
      exact mul_le_mul_of_nonneg_right (hE n (Nat.le_of_lt (Finset.mem_range.mp hn)))
        (norm_nonneg _)

end
end GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
