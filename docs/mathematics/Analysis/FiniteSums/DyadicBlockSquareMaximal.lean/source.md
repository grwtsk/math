# Complete source: GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b18f90584b0f3e181a90fe40dd127c04fc20d844` · SHA-256 `fb5399d2cc3dd3d4a6ab7560b6224b61fe2257493170940280df3edf6e6d8e07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib retains its upstream authorship and Apache-2.0 license.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #437. Direct stacked parent: draft PR #411 at
`4628cc379363efeee79f717f11423ba8e036345f`.
-/
import Mathlib

/-!
# Finite aligned-dyadic block-square maximal comparison

This module proves one generic finite comparison. For a real sequence on
`[0, 2^m)`, every prefix square is bounded by `m+1` times a recursively
enumerated aligned-dyadic block-square energy. The energy contains the full
block at the current scale and the complete left and right dyadic subtrees.
Thus every summand is the square of a signed block sum; no termwise absolute
value is inserted before summation inside a block.

The proof is deterministic. It uses exact finite sums, a binary half-split,
and a weighted two-term Cauchy inequality. It does not use a probability
space, martingale convergence, an asymptotic estimate, or any arithmetic
property of the Moebius function.

The recursive tree energy is the generic comparison interface advanced here.
An explicit `(scale, block-index)` double-sum equivalence and the zero-padded
Moebius two-point adapter remain separate obligations.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- The signed prefix sum over `[0,N)`. -/
def finitePrefixSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, a n

/-- Translate a sequence by a natural offset. -/
def shiftedSequence (a : ℕ → ℝ) (k : ℕ) : ℕ → ℝ :=
  fun n => a (k + n)

/-- The signed sum over the aligned block
`[q * 2^r, (q+1) * 2^r)`. -/
def alignedDyadicBlockSum (a : ℕ → ℝ) (r q : ℕ) : ℝ :=
  finitePrefixSum (shiftedSequence a (q * 2 ^ r)) (2 ^ r)

/-- Complete aligned dyadic-tree square energy on `[0,2^m)`.

At a successor level it retains:

* the square of the complete block sum at that level;
* every aligned block square in the left half;
* every aligned block square in the right half.

The right subtree is represented by translating the source by `2^m`. -/
def dyadicTreeSquareEnergy : ℕ → (ℕ → ℝ) → ℝ
  | 0, a => alignedDyadicBlockSum a 0 0 ^ 2
  | Nat.succ m, a =>
      alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
        dyadicTreeSquareEnergy m a +
        dyadicTreeSquareEnergy m (shiftedSequence a (2 ^ m))

/-- The number of possible selected dyadic scales in a prefix decomposition,
kept recursive so the induction step is definitionally `k+1`. -/
def dyadicLevelCount : ℕ → ℝ
  | 0 => 1
  | Nat.succ m => dyadicLevelCount m + 1

/-- The exact maximum absolute prefix over `0 ≤ N ≤ 2^m`. -/
def dyadicPrefixMaximum (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  partialSups (fun N : ℕ => |finitePrefixSum a N|) (2 ^ m)

@[simp] theorem finitePrefixSum_zero (a : ℕ → ℝ) :
    finitePrefixSum a 0 = 0 := by
  simp [finitePrefixSum]

@[simp] theorem finitePrefixSum_one (a : ℕ → ℝ) :
    finitePrefixSum a 1 = a 0 := by
  simp [finitePrefixSum]

/-- Split a finite prefix at an exact natural position. -/
theorem finitePrefixSum_add (a : ℕ → ℝ) (M N : ℕ) :
    finitePrefixSum a (M + N) =
      finitePrefixSum a M + finitePrefixSum (shiftedSequence a M) N := by
  simp [finitePrefixSum, shiftedSequence, Finset.sum_range_add]

@[simp] theorem alignedDyadicBlockSum_zero_index
    (a : ℕ → ℝ) (r : ℕ) :
    alignedDyadicBlockSum a r 0 = finitePrefixSum a (2 ^ r) := by
  simp [alignedDyadicBlockSum, finitePrefixSum, shiftedSequence]

@[simp] theorem dyadicLevelCount_eq (m : ℕ) :
    dyadicLevelCount m = (m : ℝ) + 1 := by
  induction m with
  | zero => norm_num [dyadicLevelCount]
  | succ m ih =>
      simp [dyadicLevelCount, ih, Nat.cast_succ]

/-- Every level count is strictly positive. -/
theorem dyadicLevelCount_pos (m : ℕ) : 0 < dyadicLevelCount m := by
  rw [dyadicLevelCount_eq]
  positivity

/-- The complete tree energy is nonnegative because every node contributes a
square. -/
theorem dyadicTreeSquareEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ dyadicTreeSquareEnergy m a := by
  induction m generalizing a with
  | zero =>
      simpa [dyadicTreeSquareEnergy, alignedDyadicBlockSum,
        finitePrefixSum, shiftedSequence] using sq_nonneg (a 0)
  | succ m ih =>
      simp only [dyadicTreeSquareEnergy]
      exact add_nonneg
        (add_nonneg (sq_nonneg _) (ih a))
        (ih (shiftedSequence a (2 ^ m)))

/-- The top aligned block square is literally one summand of the complete tree
energy. -/
theorem alignedTopBlock_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicBlockSum a m 0 ^ 2 ≤ dyadicTreeSquareEnergy m a := by
  cases m with
  | zero =>
      simp [dyadicTreeSquareEnergy]
  | succ m =>
      have hleft := dyadicTreeSquareEnergy_nonneg m a
      have hright := dyadicTreeSquareEnergy_nonneg m
        (shiftedSequence a (2 ^ m))
      simp only [dyadicTreeSquareEnergy]
      nlinarith

/-- Weighted two-term Cauchy inequality used when a prefix crosses the midpoint.
If `y^2 ≤ kE` and `k>0`, then adjoining one complete left block costs exactly
one additional level. -/
private theorem add_sq_le_succ_weight
    {k x y E : ℝ} (hk : 0 < k) (hy : y ^ 2 ≤ k * E) :
    (x + y) ^ 2 ≤ (k + 1) * (x ^ 2 + E) := by
  have hsquare : 0 ≤ (k * x - y) ^ 2 := sq_nonneg _
  have hgap : 0 ≤ k * E - y ^ 2 := sub_nonneg.mpr hy
  have hproduct : 0 ≤ (k + 1) * (k * E - y ^ 2) :=
    mul_nonneg (by linarith) hgap
  have hmul :
      k * (x + y) ^ 2 ≤ k * ((k + 1) * (x ^ 2 + E)) := by
    nlinarith
  nlinarith

/-- Recursive finite maximal comparison before rewriting the level count as
`m+1`. -/
private theorem finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      dyadicLevelCount m * dyadicTreeSquareEnergy m a := by
  induction m generalizing a N with
  | zero =>
      have hcases : N = 0 ∨ N = 1 := by
        norm_num at hN
        omega
      rcases hcases with rfl | rfl
      · simpa [finitePrefixSum, dyadicLevelCount,
          dyadicTreeSquareEnergy, alignedDyadicBlockSum,
          shiftedSequence] using sq_nonneg (a 0)
      · simp [finitePrefixSum, dyadicLevelCount,
          dyadicTreeSquareEnergy, alignedDyadicBlockSum,
          shiftedSequence]
  | succ m ih =>
      let H : ℕ := 2 ^ m
      let right : ℕ → ℝ := shiftedSequence a H
      have hpow : 2 ^ Nat.succ m = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      rw [hpow] at hN
      have hleftEnergy : 0 ≤ dyadicTreeSquareEnergy m a :=
        dyadicTreeSquareEnergy_nonneg m a
      have hrightEnergy : 0 ≤ dyadicTreeSquareEnergy m right :=
        dyadicTreeSquareEnergy_nonneg m right
      have hlevel : 0 < dyadicLevelCount m := dyadicLevelCount_pos m
      by_cases hleft : N ≤ H
      · have hprefix := ih a N (by simpa [H] using hleft)
        have htree :
            dyadicTreeSquareEnergy m a ≤
              alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right := by
          nlinarith [sq_nonneg
            (alignedDyadicBlockSum a (Nat.succ m) 0)]
        calc
          finitePrefixSum a N ^ 2 ≤
              dyadicLevelCount m * dyadicTreeSquareEnergy m a := hprefix
          _ ≤ (dyadicLevelCount m + 1) *
              dyadicTreeSquareEnergy m a := by
                nlinarith
          _ ≤ (dyadicLevelCount m + 1) *
              (alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right) := by
                exact mul_le_mul_of_nonneg_left htree (by linarith)
          _ = dyadicLevelCount (Nat.succ m) *
              dyadicTreeSquareEnergy (Nat.succ m) a := by
                simp [dyadicLevelCount, dyadicTreeSquareEnergy,
                  right, H]
      · have hHlt : H < N := Nat.lt_of_not_ge hleft
        have hrem : N - H ≤ H := by omega
        have hrightPrefix := ih right (N - H)
          (by simpa [H] using hrem)
        have hdecomp : H + (N - H) = N :=
          Nat.add_sub_of_le hHlt.le
        have hsplit :
            finitePrefixSum a N =
              finitePrefixSum a H + finitePrefixSum right (N - H) := by
          calc
            finitePrefixSum a N = finitePrefixSum a (H + (N - H)) := by
              rw [hdecomp]
            _ = finitePrefixSum a H +
                finitePrefixSum right (N - H) := by
              simpa [right] using finitePrefixSum_add a H (N - H)
        have hcombine :
            (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 ≤
              (dyadicLevelCount m + 1) *
                (finitePrefixSum a H ^ 2 +
                  dyadicTreeSquareEnergy m right) :=
          add_sq_le_succ_weight hlevel hrightPrefix
        have htopLeft :
            finitePrefixSum a H ^ 2 ≤ dyadicTreeSquareEnergy m a := by
          simpa [H] using
            alignedTopBlock_sq_le_dyadicTreeSquareEnergy m a
        have htree :
            finitePrefixSum a H ^ 2 + dyadicTreeSquareEnergy m right ≤
              alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right := by
          nlinarith [sq_nonneg
            (alignedDyadicBlockSum a (Nat.succ m) 0)]
        calc
          finitePrefixSum a N ^ 2 =
              (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 := by
                rw [hsplit]
          _ ≤ (dyadicLevelCount m + 1) *
              (finitePrefixSum a H ^ 2 +
                dyadicTreeSquareEnergy m right) := hcombine
          _ ≤ (dyadicLevelCount m + 1) *
              (alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right) := by
                exact mul_le_mul_of_nonneg_left htree (by linarith)
          _ = dyadicLevelCount (Nat.succ m) *
              dyadicTreeSquareEnergy (Nat.succ m) a := by
                simp [dyadicLevelCount, dyadicTreeSquareEnergy,
                  right, H]

/-- Every prefix of a real sequence on `[0,2^m)` is controlled by `m+1` times
the complete aligned dyadic-tree square energy. -/
theorem finitePrefixSum_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a := by
  simpa [dyadicLevelCount_eq] using
    finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux m a N hN

/-- The exact maximum over all prefixes satisfies the same square bound. -/
theorem dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicPrefixMaximum m a ^ 2 ≤
      ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a := by
  let B : ℝ := ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a
  have hB : 0 ≤ B := by
    dsimp [B]
    exact mul_nonneg (by positivity)
      (dyadicTreeSquareEnergy_nonneg m a)
  have hpoint : ∀ N : ℕ, N ≤ 2 ^ m →
      |finitePrefixSum a N| ≤ Real.sqrt B := by
    intro N hN
    have hsquare := finitePrefixSum_sq_le_dyadicTreeSquareEnergy
      m a N hN
    have habsSquare :
        |finitePrefixSum a N| ^ 2 ≤ (Real.sqrt B) ^ 2 := by
      rw [sq_abs, Real.sq_sqrt hB]
      simpa [B] using hsquare
    exact (sq_le_sq₀ (abs_nonneg _) (Real.sqrt_nonneg _)).mp habsSquare
  have hmax : dyadicPrefixMaximum m a ≤ Real.sqrt B := by
    exact (partialSups_le_iff).2 hpoint
  have hmaxNonneg : 0 ≤ dyadicPrefixMaximum m a := by
    have hzero := le_partialSups_of_le
      (fun N : ℕ => |finitePrefixSum a N|)
      (Nat.zero_le (2 ^ m))
    exact (abs_nonneg (finitePrefixSum a 0)).trans hzero
  have hmaxSquare :
      dyadicPrefixMaximum m a ^ 2 ≤ (Real.sqrt B) ^ 2 :=
    (sq_le_sq₀ hmaxNonneg (Real.sqrt_nonneg _)).2 hmax
  rw [Real.sq_sqrt hB] at hmaxSquare
  simpa [B] using hmaxSquare

/-- At depth zero the energy is exactly the singleton block square. -/
@[simp] theorem dyadicTreeSquareEnergy_zero (a : ℕ → ℝ) :
    dyadicTreeSquareEnergy 0 a = a 0 ^ 2 := by
  simp [dyadicTreeSquareEnergy, alignedDyadicBlockSum,
    finitePrefixSum, shiftedSequence]

/-- At depth one the energy visibly contains the complete block and both
singleton child blocks. -/
theorem dyadicTreeSquareEnergy_one (a : ℕ → ℝ) :
    dyadicTreeSquareEnergy 1 a =
      (a 0 + a 1) ^ 2 + a 0 ^ 2 + a 1 ^ 2 := by
  norm_num [dyadicTreeSquareEnergy, alignedDyadicBlockSum,
    finitePrefixSum, shiftedSequence, Finset.sum_range_succ]

end GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.finitePrefixSum_sq_le_dyadicTreeSquareEnergy
#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
```
