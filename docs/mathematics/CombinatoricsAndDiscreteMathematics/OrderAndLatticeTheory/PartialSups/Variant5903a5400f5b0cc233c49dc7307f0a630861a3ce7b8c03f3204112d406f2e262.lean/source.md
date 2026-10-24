# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variant5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `074c74299111affcbde82d65c67efb0e13623758` · SHA-256 `5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Order.PartialSups

/-!
# `PartialSups` in a `SuccAddOrder`
-/

open Finset

variable {α ι : Type*} [SemilatticeSup α]

@[simp]
lemma partialSups_add_one [Add ι] [One ι] [LinearOrder ι] [LocallyFiniteOrderBot ι] [SuccAddOrder ι]
    (f : ι → α) (i : ι) : partialSups f (i + 1) = partialSups f i ⊔ f (i + 1) :=
  Order.succ_eq_add_one i ▸ partialSups_succ f i
```
