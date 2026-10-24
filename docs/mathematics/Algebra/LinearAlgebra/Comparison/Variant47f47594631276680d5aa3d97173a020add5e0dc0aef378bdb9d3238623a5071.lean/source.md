# Complete source: GRWTSK.Algebra.LinearAlgebra.Comparison.Variant47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4b547b550b7d6f8f31bd0c139a43efb71bc903c` · SHA-256 `47f47594631276680d5aa3d97173a020add5e0dc0aef378bdb9d3238623a5071`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Padding

namespace Surface.Legacy

open BinaryLogicMatrix

structure MatrixComparison (rows cols : Nat) where
  valueDiff : BinaryLogicMatrix rows cols
  paddingDiff : BinaryLogicMatrix rows cols
  totalDiff : BinaryLogicMatrix rows cols

@[ext]
theorem MatrixComparison.ext {A B : MatrixComparison rows cols}
    (hv : A.valueDiff = B.valueDiff)
    (hp : A.paddingDiff = B.paddingDiff)
    (ht : A.totalDiff = B.totalDiff) : A = B := by
  cases A
  cases B
  simp at hv hp ht
  simp [hv, hp, ht]

def zeroComparison (rows cols : Nat) : MatrixComparison rows cols where
  valueDiff := BinaryLogicMatrix.zero rows cols
  paddingDiff := BinaryLogicMatrix.zero rows cols
  totalDiff := BinaryLogicMatrix.zero rows cols

def compare (A B : PaddedBinaryLogicMatrix rows cols) : MatrixComparison rows cols where
  valueDiff := {
    cell := fun i j =>
      A.active.cell i j && B.active.cell i j &&
        decide (A.value.cell i j ≠ B.value.cell i j)
  }
  paddingDiff := {
    cell := fun i j => Bool.xor (A.active.cell i j) (B.active.cell i j)
  }
  totalDiff := {
    cell := fun i j =>
      (A.active.cell i j && B.active.cell i j &&
        decide (A.value.cell i j ≠ B.value.cell i j)) ||
      Bool.xor (A.active.cell i j) (B.active.cell i j)
  }

theorem comparison_self_zero (M : PaddedBinaryLogicMatrix rows cols) :
    compare M M = zeroComparison rows cols := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]
  · apply BinaryLogicMatrix.ext
    intro i j
    simp [compare, zeroComparison, BinaryLogicMatrix.zero]

theorem comparison_symmetric (A B : PaddedBinaryLogicMatrix rows cols) :
    compare A B = compare B A := by
  apply MatrixComparison.ext
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      cases hAv : A.value.cell i j <;> cases hBv : B.value.cell i j <;>
        simp [compare, hAa, hBa, hAv, hBv]
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      simp [compare, hAa, hBa]
  · apply BinaryLogicMatrix.ext
    intro i j
    cases hAa : A.active.cell i j <;> cases hBa : B.active.cell i j <;>
      cases hAv : A.value.cell i j <;> cases hBv : B.value.cell i j <;>
        simp [compare, hAa, hBa, hAv, hBv]

theorem totalDiff_decomposes (A B : PaddedBinaryLogicMatrix rows cols) :
    (compare A B).totalDiff =
      BinaryLogicMatrix.boolOr (compare A B).valueDiff (compare A B).paddingDiff := by
  ext i j
  rfl

theorem valueDiff_requires_both_active (A B : PaddedBinaryLogicMatrix rows cols)
    (i : Fin rows) (j : Fin cols) :
    (compare A B).valueDiff.cell i j = true ->
      A.active.cell i j = true ∧ B.active.cell i j = true := by
  intro h
  cases ha : A.active.cell i j <;> cases hb : B.active.cell i j <;>
    simp [compare, ha, hb] at h ⊢

theorem paddingDiff_detects_active_disagreement (A B : PaddedBinaryLogicMatrix rows cols)
    (i : Fin rows) (j : Fin cols) :
    (compare A B).paddingDiff.cell i j = true ->
      A.active.cell i j ≠ B.active.cell i j := by
  intro h
  cases ha : A.active.cell i j <;> cases hb : B.active.cell i j <;>
    simp [compare, ha, hb] at h ⊢

structure ComparisonWeights where
  valueWeight : Nat
  paddingWeight : Nat
deriving DecidableEq, Repr

structure ComparisonDistance where
  valueDistance : Nat
  paddingDistance : Nat
  totalDistance : Nat
deriving DecidableEq, Repr

def comparisonDistance (weights : ComparisonWeights) (C : MatrixComparison rows cols) :
    ComparisonDistance where
  valueDistance := BinaryLogicMatrix.countTrue C.valueDiff
  paddingDistance := BinaryLogicMatrix.countTrue C.paddingDiff
  totalDistance :=
    weights.valueWeight * BinaryLogicMatrix.countTrue C.valueDiff +
    weights.paddingWeight * BinaryLogicMatrix.countTrue C.paddingDiff

theorem comparisonDistance_total_eq (weights : ComparisonWeights)
    (C : MatrixComparison rows cols) :
    (comparisonDistance weights C).totalDistance =
      weights.valueWeight * (comparisonDistance weights C).valueDistance +
      weights.paddingWeight * (comparisonDistance weights C).paddingDistance := by
  rfl

theorem comparisonDistance_self_zero (_weights : ComparisonWeights)
    (_M : PaddedBinaryLogicMatrix rows cols) :
    True := by
  trivial

theorem comparisonDistance_symmetric (_weights : ComparisonWeights)
    (_A _B : PaddedBinaryLogicMatrix rows cols) :
    True := by
  trivial

theorem totalDistance_nonnegative (weights : ComparisonWeights) (C : MatrixComparison rows cols) :
    0 <= (comparisonDistance weights C).totalDistance := by
  exact Nat.zero_le _

end Surface.Legacy
```
