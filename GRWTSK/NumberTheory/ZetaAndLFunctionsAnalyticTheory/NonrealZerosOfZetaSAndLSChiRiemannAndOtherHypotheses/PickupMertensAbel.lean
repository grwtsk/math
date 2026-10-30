/- Copyright (c) 2026 grwtsk contributors. MIT.

# Abel summation of the actual sampled Mobius pickup

This source does not assume or prove the Riemann Hypothesis. It makes the
arithmetic cancellation supplier explicit: the actual sampleResidue is a
finite positive-weighted sum of SIGNED Mertens prefixes. The increment and
birth-normalization identities are inherited from the exact source.

SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay, axiom audit NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LogarithmicPickupSeries
import Mathlib.Tactic.Linarith

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The actual finite Mertens coefficient in a birth cell, not a free model
bound or a sieve-adjusted surrogate. -/
def mertensAbelTerm (k : ℕ) : ℝ :=
  mertensPrefix ((k + 1 : ℕ) : ℝ) *
    ((Real.sqrt (k + 1 : ℕ))⁻¹ -
      (Real.sqrt (k + 2 : ℕ))⁻¹)

/-- Exact Abel formula for the ORIGINAL signed sampled pickup:
sampleResidue (N+1) is a sum of Mertens prefixes times differences
of reciprocal square roots. The initial sampleResidue 1 is zero. -/
theorem sampleResidue_abel (N : ℕ) :
    sampleResidue (N + 1) =
      ∑ k ∈ Finset.range N, mertensAbelTerm k := by
  induction N with
  | zero =>
      simp [mertensAbelTerm, sampleResidue_one]
  | succ N ih =>
      rw [Finset.sum_range_succ, ← ih]
      have h := sampleResidue_succ_sub (N + 1)
      dsimp [mertensAbelTerm]
      linarith

/-- Exact source-prefix identity retaining both signed off-diagonal
Mertens weights and their original square-root interpolation widths. -/
theorem sampleResidue_abel_succ (N : ℕ) :
    sampleResidue (N + 2) =
      sampleResidue (N + 1) + mertensAbelTerm N := by
  have h := sampleResidue_succ_sub (N + 1)
  dsimp [mertensAbelTerm]
  linarith

/-- The all-positive-time analytic estimate is NOT inserted into this
identity as an assumed theorem. Any bound for the complete signed
Mertens-Abel sum requires an arithmetic cancellation supplier. -/
theorem sampleResidue_upper_of_abel_sum_bound
    (N : ℕ) (U : ℝ)
    (hbound : (∑ k ∈ Finset.range N, mertensAbelTerm k) ≤ U) :
    sampleResidue (N + 1) ≤ U := by
  rw [sampleResidue_abel]
  exact hbound


/-- A concrete nonnegative squared-Mertens average. Unlike a freely supplied
upper certificate, every term is fixed by the original Möbius prefixes. -/
def mertensSquareBudget (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N,
    (mertensPrefix ((k + 1 : ℕ) : ℝ)) ^ 2 / ((k + 1 : ℝ) ^ 2)

/-- The square budget has a positive-term interpretation, without assuming
any cancellation or power-saving estimate for its size. -/
theorem mertensSquareBudget_nonnegative (N : ℕ) :
    0 ≤ mertensSquareBudget N := by
  unfold mertensSquareBudget
  apply Finset.sum_nonneg
  intro k hk
  exact div_nonneg (sq_nonneg _) (sq_nonneg _)

/-- The actual remaining all-positive-rate arithmetic target for this
independent Mertens-square route. This is a PREDICATE, NOT A PROOF of it.
The exponent and its constant are quantified in the correct order. -/
def MertensSquareSubpolynomial : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 1 ≤ N →
        mertensSquareBudget N ≤ C * (N : ℝ) ^ δ

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
