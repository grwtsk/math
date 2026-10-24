# Complete source: GRWTSK.Topology.GeneralTopology.LinearUpperLowerSetTopology.Variant161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74abbed62857e6dd8b5989233f5f99972816f8a4` · SHA-256 `161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
module

public import Mathlib.Topology.Order.UpperLowerSetTopology
public import Mathlib.Topology.Separation.Regular

/-!
# Linear upper or lower sets topologies are completely normal
-/

public section

open Set Topology.IsUpperSet

instance (priority := low) {α : Type*}
    [TopologicalSpace α] [LinearOrder α] [Topology.IsUpperSet α] : CompletelyNormalSpace α where
  completely_normal s t hcst hsct := by
    obtain (rfl | ⟨a, ha⟩) := s.eq_empty_or_nonempty
    case inl => simp
    obtain (rfl | ⟨b, hb⟩) := t.eq_empty_or_nonempty
    case inl => simp
    exfalso
    grewrite [← singleton_subset_iff.mpr ha, ← singleton_subset_iff.mpr hb] at hcst hsct
    conv at hcst => equals a < b => simp
    conv at hsct => equals b < a => simp
    exact lt_asymm hcst hsct

instance (priority := low) {α : Type*}
    [TopologicalSpace α] [LinearOrder α] [Topology.IsLowerSet α] :
    CompletelyNormalSpace α :=
  inferInstanceAs (CompletelyNormalSpace αᵒᵈ)

instance : CompletelyNormalSpace Prop :=
  let := Prop.linearOrder
  inferInstance
```
