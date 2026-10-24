# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimit.Varianta4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5f1cf63d77b6612da1c1afaa3c832ecf4dbc1ec` · SHA-256 `a4b29f7b0b22cd8ba5e8d44e5296012248d5c88c1f0ea818327d8e1fd9671fad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Limits.Types
import Mathlib.CategoryTheory.Functor.Currying
import Mathlib.CategoryTheory.Limits.FunctorCategory

#align_import category_theory.limits.colimit_limit from "leanprover-community/mathlib"@"59382264386afdbaf1727e617f5fdda511992eb9"

/-!
# The morphism comparing a colimit of limits with the corresponding limit of colimits.

For `F : J × K ⥤ C` there is always a morphism $\colim_k \lim_j F(j,k) → \lim_j \colim_k F(j, k)$.
While it is not usually an isomorphism, with additional hypotheses on `J` and `K` it may be,
in which case we say that "colimits commute with limits".

The prototypical example, proved in `CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit`,
is that when `C = Type`, filtered colimits commute with finite limits.

## References
* Borceux, Handbook of categorical algebra 1, Section 2.13
* [Stacks: Filtered colimits](https://stacks.math.columbia.edu/tag/002W)
-/


universe v u

open CategoryTheory

namespace CategoryTheory.Limits

variable {J K : Type v} [SmallCategory J] [SmallCategory K]

variable {C : Type u} [Category.{v} C]

variable (F : J × K ⥤ C)

open CategoryTheory.prod

theorem map_id_left_eq_curry_map {j : J} {k k' : K} {f : k ⟶ k'} :
    F.map ((𝟙 j, f) : (j, k) ⟶ (j, k')) = ((curry.obj F).obj j).map f :=
  rfl
#align category_theory.limits.map_id_left_eq_curry_map CategoryTheory.Limits.map_id_left_eq_curry_map

theorem map_id_right_eq_curry_swap_map {j j' : J} {f : j ⟶ j'} {k : K} :
    F.map ((f, 𝟙 k) : (j, k) ⟶ (j', k)) = ((curry.obj (Prod.swap K J ⋙ F)).obj k).map f :=
  rfl
#align category_theory.limits.map_id_right_eq_curry_swap_map CategoryTheory.Limits.map_id_right_eq_curry_swap_map

variable [HasLimitsOfShape J C]

variable [HasColimitsOfShape K C]

/-- The universal morphism
$\colim_k \lim_j F(j,k) → \lim_j \colim_k F(j, k)$.
-/
noncomputable def colimitLimitToLimitColimit :
    colimit (curry.obj (Prod.swap K J ⋙ F) ⋙ lim) ⟶ limit (curry.obj F ⋙ colim) :=
  limit.lift (curry.obj F ⋙ colim)
    { pt := _
      π :=
        { app := fun j =>
            colimit.desc (curry.obj (Prod.swap K J ⋙ F) ⋙ lim)
              { pt := _
                ι :=
                  { app := fun k =>
                      limit.π ((curry.obj (Prod.swap K J ⋙ F)).obj k) j ≫
                        colimit.ι ((curry.obj F).obj j) k
                    naturality := by
                      intro k k' f
                      simp only [Functor.comp_obj, lim_obj, colimit.cocone_x,
                        Functor.const_obj_obj, Functor.comp_map, lim_map,
                        curry_obj_obj_obj, Prod.swap_obj, limMap_π_assoc, curry_obj_map_app,
                        Prod.swap_map, Functor.const_obj_map, Category.comp_id]
                      rw [map_id_left_eq_curry_map, colimit.w] } }
          naturality := by
            intro j j' f
            dsimp
            ext k
            simp only [Functor.comp_obj, lim_obj, Category.id_comp, colimit.ι_desc,
              colimit.ι_desc_assoc, Category.assoc, ι_colimMap,
              curry_obj_obj_obj, curry_obj_map_app]
            rw [map_id_right_eq_curry_swap_map, limit.w_assoc] } }
#align category_theory.limits.colimit_limit_to_limit_colimit CategoryTheory.Limits.colimitLimitToLimitColimit

/-- Since `colimit_limit_to_limit_colimit` is a morphism from a colimit to a limit,
this lemma characterises it.
-/
@[reassoc (attr := simp)]
theorem ι_colimitLimitToLimitColimit_π (j) (k) :
    colimit.ι _ k ≫ colimitLimitToLimitColimit F ≫ limit.π _ j =
      limit.π ((curry.obj (Prod.swap K J ⋙ F)).obj k) j ≫ colimit.ι ((curry.obj F).obj j) k := by
  dsimp [colimitLimitToLimitColimit]
  simp
#align category_theory.limits.ι_colimit_limit_to_limit_colimit_π CategoryTheory.Limits.ι_colimitLimitToLimitColimit_π

@[simp]
theorem ι_colimitLimitToLimitColimit_π_apply (F : J × K ⥤ Type v) (j : J) (k : K) (f) :
    limit.π (curry.obj F ⋙ colim) j
        (colimitLimitToLimitColimit F (colimit.ι (curry.obj (Prod.swap K J ⋙ F) ⋙ lim) k f)) =
      colimit.ι ((curry.obj F).obj j) k (limit.π ((curry.obj (Prod.swap K J ⋙ F)).obj k) j f) := by
  dsimp [colimitLimitToLimitColimit]
  simp
#align category_theory.limits.ι_colimit_limit_to_limit_colimit_π_apply CategoryTheory.Limits.ι_colimitLimitToLimitColimit_π_apply

/-- The map `colimit_limit_to_limit_colimit` realized as a map of cones. -/
@[simps]
noncomputable def colimitLimitToLimitColimitCone (G : J ⥤ K ⥤ C) [HasLimit G] :
    colim.mapCone (limit.cone G) ⟶ limit.cone (G ⋙ colim)
    where
  Hom :=
    colim.map (limitIsoSwapCompLim G).hom ≫
      colimitLimitToLimitColimit (uncurry.obj G : _) ≫
        lim.map (whiskerRight (currying.unitIso.app G).inv colim)
  w j := by
    dsimp
    ext1 k
    simp only [Category.assoc, limMap_π, Functor.comp_obj, colim_obj, whiskerRight_app,
      colim_map, ι_colimMap_assoc, lim_obj, limitIsoSwapCompLim_hom_app,
      ι_colimitLimitToLimitColimit_π_assoc, curry_obj_obj_obj, Prod.swap_obj,
      uncurry_obj_obj, ι_colimMap, currying_unitIso_inv_app_app_app, Category.id_comp,
      limMap_π_assoc, Functor.flip_obj_obj, flipIsoCurrySwapUncurry_hom_app_app]
    erw [limitObjIsoLimitCompEvaluation_hom_π_assoc]
#align category_theory.limits.colimit_limit_to_limit_colimit_cone CategoryTheory.Limits.colimitLimitToLimitColimitCone

end CategoryTheory.Limits
```
