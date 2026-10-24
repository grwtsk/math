# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoeSort.Variantb7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb37e8e8197093773536c4a1e9d9c8e328183b9b` · SHA-256 `b7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Johannes Hölzl, Reid Barton, Kim Morrison, Patrick Massot, Kyle Miller,
Minchao Wu, Yury Kudryashov, Floris van Doorn
-/
import Mathlib.Data.Set.Defs

/-!
# Coercing sets to types.

This file defines `Set.Elem s` as the type of all elements of the set `s`.
More advanced theorems about these definitions are located in other files in `Mathlib/Data/Set`.

## Main definitions

- `Set.Elem`: coercion of a set to a type; it is reducibly equal to `{x // x ∈ s}`;
-/

namespace Set

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

/-- Given the set `s`, `Elem s` is the `Type` of element of `s`.

It is currently an abbreviation so that instance coming from `Subtype` are available.
If you're interested in making it a `def`, as it probably should be,
you'll then need to create additional instances (and possibly prove lemmas about them).
See e.g. `Mathlib/Data/Set/Order.lean`.
-/
@[coe, reducible] def Elem (s : Set α) : Type u := {x // x ∈ s}

/-- Coercion from a set to the corresponding subtype. -/
instance : CoeSort (Set α) (Type u) := ⟨Elem⟩

@[simp] theorem elem_mem {σ α} [I : Membership σ α] {S} :
    @Set.Elem σ (@Membership.mem σ α I S) = { x // x ∈ S } := rfl

end Set
```
