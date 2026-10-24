# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanAlgebra.Variant04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31794a5f21e789a3337be91548ff262177ac4d95` · SHA-256 `04013cef485047b37e4230e974a247eedff33c1cd2834e4c1eeb310718157cc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Order.CompleteBooleanAlgebra

/-!
# Sets are a complete atomic boolean algebra.

This file contains only the definition of the complete atomic boolean algebra structure on `Set`.
Indexed union/intersection are defined in `Mathlib.Order.SetNotation`; lemmas are available in
`Mathlib/Data/Set/Lattice.lean`.

## Main declarations

* `Set.completeAtomicBooleanAlgebra`: `Set α` is a `CompleteAtomicBooleanAlgebra` with `≤ = ⊆`,
  `< = ⊂`, `⊓ = ∩`, `⊔ = ∪`, `⨅ = ⋂`, `⨆ = ⋃` and `\` as the set difference.
  See `Set.instBooleanAlgebra`.
-/

variable {α : Type*}

namespace Set

/-! ### Complete lattice and complete Boolean algebra instances -/

instance instCompleteAtomicBooleanAlgebra : CompleteAtomicBooleanAlgebra (Set α) :=
  { instBooleanAlgebra with
    le_sSup := fun _ t t_in _ a_in => ⟨t, t_in, a_in⟩
    sSup_le := fun _ _ h _ ⟨t', ⟨t'_in, a_in⟩⟩ => h t' t'_in a_in
    le_sInf := fun _ _ h _ a_in t' t'_in => h t' t'_in a_in
    sInf_le := fun _ _ t_in _ h => h _ t_in
    iInf_iSup_eq := by intros; ext; simp [Classical.skolem] }

instance : OrderTop (Set α) where
  top := univ
  le_top := by simp

end Set
```
