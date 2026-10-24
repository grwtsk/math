# Complete source: GRWTSK.Algebra.GroupTheory.AddChar.Variant8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bddd2986121094cb877fc2920dfad247fc91729` · SHA-256 `8670db044e5a1c2db0ad4f0f41a8b503dfcd20ae8b477539df324fadc1431aa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Algebra.Group.AddChar
import Mathlib.Topology.DenseEmbedding

/-!
# Additive characters of topological monoids
-/

lemma DenseRange.addChar_eq_of_eval_one_eq {A M : Type*} [TopologicalSpace A] [AddMonoidWithOne A]
    [Monoid M] [TopologicalSpace M] [T2Space M] (hdr : DenseRange ((↑) : ℕ → A))
    {κ₁ κ₂ : AddChar A M} (hκ₁ : Continuous κ₁) (hκ₂ : Continuous κ₂) (h : κ₁ 1 = κ₂ 1) :
    κ₁ = κ₂ := by
  refine DFunLike.coe_injective <| hdr.equalizer hκ₁ hκ₂ (funext fun n ↦ ?_)
  simp only [Function.comp_apply, ← nsmul_one, h, AddChar.map_nsmul_eq_pow]
```
