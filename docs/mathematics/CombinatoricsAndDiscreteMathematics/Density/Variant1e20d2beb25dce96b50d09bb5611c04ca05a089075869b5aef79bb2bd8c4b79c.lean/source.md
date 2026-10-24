# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `646c0ee6780ffc005f5293dcdec6666ee2fde709` · SHA-256 `1e20d2beb25dce96b50d09bb5611c04ca05a089075869b5aef79bb2bd8c4b79c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
import Mathlib.Algebra.Group.Action.Pointwise.Finset
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Data.Finset.Density

/-!
# Theorems about the density of pointwise operations on finsets.
-/

open scoped Pointwise

variable {α β : Type*}

namespace Finset

variable [DecidableEq α] [InvolutiveInv α] {s : Finset α} {a : α} in
@[to_additive (attr := simp)]
lemma dens_inv [Fintype α] (s : Finset α) : s⁻¹.dens = s.dens := by simp [dens]

variable [DecidableEq β] [Group α] [MulAction α β] {s t : Finset β} {a : α} {b : β} in
@[to_additive (attr := simp)]
lemma dens_smul_finset [Fintype β] (a : α) (s : Finset β) : (a • s).dens = s.dens := by simp [dens]

end Finset
```
