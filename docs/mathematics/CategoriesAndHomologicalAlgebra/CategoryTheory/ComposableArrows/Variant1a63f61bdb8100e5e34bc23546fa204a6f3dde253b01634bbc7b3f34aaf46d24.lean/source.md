# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrows.Variant1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `844829cbc597369403d072b02ae7812c6310afa6` · SHA-256 `1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Andrew Yang
-/
import Mathlib.CategoryTheory.ComposableArrows
import Mathlib.CategoryTheory.Localization.CalculusOfFractions

/-! # Essential surjectivity of the functor induced on composable arrows

Assuming that `L : C ⥤ D` is a localization functor for a class of morphisms `W`
that has a calculus of left *or* right fractions, we show in this file
that the functor `L.mapComposableArrows n : ComposableArrows C n ⥤ ComposableArrows D n`
is essentially surjective for any `n : ℕ`.

-/

namespace CategoryTheory

namespace Localization

variable {C D : Type*} [Category C] [Category D] (L : C ⥤ D) (W : MorphismProperty C)
  [L.IsLocalization W]

open ComposableArrows

lemma essSurj_mapComposableArrows_of_hasRightCalculusOfFractions
    [W.HasRightCalculusOfFractions] (n : ℕ) :
    (L.mapComposableArrows n).EssSurj where
  mem_essImage Y := by
    have := essSurj L W
    induction n with
    | zero =>
      obtain ⟨Y, rfl⟩ := mk₀_surjective Y
      exact ⟨mk₀ _, ⟨isoMk₀ (L.objObjPreimageIso Y)⟩⟩
    | succ n hn =>
      obtain ⟨Y, Z, f, rfl⟩ := ComposableArrows.precomp_surjective Y
      obtain ⟨Y', ⟨e⟩⟩ := hn Y
      obtain ⟨f', hf'⟩ := exists_rightFraction L W
        ((L.objObjPreimageIso Z).hom ≫ f ≫ (e.app 0).inv)
      refine ⟨Y'.precomp f'.f,
        ⟨isoMkSucc (isoOfHom L W _ f'.hs ≪≫ L.objObjPreimageIso Z) e ?_⟩⟩
      dsimp at hf' ⊢
      simp [← cancel_mono (e.inv.app 0), hf']

lemma essSurj_mapComposableArrows [W.HasLeftCalculusOfFractions] (n : ℕ) :
    (L.mapComposableArrows n).EssSurj := by
  have := essSurj_mapComposableArrows_of_hasRightCalculusOfFractions L.op W.op n
  have := Functor.essSurj_of_iso (L.mapComposableArrowsOpIso n).symm
  exact Functor.essSurj_of_comp_fully_faithful _ (opEquivalence D n).functor.rightOp

end Localization

end CategoryTheory
```
