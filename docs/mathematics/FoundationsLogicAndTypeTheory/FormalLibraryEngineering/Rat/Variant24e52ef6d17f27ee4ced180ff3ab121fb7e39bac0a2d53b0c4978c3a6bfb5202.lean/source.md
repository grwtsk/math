# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variant24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bae7de31810b89157943732aa97e821809d79c0e` · SHA-256 `24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Robin Arnez. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Arnez
-/
module

prelude
public import Init.Grind.Ordered.Ring
public import Init.GrindInstances.Ring.Rat

public section

/-!
# `grind` instances for `Rat` as an ordered module.
-/

open Std

namespace Lean.Grind

instance : IsLinearOrder Rat where
  le_refl _ := Rat.le_refl
  le_trans _ _ _ := Rat.le_trans
  le_antisymm _ _ := Rat.le_antisymm
  le_total _ _ := Rat.le_total

instance : LawfulOrderLT Rat where
  lt_iff _ _ := by rw [← Rat.not_le, iff_and_self]; exact Rat.le_total.resolve_left

instance : OrderedAdd Rat where
  add_le_left_iff {a b} c := by simp [Rat.add_comm _ c, Rat.add_le_add_left]

instance : OrderedRing Rat where
  zero_lt_one := by decide
  mul_lt_mul_of_pos_left := Rat.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := Rat.mul_lt_mul_of_pos_right

end Lean.Grind
```
