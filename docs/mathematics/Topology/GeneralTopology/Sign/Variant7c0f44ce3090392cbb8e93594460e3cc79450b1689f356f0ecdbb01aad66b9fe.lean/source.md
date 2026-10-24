# Complete source: GRWTSK.Topology.GeneralTopology.Sign.Variant7c0f44ce3090392cbb8e93594460e3cc79450b1689f356f0ecdbb01aad66b9fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cff433643e3d3c2f252088a2222c12da38bb5cf` · SHA-256 `7c0f44ce3090392cbb8e93594460e3cc79450b1689f356f0ecdbb01aad66b9fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
module

public import Mathlib.Basic.Sign.Defs
public import Mathlib.Topology.Order.Basic

/-!
# Topology on `SignType`

This file gives `SignType` the discrete topology, and proves continuity results for `SignType.sign`
in an `OrderTopology`.
-/

public section

instance : TopologicalSpace SignType :=
  ⊥

instance : DiscreteTopology SignType :=
  ⟨rfl⟩

variable {α : Type*} [Zero α] [TopologicalSpace α]

section PartialOrder

variable [PartialOrder α] [DecidableLT α] [OrderTopology α]

theorem continuousAt_sign_of_pos {a : α} (h : 0 < a) : ContinuousAt SignType.sign a := by
  refine (continuousAt_const : ContinuousAt (fun _ => (1 : SignType)) a).congr ?_
  rw [Filter.EventuallyEq, eventually_nhds_iff]
  exact ⟨{ x | 0 < x }, fun x hx => (sign_pos hx).symm, isOpen_lt' 0, h⟩

theorem continuousAt_sign_of_neg {a : α} (h : a < 0) : ContinuousAt SignType.sign a := by
  refine (continuousAt_const : ContinuousAt (fun x => (-1 : SignType)) a).congr ?_
  rw [Filter.EventuallyEq, eventually_nhds_iff]
  exact ⟨{ x | x < 0 }, fun x hx => (sign_neg hx).symm, isOpen_gt' 0, h⟩

end PartialOrder

section LinearOrder

variable [LinearOrder α] [OrderTopology α]

theorem continuousAt_sign_of_ne_zero {a : α} (h : a ≠ 0) : ContinuousAt SignType.sign a := by
  rcases h.lt_or_gt with (h_neg | h_pos)
  · exact continuousAt_sign_of_neg h_neg
  · exact continuousAt_sign_of_pos h_pos

end LinearOrder
```
