# Complete source: GRWTSK.Analysis.MeasureTheory.Pointwise.Variant01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84db89e4019cb7b3586349349491632c3368430b` · SHA-256 `01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Alex J. Best
-/
import Mathlib.MeasureTheory.Group.Arithmetic

/-!
# Pointwise set operations on `MeasurableSet`s

In this file we prove several versions of the following fact: if `s` is a measurable set, then so is
`a • s`. Note that the pointwise product of two measurable sets need not be measurable, so there is
no `MeasurableSet.mul` etc.
-/


open Pointwise

open Set

@[to_additive]
theorem MeasurableSet.const_smul {G α : Type*} [Group G] [MulAction G α] [MeasurableSpace G]
    [MeasurableSpace α] [MeasurableSMul G α] {s : Set α} (hs : MeasurableSet s) (a : G) :
    MeasurableSet (a • s) := by
  rw [← preimage_smul_inv]
  exact measurable_const_smul _ hs

theorem MeasurableSet.const_smul_of_ne_zero {G₀ α : Type*} [GroupWithZero G₀] [MulAction G₀ α]
    [MeasurableSpace G₀] [MeasurableSpace α] [MeasurableSMul G₀ α] {s : Set α}
    (hs : MeasurableSet s) {a : G₀} (ha : a ≠ 0) : MeasurableSet (a • s) := by
  rw [← preimage_smul_inv₀ ha]
  exact measurable_const_smul _ hs

theorem MeasurableSet.const_smul₀ {G₀ α : Type*} [GroupWithZero G₀] [Zero α]
    [MulActionWithZero G₀ α] [MeasurableSpace G₀] [MeasurableSpace α] [MeasurableSMul G₀ α]
    [MeasurableSingletonClass α] {s : Set α} (hs : MeasurableSet s) (a : G₀) :
    MeasurableSet (a • s) := by
  rcases eq_or_ne a 0 with (rfl | ha)
  exacts [(subsingleton_zero_smul_set s).measurableSet, hs.const_smul_of_ne_zero ha]
```
