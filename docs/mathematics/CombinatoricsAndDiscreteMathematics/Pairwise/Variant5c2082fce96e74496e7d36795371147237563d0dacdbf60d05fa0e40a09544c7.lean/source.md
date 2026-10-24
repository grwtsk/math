# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variant5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c647a8e4b59cc40d7efedb3b6378d894d6f0ce2` · SHA-256 `5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Data.List.Pairwise
import Mathlib.Data.Multiset.Defs

/-!
# Pairwise relations on a multiset

This file provides basic results about `Multiset.Pairwise` (definitions are in
`Mathlib/Data/Multiset/Defs.lean`).
-/

namespace Multiset

variable {α : Type*} {r : α → α → Prop} {s : Multiset α}

theorem Pairwise.forall (H : Symmetric r) (hs : Pairwise r s) :
    ∀ ⦃a⦄, a ∈ s → ∀ ⦃b⦄, b ∈ s → a ≠ b → r a b :=
  let ⟨_, hl₁, hl₂⟩ := hs
  hl₁.symm ▸ hl₂.forall H

end Multiset
```
