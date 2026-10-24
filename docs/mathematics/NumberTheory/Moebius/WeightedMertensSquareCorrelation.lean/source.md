# Complete source: GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96dd3204b2110a0083062a780f7647b403012ef7` · SHA-256 `244dd618bd2a0a178d8c62b313ab9bb51e077ef542ed6f60998a0b9d40d7107a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

/-!
# Correlation decomposition of weighted Mertens squares

Finite summation by parts expands the improved weighted Mertens-square target
into a signed Möbius--Mertens correlation and a nonnegative squarefree
diagonal.  The positive tail kernel is kept exact.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

/-- Explicit adjacent-integer weight in the improved Mertens-square target. -/
def weightedMertensSquareWeight (ε : ℝ) (n : ℕ) : ℝ :=
  (n : ℝ) ^ (-(1 : ℝ)) * ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε))

/-- Finite tail of the positive weight, beginning after index `j`. -/
def weightedMertensTail (ε : ℝ) (j N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc (j + 1) N, weightedMertensSquareWeight ε n

/-- One-step square increment of the Mertens prefix. -/
def mertensSquareIncrement (j : ℕ) : ℝ :=
  2 * moebiusReal (j + 1) * pickupMertensPrefix j +
    moebiusReal (j + 1) ^ 2

theorem mertensSquareIncrement_eq_sub (j : ℕ) :
    mertensSquareIncrement j =
      pickupMertensPrefix (j + 1) ^ 2 - pickupMertensPrefix j ^ 2 := by
  rw [mertensSquareIncrement, pickupMertensPrefix_succ]
  ring

theorem sum_mertensSquareIncrement (N : ℕ) :
    (∑ j ∈ Finset.range N, mertensSquareIncrement j) =
      pickupMertensPrefix N ^ 2 := by
  induction N with
  | zero => simp [pickupMertensPrefix]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih, mertensSquareIncrement_eq_sub]
      ring

theorem weightedMertensTail_succ {ε : ℝ} {j N : ℕ} (hj : j < N) :
    weightedMertensTail ε j (N + 1) =
      weightedMertensTail ε j N + weightedMertensSquareWeight ε (N + 1) := by
  unfold weightedMertensTail
  rw [Finset.sum_Icc_succ_top (by omega : j + 1 ≤ N + 1)]

theorem weightedMertensTail_self (ε : ℝ) (N : ℕ) :
    weightedMertensTail ε N (N + 1) =
      weightedMertensSquareWeight ε (N + 1) := by
  simp [weightedMertensTail]

/-- Finite square energy at the explicit improved weight. -/
def weightedMertensSquarePartial (ε : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    pickupMertensPrefix n ^ 2 * weightedMertensSquareWeight ε n

/-- Tail-weighted sum of all square increments. -/
def weightedMertensIncrementTail (ε : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N,
    mertensSquareIncrement j * weightedMertensTail ε j N

theorem weightedMertensIncrementTail_succ (ε : ℝ) (N : ℕ) :
    weightedMertensIncrementTail ε (N + 1) =
      weightedMertensIncrementTail ε N +
        pickupMertensPrefix (N + 1) ^ 2 *
          weightedMertensSquareWeight ε (N + 1) := by
  unfold weightedMertensIncrementTail
  rw [Finset.sum_range_succ, weightedMertensTail_self]
  have htails :
      (∑ j ∈ Finset.range N,
        mertensSquareIncrement j * weightedMertensTail ε j (N + 1)) =
      (∑ j ∈ Finset.range N,
        mertensSquareIncrement j * weightedMertensTail ε j N) +
        (∑ j ∈ Finset.range N, mertensSquareIncrement j) *
          weightedMertensSquareWeight ε (N + 1) := by
    calc
      _ = ∑ j ∈ Finset.range N,
          (mertensSquareIncrement j * weightedMertensTail ε j N +
            mertensSquareIncrement j *
              weightedMertensSquareWeight ε (N + 1)) := by
        apply Finset.sum_congr rfl
        intro j hj
        rw [weightedMertensTail_succ (Finset.mem_range.mp hj)]
        ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_mul]
  rw [htails, sum_mertensSquareIncrement, mertensSquareIncrement_eq_sub]
  ring

/-- Finite summation by parts for the improved weighted Mertens square. -/
theorem weightedMertensSquarePartial_eq_incrementTail (ε : ℝ) (N : ℕ) :
    weightedMertensSquarePartial ε N =
      weightedMertensIncrementTail ε N := by
  induction N with
  | zero => simp [weightedMertensSquarePartial, weightedMertensIncrementTail]
  | succ N ih =>
      rw [weightedMertensSquarePartial,
        Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1),
        ← weightedMertensSquarePartial, ih,
        weightedMertensIncrementTail_succ]

/-- Signed part of the weighted square expansion. -/
def weightedMertensCorrelation (ε : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N,
    2 * moebiusReal (j + 1) * pickupMertensPrefix j *
      weightedMertensTail ε j N

/-- Nonnegative squarefree diagonal of the weighted square expansion. -/
def weightedMertensDiagonal (ε : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N,
    moebiusReal (j + 1) ^ 2 * weightedMertensTail ε j N

/-- Exact correlation-plus-diagonal decomposition. -/
theorem weightedMertensSquarePartial_eq_correlation_add_diagonal
    (ε : ℝ) (N : ℕ) :
    weightedMertensSquarePartial ε N =
      weightedMertensCorrelation ε N + weightedMertensDiagonal ε N := by
  rw [weightedMertensSquarePartial_eq_incrementTail]
  unfold weightedMertensIncrementTail weightedMertensCorrelation
    weightedMertensDiagonal mertensSquareIncrement
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _hj
  ring

end GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation.mertensSquareIncrement_eq_sub
#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation.weightedMertensSquarePartial_eq_incrementTail
#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation.weightedMertensSquarePartial_eq_correlation_add_diagonal
```
