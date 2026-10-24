# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcomplex.Variante4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a426ad1d93535f296861a3730abaf15f5401dd6` · SHA-256 `e4eeac691a33a5ef54c28e4f06f9e0748377bf29c1eb233e82e034687f226a1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Basic
import Mathlib.CategoryTheory.Subpresheaf.Basic

/-!
# Subcomplexes of a simplicial set

Given a simplicial set `X`, this file defines the type `X.Subcomplex`
of subcomplexes of `X` as an abbreviation for `Subpresheaf X`.
It also introduces a coercion from `X.Subcomplex` to `SSet`.

## Implementation note

`SSet.{u}` is defined as `Cᵒᵖ ⥤ Type u`, but it is not an abbreviation.
This is the reason why `Subpresheaf.ι` is redefined here as `Subcomplex.ι`
so that this morphism appears as a morphism in `SSet` instead of a morphism
in the category of presheaves.

-/

universe u

open CategoryTheory

namespace SSet

variable (X : SSet.{u})

/-- The complete lattice of subcomplexes of a simplicial set. -/
abbrev Subcomplex := Subpresheaf X

variable {X}

/-- The underlying simplicial set of a subcomplex. -/
abbrev Subcomplex.toSSet (A : X.Subcomplex) : SSet.{u} := A.toPresheaf

instance : CoeOut X.Subcomplex SSet.{u} where
  coe := fun S ↦ S.toSSet

/-- If `A : Subcomplex X`, this is the inclusion `A ⟶ X` in the category `SSet`. -/
abbrev Subcomplex.ι (A : Subcomplex X) : Quiver.Hom (V := SSet) A X := Subpresheaf.ι A

instance (A : X.Subcomplex) : Mono A.ι :=
  inferInstanceAs (Mono (Subpresheaf.ι A))

end SSet
```
