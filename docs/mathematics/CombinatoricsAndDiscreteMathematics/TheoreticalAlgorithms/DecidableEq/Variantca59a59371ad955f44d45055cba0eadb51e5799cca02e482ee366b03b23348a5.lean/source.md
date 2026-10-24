# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEq.Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7917103eb09cceb51c3ff19526c3039312c8a2cb` · SHA-256 `ca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Vector.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

theorem isEqv_iff_rel {xs ys : Vector α n} {r} :
    Vector.isEqv xs ys r ↔ ∀ (i : Nat) (h' : i < n), r xs[i] ys[i] := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  simp [Array.isEqv_iff_rel, h]

theorem isEqv_eq_decide (xs ys : Vector α n) (r) :
    Vector.isEqv xs ys r = decide (∀ (i : Nat) (h' : i < n), r xs[i] ys[i]) := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  simp -implicitDefEqProofs [Array.isEqv_eq_decide, h]

@[simp] theorem isEqv_toArray [BEq α] (xs ys : Vector α n) : (xs.toArray.isEqv ys.toArray r) = (xs.isEqv ys r) := by
  simp [isEqv_eq_decide, Array.isEqv_eq_decide]

theorem eq_of_isEqv [DecidableEq α] (xs ys : Vector α n) (h : Vector.isEqv xs ys (fun x y => x = y)) : xs = ys := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  rw [← Vector.toArray_inj]
  apply Array.eq_of_isEqv
  simp_all

theorem isEqv_self_beq [BEq α] [ReflBEq α] (xs : Vector α n) : Vector.isEqv xs xs (· == ·) = true := by
  rcases xs with ⟨xs, rfl⟩
  simp [Array.isEqv_self_beq]

theorem isEqv_self [DecidableEq α] (xs : Vector α n) : Vector.isEqv xs xs (· = ·) = true := by
  rcases xs with ⟨xs, rfl⟩
  simp [Array.isEqv_self]

theorem beq_eq_decide [BEq α] (xs ys : Vector α n) :
    (xs == ys) = decide (∀ (i : Nat) (h' : i < n), xs[i] == ys[i]) := by
  simp [BEq.beq, isEqv_eq_decide]

instance [BEq α] [ReflBEq α] : ReflBEq (Vector α n) where
  rfl := by simp [BEq.beq, isEqv_self_beq]

instance [BEq α] [LawfulBEq α] : LawfulBEq (Vector α n) where
  eq_of_beq := by
    rintro ⟨xs, rfl⟩ ⟨ys, h⟩ h'
    simpa using h'

end Vector
```
