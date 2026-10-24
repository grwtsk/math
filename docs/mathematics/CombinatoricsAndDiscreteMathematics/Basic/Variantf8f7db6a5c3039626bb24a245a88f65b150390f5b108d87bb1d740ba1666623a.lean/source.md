# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantf8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a618ac84cc8c317a7b5f1e1ef9bc2018aec96b5` · SHA-256 `f8f7db6a5c3039626bb24a245a88f65b150390f5b108d87bb1d740ba1666623a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Extra lemmas about canonically ordered monoids
-/

namespace Finset
variable {ι α : Type*} [AddCommMonoid α] [LinearOrder α] [OrderBot α] [CanonicallyOrderedAdd α]
  {s : Finset ι} {f : ι → α}

@[simp] lemma sup_eq_zero : s.sup f = 0 ↔ ∀ i ∈ s, f i = 0 := by simp [← bot_eq_zero']
@[simp] lemma sup'_eq_zero (hs) : s.sup' hs f = 0 ↔ ∀ i ∈ s, f i = 0 := by simp [sup'_eq_sup]

end Finset
```
