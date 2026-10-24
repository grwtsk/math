# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4bb579684ea9164211439b06d4f53b5524215ba84f9adb0184b9ccb622d1afaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c98db1c56b0f84118b4f1cc2caeac23949e354ac` · SHA-256 `4bb579684ea9164211439b06d4f53b5524215ba84f9adb0184b9ccb622d1afaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.Monoidal
public import Mathlib.CategoryTheory.Enriched.Ordinary.Basic
public import Mathlib.CategoryTheory.Monoidal.Closed.Basic

/-!
# Simplicial categories

A simplicial category is a category `C` that is enriched over the
category of simplicial sets in such a way that morphisms in
`C` identify to the `0`-simplices of the enriched hom.

## TODO

* construct a simplicial category structure on simplicial objects, so
  that it applies in particular to simplicial sets
* obtain the adjunction property `(K ⊗ X ⟶ Y) ≃ (K ⟶ sHom X Y)` when `K`, `X`, and `Y`
  are simplicial sets
* develop the notion of "simplicial tensor" `K ⊗ₛ X : C` with `K : SSet` and `X : C`
  an object in a simplicial category `C`
* define the notion of path between `0`-simplices of simplicial sets
* deduce the notion of homotopy between morphisms in a simplicial category
* obtain that homotopies in simplicial categories can be interpreted as given
  by morphisms `Δ[1] ⊗ X ⟶ Y`.

## References
* [Daniel G. Quillen, *Homotopical algebra*, II §1][quillen-1967]

-/

@[expose] public section

universe v u

open CategoryTheory Category MonoidalCategory

open scoped Simplicial

namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

/-- A simplicial category is a category `C` that is enriched over the
category of simplicial sets in such a way that morphisms in
`C` identify to the `0`-simplices of the enriched hom. -/
abbrev SimplicialCategory := EnrichedOrdinaryCategory SSet.{v} C

namespace SimplicialCategory

variable [SimplicialCategory C]

variable {C}

/-- Abbreviation for the enriched hom of a simplicial category. -/
abbrev sHom (K L : C) : SSet.{v} := K ⟶[SSet] L

/-- Abbreviation for the enriched composition in a simplicial category. -/
abbrev sHomComp (K L M : C) : sHom K L ⊗ sHom L M ⟶ sHom K M := eComp SSet K L M

/-- The bijection `(K ⟶ L) ≃ sHom K L _⦋0⦌` for all objects `K` and `L`
in a simplicial category. -/
def homEquiv' (K L : C) : (K ⟶ L) ≃ sHom K L _⦋0⦌ :=
  (eHomEquiv SSet).trans (sHom K L).unitHomEquiv

variable (C) in
/-- The bifunctor `Cᵒᵖ ⥤ C ⥤ SSet.{v}` which sends `K : Cᵒᵖ` and `L : C` to `sHom K.unop L`. -/
noncomputable abbrev sHomFunctor : Cᵒᵖ ⥤ C ⥤ SSet.{v} := eHomFunctor _ _

end SimplicialCategory

end CategoryTheory
```
