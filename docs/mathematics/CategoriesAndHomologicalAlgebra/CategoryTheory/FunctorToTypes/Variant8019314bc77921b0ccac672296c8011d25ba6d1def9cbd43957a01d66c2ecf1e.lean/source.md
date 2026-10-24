# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70c1894237edcefd28bf89ebe9cf80b72fadb0f4` · SHA-256 `8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Types.Colimits

/-!
# Concrete description of (co)limits in functor categories

Some of the concrete descriptions of (co)limits in `Type v` extend to (co)limits in the functor
category `K ⥤ Type v`.
-/

namespace CategoryTheory.FunctorToTypes

open CategoryTheory.Limits

universe w v₁ v₂ u₁ u₂

variable {J : Type u₁} [Category.{v₁} J] {K : Type u₂} [Category.{v₂} K]
variable (F : J ⥤ K ⥤ Type w)

theorem jointly_surjective (k : K) {t : Cocone F} (h : IsColimit t) (x : t.pt.obj k)
    [∀ k, HasColimit (F.flip.obj k)] : ∃ j y, x = (t.ι.app j).app k y := by
  let hev := isColimitOfPreserves ((evaluation _ _).obj k) h
  obtain ⟨j, y, rfl⟩ := Types.jointly_surjective _ hev x
  exact ⟨j, y, by simp⟩

theorem jointly_surjective' [∀ k, HasColimit (F.flip.obj k)] (k : K) (x : (colimit F).obj k) :
    ∃ j y, x = (colimit.ι F j).app k y :=
  jointly_surjective _ _ (colimit.isColimit _) x

theorem colimit.map_ι_apply [HasColimit F] (j : J) {k k' : K} {f : k ⟶ k'} {x} :
    (colimit F).map f ((colimit.ι F j).app _ x) = (colimit.ι F j).app _ ((F.obj j).map f x) :=
  congrFun ((colimit.ι F j).naturality _).symm _

end CategoryTheory.FunctorToTypes
```
