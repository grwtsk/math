# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ceb3bfd918da3c9dec91df8b7b7902b2be2cb23` · SHA-256 `02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Nicolò Cavalleri
-/
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Order.Group.Lattice
import Mathlib.Topology.ContinuousMap.Algebra
import Mathlib.Topology.ContinuousMap.Ordered

/-!
# Continuous maps as a lattice ordered group
-/


/-!
We now provide formulas for `f ⊓ g` and `f ⊔ g`, where `f g : C(α, β)`,
in terms of `ContinuousMap.abs`.
-/

namespace ContinuousMap

section Lattice

variable {α : Type*} [TopologicalSpace α]
variable {β : Type*} [TopologicalSpace β]

/-! `C(α, β)`is a lattice ordered group -/

@[to_additive]
instance instMulLeftMono [PartialOrder β] [Mul β] [ContinuousMul β] [MulLeftMono β] :
    MulLeftMono C(α, β) :=
  ⟨fun _ _ _ hg₁₂ x => mul_le_mul_left' (hg₁₂ x) _⟩

@[to_additive]
instance instMulRightMono [PartialOrder β] [Mul β] [ContinuousMul β] [MulRightMono β] :
    MulRightMono C(α, β) :=
  ⟨fun _ _ _ hg₁₂ x => mul_le_mul_right' (hg₁₂ x) _⟩

variable [Group β] [IsTopologicalGroup β] [Lattice β] [TopologicalLattice β]

@[to_additive (attr := simp, norm_cast)]
lemma coe_mabs (f : C(α, β)) : ⇑|f|ₘ = |⇑f|ₘ := rfl

@[to_additive (attr := simp)]
lemma mabs_apply (f : C(α, β)) (x : α) : |f|ₘ x = |f x|ₘ := rfl

end Lattice

end ContinuousMap
```
