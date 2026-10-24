# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2802b51ef84f506e6ec12172a907be5803ed6414` · SHA-256 `99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton
-/
import Mathlib.Topology.Category.TopCat.Adjunctions
import Mathlib.CategoryTheory.Functor.EpiMono

/-!
# Epi- and monomorphisms in `Top`

This file shows that a continuous function is an epimorphism in the category of topological spaces
if and only if it is surjective, and that a continuous function is a monomorphism in the category of
topological spaces if and only if it is injective.
-/


universe u

open CategoryTheory

open TopCat

namespace TopCat

theorem epi_iff_surjective {X Y : TopCat.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  suffices Epi f ↔ Epi ((forget TopCat).map f) by
    rw [this, CategoryTheory.epi_iff_surjective]
    rfl
  constructor
  · intro
    infer_instance
  · apply Functor.epi_of_epi_map

theorem mono_iff_injective {X Y : TopCat.{u}} (f : X ⟶ Y) : Mono f ↔ Function.Injective f := by
  suffices Mono f ↔ Mono ((forget TopCat).map f) by
    rw [this, CategoryTheory.mono_iff_injective]
    rfl
  constructor
  · intro
    infer_instance
  · apply Functor.mono_of_mono_map

end TopCat
```
