# Complete source: GRWTSK.Algebra.LinearAlgebra.Padding.Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `053a7a39abafcf395a8e961744078be20a575c20` · SHA-256 `bd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

open BinaryLogicMatrix

structure PaddedBinaryLogicMatrix (rows cols : Nat) where
  value : BinaryLogicMatrix rows cols
  active : BinaryLogicMatrix rows cols

inductive PaddingPolicy where
  | ignorePadding
  | includePaddingAsFalse
deriving DecidableEq, Repr

namespace PaddingPolicy

def name : PaddingPolicy -> String
  | .ignorePadding => "ignorePadding"
  | .includePaddingAsFalse => "includePaddingAsFalse"

end PaddingPolicy

def padTo (_policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (R C : Nat) (_hr : r ≤ R) (_hc : c ≤ C) :
    PaddedBinaryLogicMatrix R C where
  value := {
    cell := fun i j =>
      if hri : i.val < r then
        if hcj : j.val < c then
          M.cell ⟨i.val, hri⟩ ⟨j.val, hcj⟩
        else
          false
      else
        false
  }
  active := {
    cell := fun i j =>
      decide (i.val < r ∧ j.val < c)
  }

theorem padTo_preserves_original (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin r) (j : Fin c) :
    (padTo policy M R C hr hc).value.cell ⟨i.val, Nat.lt_of_lt_of_le i.isLt hr⟩
      ⟨j.val, Nat.lt_of_lt_of_le j.isLt hc⟩ = M.cell i j := by
  simp [padTo]

theorem padTo_marks_row_padding_inactive (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    ¬ i.val < r -> (padTo policy M R C hr hc).active.cell i j = false := by
  intro h
  simp [padTo, h]

theorem padTo_marks_col_padding_inactive (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    ¬ j.val < c -> (padTo policy M R C hr hc).active.cell i j = false := by
  intro h
  by_cases hi : i.val < r
  · simp [padTo, hi, h]
  · simp [padTo, hi]

theorem padTo_marks_padding_inactive (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    (¬ i.val < r ∨ ¬ j.val < c) ->
      (padTo policy M R C hr hc).active.cell i j = false := by
  intro h
  cases h with
  | inl hi =>
      exact padTo_marks_row_padding_inactive policy M hr hc i j hi
  | inr hj =>
      exact padTo_marks_col_padding_inactive policy M hr hc i j hj

theorem padTo_active_iff_in_original_bounds (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    (padTo policy M R C hr hc).active.cell i j = true ↔ i.val < r ∧ j.val < c := by
  simp [padTo]

theorem padTo_padding_false_ignore (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin R) (j : Fin C) :
    (¬ i.val < r ∨ ¬ j.val < c) ->
      (padTo PaddingPolicy.ignorePadding M R C hr hc).value.cell i j = false := by
  intro h
  cases h with
  | inl hi =>
      simp [padTo, hi]
  | inr hj =>
      by_cases hi : i.val < r
      · simp [padTo, hi, hj]
      · simp [padTo, hi]

end Surface.Legacy
```
