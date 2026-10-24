# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variantef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4ca7ef2b7bb2f27223e06df701a7b3c15680a3a` · SHA-256 `ef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Filtered.CostructuredArrow
import Mathlib.CategoryTheory.Functor.Flat

/-!
# Pulling back filteredness along representably flat functors

We show that if `F : C ⥤ D` is a representably coflat functor between two categories,
filteredness of `D` implies filteredness of `C`. Dually, if `F` is representably flat,
cofilteredness of `D` implies cofilteredness of `C`.

Transferring (co)filteredness *along* representably (co)flat functors is given by
`IsFiltered.of_final` and its dual, since every representably flat functor is final and every
representably coflat functor is initial.
-/

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Limits

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable (F : C ⥤ D)

lemma isFiltered_of_representablyCoflat [IsFiltered D] [RepresentablyCoflat F] : IsFiltered C :=
  isFiltered_of_isFiltered_costructuredArrow F (𝟭 _)

lemma isCofiltered_of_representablyFlat [IsCofiltered D] [RepresentablyFlat F] :
    IsCofiltered C := by
  have := isFiltered_of_representablyCoflat F.op
  exact isCofiltered_of_isFiltered_op C

end CategoryTheory
```
