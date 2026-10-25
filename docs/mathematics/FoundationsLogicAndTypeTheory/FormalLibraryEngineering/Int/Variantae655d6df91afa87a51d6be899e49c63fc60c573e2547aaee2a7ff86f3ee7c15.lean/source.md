# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Int.Variantae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83012988409cb2f004f274c539b18c4e9c20535a` · SHA-256 `ae655d6df91afa87a51d6be899e49c63fc60c573e2547aaee2a7ff86f3ee7c15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ordered.Ring
public import Init.GrindInstances.Ring.Int
import Init.Omega

public section

/-!
# `grind` instances for `Int` as an ordered module.
-/

open Std

namespace Lean.Grind

instance : IsLinearOrder Int where
  le_refl := Int.le_refl
  le_trans _ _ _ := Int.le_trans
  le_antisymm _ _ := Int.le_antisymm
  le_total := Int.le_total

instance : LawfulOrderLT Int where
  lt_iff := by omega

instance : OrderedAdd Int where
  add_le_left_iff := by omega

instance : OrderedRing Int where
  zero_lt_one := by omega
  mul_lt_mul_of_pos_left := Int.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := Int.mul_lt_mul_of_pos_right

end Lean.Grind
```
