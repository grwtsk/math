# Complete source: GRWTSK.Topology.GeneralTopology.ExtendFrom.Variant818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58b59a7bbc8645082c50f53e5c41b66b353ebfeb` · SHA-256 `818d1cd2070d6fa49b7940cf29c6aeccaf21b381435a1f0033d833625e019c20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Yury Kudryashov
-/
import Mathlib.Topology.ExtendFrom
import Mathlib.Topology.Order.DenselyOrdered

/-!
# Lemmas about `extendFrom` in an order topology.
-/

open Filter Set Topology

variable {α β : Type*}

theorem continuousOn_Icc_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [RegularSpace β] {f : α → β} {a b : α} {la lb : β}
    (hab : a ≠ b) (hf : ContinuousOn f (Ioo a b)) (ha : Tendsto f (𝓝[>] a) (𝓝 la))
    (hb : Tendsto f (𝓝[<] b) (𝓝 lb)) : ContinuousOn (extendFrom (Ioo a b) f) (Icc a b) := by
  apply continuousOn_extendFrom
  · rw [closure_Ioo hab]
  · intro x x_in
    rcases eq_endpoints_or_mem_Ioo_of_mem_Icc x_in with (rfl | rfl | h)
    · exact ⟨la, ha.mono_left <| nhdsWithin_mono _ Ioo_subset_Ioi_self⟩
    · exact ⟨lb, hb.mono_left <| nhdsWithin_mono _ Ioo_subset_Iio_self⟩
    · exact ⟨f x, hf x h⟩

theorem eq_lim_at_left_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [T2Space β] {f : α → β} {a b : α} {la : β} (hab : a < b)
    (ha : Tendsto f (𝓝[>] a) (𝓝 la)) : extendFrom (Ioo a b) f a = la := by
  apply extendFrom_eq
  · rw [closure_Ioo hab.ne]
    simp only [le_of_lt hab, left_mem_Icc, right_mem_Icc]
  · simpa [hab]

theorem eq_lim_at_right_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [T2Space β] {f : α → β} {a b : α} {lb : β} (hab : a < b)
    (hb : Tendsto f (𝓝[<] b) (𝓝 lb)) : extendFrom (Ioo a b) f b = lb := by
  apply extendFrom_eq
  · rw [closure_Ioo hab.ne]
    simp only [le_of_lt hab, left_mem_Icc, right_mem_Icc]
  · simpa [hab]

theorem continuousOn_Ico_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [RegularSpace β] {f : α → β} {a b : α} {la : β}
    (hab : a < b) (hf : ContinuousOn f (Ioo a b)) (ha : Tendsto f (𝓝[>] a) (𝓝 la)) :
    ContinuousOn (extendFrom (Ioo a b) f) (Ico a b) := by
  apply continuousOn_extendFrom
  · rw [closure_Ioo hab.ne]
    exact Ico_subset_Icc_self
  · intro x x_in
    rcases eq_left_or_mem_Ioo_of_mem_Ico x_in with (rfl | h)
    · use la
      simpa [hab]
    · exact ⟨f x, hf x h⟩

theorem continuousOn_Ioc_extendFrom_Ioo [TopologicalSpace α] [LinearOrder α] [DenselyOrdered α]
    [OrderTopology α] [TopologicalSpace β] [RegularSpace β] {f : α → β} {a b : α} {lb : β}
    (hab : a < b) (hf : ContinuousOn f (Ioo a b)) (hb : Tendsto f (𝓝[<] b) (𝓝 lb)) :
    ContinuousOn (extendFrom (Ioo a b) f) (Ioc a b) := by
  have := @continuousOn_Ico_extendFrom_Ioo αᵒᵈ _ _ _ _ _ _ _ f _ _ lb hab
  erw [Ico_toDual, Ioi_toDual, Ioo_toDual] at this
  exact this hf hb
```
