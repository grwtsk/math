# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Set.Variantbb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `678d1c56486b4d1372c5ef830213811bf5fe9380` · SHA-256 `bb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Data.Set.FunctorToTypes
import Mathlib.CategoryTheory.Limits.Lattice
import Mathlib.CategoryTheory.Limits.Preserves.Basic
import Mathlib.CategoryTheory.Limits.Types.Filtered

/-!
# The functor from `Set X` to types preserves filtered colimits

Given `X : Type u`, the functor `Set.functorToTypes : Set X ⥤ Type u`
which sends `A : Set X` to its underlying type preserves filtered colimits.

-/

universe w w' u

open CategoryTheory Limits CompleteLattice

namespace Set

open CompleteLattice in
instance {J : Type w} [Category.{w'} J] {X : Type u} [IsFilteredOrEmpty J] :
    PreservesColimitsOfShape J (functorToTypes (X := X)) where
  preservesColimit {F} := by
    apply preservesColimit_of_preserves_colimit_cocone (colimitCocone F).isColimit
    apply Types.FilteredColimit.isColimitOf
    · rintro ⟨x, hx⟩
      simp only [colimitCocone_cocone_pt, iSup_eq_iUnion, mem_iUnion] at hx
      obtain ⟨i, hi⟩ := hx
      exact ⟨i, ⟨x, hi⟩, rfl⟩
    · intro i j ⟨x, hx⟩ ⟨y, hy⟩ h
      obtain rfl : x = y := by simpa using h
      exact ⟨IsFiltered.max i j, IsFiltered.leftToMax i j, IsFiltered.rightToMax i j, rfl⟩

end Set
```
