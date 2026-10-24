# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfColimitCommutesFiniteLimit.Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a0c5121aacf6c7b09468e8110eaf46e882d825` · SHA-256 `b2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Types.Colimits
import Mathlib.CategoryTheory.Limits.Filtered
import Mathlib.CategoryTheory.Limits.Yoneda

/-!
# If colimits of shape `K` commute with finite limits, then `K` is filtered.
-/

universe v u

namespace CategoryTheory

variable {K : Type v} [SmallCategory K]

open Limits

/-- A converse to `colimitLimitIso`: if colimits of shape `K` commute with finite
limits, then `K` is filtered. -/
theorem isFiltered_of_nonempty_limit_colimit_to_colimit_limit
    (h : ∀ {J : Type v} [SmallCategory J] [FinCategory J] (F : J ⥤ K ⥤ Type v),
      Nonempty (limit (colimit F.flip) ⟶ colimit (limit F))) : IsFiltered K := by
  refine IsFiltered.iff_nonempty_limit.2 (fun {J} _ _ F => ?_)
  suffices Nonempty (limit (colimit (F.op ⋙ coyoneda).flip)) by
    obtain ⟨X, y, -⟩ := Types.jointly_surjective' (this.map (h (F.op ⋙ coyoneda)).some).some
    exact ⟨X, ⟨(limitObjIsoLimitCompEvaluation (F.op ⋙ coyoneda) _).hom y⟩⟩
  let _ (j : Jᵒᵖ) : Unique ((colimit (F.op ⋙ coyoneda).flip).obj j) :=
    ((colimitObjIsoColimitCompEvaluation (F.op ⋙ coyoneda).flip _ ≪≫
      Coyoneda.colimitCoyonedaIso _)).toEquiv.unique
  exact ⟨Types.Limit.mk (colimit (F.op ⋙ coyoneda).flip) (fun j => default) (by subsingleton)⟩

end CategoryTheory
```
