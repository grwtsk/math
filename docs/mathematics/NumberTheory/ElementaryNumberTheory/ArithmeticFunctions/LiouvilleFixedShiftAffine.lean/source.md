# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleFixedShiftAffine

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f3ce4b8553de27d257a4c3b8f04fe0f56c14621` · SHA-256 `dccd5ae3491534a30a9df1afd19bfb91cae321518e87b169670c1195a337af71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Arithmetic affine-reindexing source draft assistance: OpenAI.
Upstream Mathlib Liouville definition and theorems retain their authorship. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Dyadic affine reindexing for EVERY fixed positive additive shift

Issues: grwtsk/math#630, #441, #571. Draft PR #638, direct parent head
2857898617903e29d46baca3c25016a23acdee13.

A genuine ordinary Liouville correlation with any fixed positive shift
h decomposes at an even endpoint into two fixed nonproportional affine
correlations. Both parities of h are treated and the excluded h=0
case is given a non-cancellation witness.

The final index correction records the exact distinction between sums
over m=0,...,M (this repository's dyadic representation) and
m=1,...,M (the external Result 007 comparator's Icc convention).
The m=0 terms are NOT discarded or silently absorbed into a theorem.

This source imports NO external analytic result. The inspected public OpenAI ComparatorChallenges comparator has
unfinished proof placeholders and is NOT a locally kernel-verified supplier.
No fixed-form rate, growing-shift uniformity, higher-order Chowla
estimate, or RH consequence is claimed.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge

open scoped BigOperators

/-- The ordinary, zero-based two-point Liouville term with additive
shift h. All arguments are positive since the first is n+1. -/
def fixedShiftTerm (h n : ℕ) : ℤ :=
  ArithmeticFunction.liouville (n + 1) *
    ArithmeticFunction.liouville (n + 1 + h)

/-- Odd shift h=2j+1: the even-root affine pair. -/
def oddAffineLeftTerm (j m : ℕ) : ℤ :=
  ArithmeticFunction.liouville (2 * m + 1) *
    ArithmeticFunction.liouville (m + j + 1)

/-- Odd shift h=2j+1: the odd-root affine pair. -/
def oddAffineRightTerm (j m : ℕ) : ℤ :=
  ArithmeticFunction.liouville (m + 1) *
    ArithmeticFunction.liouville (2 * m + 2 * j + 3)

/-- Even shift h=2j: the even-root affine pair. -/
def evenAffineLeftTerm (j m : ℕ) : ℤ :=
  ArithmeticFunction.liouville (2 * m + 1) *
    ArithmeticFunction.liouville (2 * m + 2 * j + 1)

/-- Even shift h=2j: the odd-root affine pair. -/
def evenAffineRightTerm (j m : ℕ) : ℤ :=
  ArithmeticFunction.liouville (m + 1) *
    ArithmeticFunction.liouville (m + j + 1)

/-- In the odd-shift case, the second argument at an even root is
twice a smaller positive integer, giving one exact minus sign. -/
theorem oddShift_evenRoot (j m : ℕ) :
    fixedShiftTerm (2 * j + 1) (2 * m) =
      -oddAffineLeftTerm j m := by
  unfold fixedShiftTerm oddAffineLeftTerm
  have hindex : 2 * m + 1 + (2 * j + 1) = 2 * (m + j + 1) := by omega
  rw [hindex, liouville_twice]
  ring

/-- At an odd root, the first argument is even instead; its dyadic
sign is negative, with no extra factor of 2 in the sum. -/
theorem oddShift_oddRoot (j m : ℕ) :
    fixedShiftTerm (2 * j + 1) (2 * m + 1) =
      -oddAffineRightTerm j m := by
  unfold fixedShiftTerm oddAffineRightTerm
  have hsecond :
      2 * m + 1 + 1 + (2 * j + 1) = 2 * m + 2 * j + 3 := by omega
  have hfirst : 2 * m + 1 + 1 = 2 * (m + 1) := by omega
  rw [hsecond, hfirst, liouville_twice]
  ring

/-- Odd positive shift: TWO negative fixed affine correlations. -/
theorem oddShift_pair (j m : ℕ) :
    fixedShiftTerm (2 * j + 1) (2 * m) +
      fixedShiftTerm (2 * j + 1) (2 * m + 1) =
      -(oddAffineLeftTerm j m + oddAffineRightTerm j m) := by
  rw [oddShift_evenRoot, oddShift_oddRoot]
  ring

/-- At even shifts, both factors at an even root are odd. -/
theorem evenShift_evenRoot (j m : ℕ) :
    fixedShiftTerm (2 * j) (2 * m) = evenAffineLeftTerm j m := by
  unfold fixedShiftTerm evenAffineLeftTerm
  have hindex : 2 * m + 1 + 2 * j = 2 * m + 2 * j + 1 := by omega
  rw [hindex]

/-- At an odd root with even shift, BOTH arguments are even.
The two minus signs cancel: this case has the opposite sign
to the odd-shift dyadic decomposition. -/
theorem evenShift_oddRoot (j m : ℕ) :
    fixedShiftTerm (2 * j) (2 * m + 1) =
      evenAffineRightTerm j m := by
  unfold fixedShiftTerm evenAffineRightTerm
  have hsecond :
      2 * m + 1 + 1 + 2 * j = 2 * (m + j + 1) := by omega
  have hfirst : 2 * m + 1 + 1 = 2 * (m + 1) := by omega
  rw [hsecond, hfirst, liouville_twice, liouville_twice]
  ring

/-- Even shift: TWO positive fixed affine correlations. -/
theorem evenShift_pair (j m : ℕ) :
    fixedShiftTerm (2 * j) (2 * m) +
      fixedShiftTerm (2 * j) (2 * m + 1) =
      evenAffineLeftTerm j m + evenAffineRightTerm j m := by
  rw [evenShift_evenRoot, evenShift_oddRoot]

/-- Exact ordinary finite correlation at even endpoint 2M,
without an imported cancellation or limit theorem. -/
theorem oddShift_prefix (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), fixedShiftTerm (2 * j + 1) n) =
      -((∑ m ∈ Finset.range M, oddAffineLeftTerm j m) +
        (∑ m ∈ Finset.range M, oddAffineRightTerm j m)) := by
  calc
    _ = ∑ m ∈ Finset.range M,
          (fixedShiftTerm (2 * j + 1) (2 * m) +
           fixedShiftTerm (2 * j + 1) (2 * m + 1)) :=
      sum_even_odd_reindex _ M
    _ = ∑ m ∈ Finset.range M,
          -(oddAffineLeftTerm j m + oddAffineRightTerm j m) := by
      apply Finset.sum_congr rfl
      intro m _
      exact oddShift_pair j m
    _ = _ := by
      rw [Finset.sum_neg_distrib, Finset.sum_add_distrib]

/-- Exact even-shift prefix, including the non-cancelling case j=0. -/
theorem evenShift_prefix (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), fixedShiftTerm (2 * j) n) =
      (∑ m ∈ Finset.range M, evenAffineLeftTerm j m) +
        (∑ m ∈ Finset.range M, evenAffineRightTerm j m) := by
  calc
    _ = ∑ m ∈ Finset.range M,
          (fixedShiftTerm (2 * j) (2 * m) +
           fixedShiftTerm (2 * j) (2 * m + 1)) :=
      sum_even_odd_reindex _ M
    _ = ∑ m ∈ Finset.range M,
          (evenAffineLeftTerm j m + evenAffineRightTerm j m) := by
      apply Finset.sum_congr rfl
      intro m _
      exact evenShift_pair j m
    _ = _ := by rw [Finset.sum_add_distrib]

/-- Shift zero is NOT a Chowla two-point cancellation question:
the two factors are equal and each positive Liouville value squares to 1. -/
theorem zeroShift_term (n : ℕ) : fixedShiftTerm 0 n = 1 := by
  simpa [fixedShiftTerm] using
    liouville_positive_square (n + 1) (Nat.succ_pos n)

/-- The entire zero-shift correlation has maximal, not vanishing, mass. -/
theorem zeroShift_prefix (N : ℕ) :
    (∑ n ∈ Finset.range N, fixedShiftTerm 0 n) = (N : ℤ) := by
  calc
    _ = ∑ _n ∈ Finset.range N, (1 : ℤ) := by
      apply Finset.sum_congr rfl
      intro n _
      exact zeroShift_term n
    _ = (N : ℤ) := by simp

/-- Exact zero-based to positive-index endpoint adapter. This puts
the two fixed affine sums into the Icc 1 M convention used by the
inspected external Result 007 comparator, preserving the m=0 term. -/
theorem range_head_add_Icc (f : ℕ → ℤ) (M : ℕ) :
    (∑ m ∈ Finset.range (M + 1), f m) =
      f 0 + ∑ m ∈ Finset.Icc 1 M, f m := by
  have hset :
      (Finset.range (M + 1)).erase 0 = Finset.Icc 1 M := by
    ext m
    simp only [Finset.mem_erase, Finset.mem_range, Finset.mem_Icc]
    omega
  have hzero : (0 : ℕ) ∈ Finset.range (M + 1) := by simp
  have hsplit :=
    Finset.sum_erase_add (Finset.range (M + 1)) f hzero
  simpa only [hset, add_comm] using hsplit.symm

/-- Exact odd-shift comparison with two Icc 1 M affine sums.
The TWO initial terms at m=0 are explicitly charged. -/
theorem oddShift_Icc_comparator (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j + 1) n) =
      -(oddAffineLeftTerm j 0 + oddAffineRightTerm j 0 +
        (∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m) +
        (∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m)) := by
  rw [oddShift_prefix, range_head_add_Icc, range_head_add_Icc]
  ring

/-- Exact even-shift comparison with two positive-index affine
sums. For the nonproportional interpretation require j>0. -/
theorem evenShift_Icc_comparator (j M : ℕ) :
    (∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j) n) =
      evenAffineLeftTerm j 0 + evenAffineRightTerm j 0 +
        (∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m) +
        (∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m) := by
  rw [evenShift_prefix, range_head_add_Icc, range_head_add_Icc]
  ring

/-- The two fixed odd-shift affine pairs have identical nonzero
coefficient determinant h=2j+1. Their coefficients and intercepts
are all natural and positive, exactly as required by the comparator. -/
theorem oddShift_affine_determinants (j : ℕ) :
    ((2 : ℤ) * ((j : ℤ) + 1) - 1 = 2 * (j : ℤ) + 1) ∧
    (((2 : ℤ) * (j : ℤ) + 3) - 2 = 2 * (j : ℤ) + 1) ∧
    (2 * (j : ℤ) + 1 ≠ 0) := by
  constructor
  · ring
  constructor
  · ring
  · omega

/-- For even positive shifts h=2j, the determinants are
4j and j. Both vanish at j=0, which must be excluded. -/
theorem evenShift_affine_determinants (j : ℕ) (hj : 0 < j) :
    ((2 : ℤ) * (2 * (j : ℤ) + 1) - 2 = 4 * (j : ℤ)) ∧
    (((j : ℤ) + 1) - 1 = (j : ℤ)) ∧
    (4 * (j : ℤ) ≠ 0) ∧ ((j : ℤ) ≠ 0) := by
  constructor
  · ring
  constructor
  · ring
  constructor <;> omega

/-- The exact odd-shift positive-index affine triangle. The two
m=0 corrections remain EXPLICIT rather than being hidden inside
a fixed-form asymptotic constant. -/
theorem oddShift_Icc_triangle (j M : ℕ) :
    |∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j + 1) n| ≤
      |oddAffineLeftTerm j 0| + |oddAffineRightTerm j 0| +
        |∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m| +
        |∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m| := by
  rw [oddShift_Icc_comparator, abs_neg]
  calc
    _ = |(oddAffineLeftTerm j 0 + oddAffineRightTerm j 0) +
          ((∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m) +
           (∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m))| := by
      congr 1
      ring
    _ ≤ |oddAffineLeftTerm j 0 + oddAffineRightTerm j 0| +
          |(∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m) +
           (∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m)| := abs_add_le _ _
    _ ≤ (|oddAffineLeftTerm j 0| + |oddAffineRightTerm j 0|) +
          (|∑ m ∈ Finset.Icc 1 M, oddAffineLeftTerm j m| +
           |∑ m ∈ Finset.Icc 1 M, oddAffineRightTerm j m|) :=
      add_le_add (abs_add_le _ _) (abs_add_le _ _)
    _ = _ := by ring

/-- The analogous positive-index triangle for even shifts.
Both fixed affine pairs are nonproportional only when j>0. -/
theorem evenShift_Icc_triangle (j M : ℕ) :
    |∑ n ∈ Finset.range (2 * (M + 1)),
       fixedShiftTerm (2 * j) n| ≤
      |evenAffineLeftTerm j 0| + |evenAffineRightTerm j 0| +
        |∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m| +
        |∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m| := by
  rw [evenShift_Icc_comparator]
  calc
    _ = |(evenAffineLeftTerm j 0 + evenAffineRightTerm j 0) +
          ((∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m) +
           (∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m))| := by
      congr 1
      ring
    _ ≤ |evenAffineLeftTerm j 0 + evenAffineRightTerm j 0| +
          |(∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m) +
           (∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m)| := abs_add_le _ _
    _ ≤ (|evenAffineLeftTerm j 0| + |evenAffineRightTerm j 0|) +
          (|∑ m ∈ Finset.Icc 1 M, evenAffineLeftTerm j m| +
           |∑ m ∈ Finset.Icc 1 M, evenAffineRightTerm j m|) :=
      add_le_add (abs_add_le _ _) (abs_add_le _ _)
    _ = _ := by ring

/-- Exact extra terminal sample at an ODD cutoff; the source here
does not replace this with a uniform analytic error claim. -/
theorem fixedShift_oddCutoff (h M : ℕ) :
    (∑ n ∈ Finset.range (2 * M + 1), fixedShiftTerm h n) =
      (∑ n ∈ Finset.range (2 * M), fixedShiftTerm h n) +
        fixedShiftTerm h (2 * M) := by
  rw [Finset.sum_range_succ]

end GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge
```
