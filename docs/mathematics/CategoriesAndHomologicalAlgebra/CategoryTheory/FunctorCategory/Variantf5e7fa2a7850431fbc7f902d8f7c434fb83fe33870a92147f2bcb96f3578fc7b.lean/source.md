# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `577d126e7630208808a43f1756e7c40928e9ab0e` · SHA-256 `912a385c3c08b5c95659abbc0db03be887664b692052e30491f22ee9df080cc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategoryProdPreservesColimits.Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategoryProdPreservesColimits.Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Limits.Yoneda
import Mathlib.CategoryTheory.Limits.Presheaf


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategoryProdPreservesColimits.Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c

#align_import category_theory.limits.preserves.functor_category from "leanprover-community/mathlib"@"39478763114722f0ec7613cb2f3f7701f9b86c8d"

/-!
# Preservation of (co)limits in the functor category

* Show that if `X ⨯ -` preserves colimits in `D` for any `X : D`, then the product functor `F ⨯ -`
for `F : C ⥤ D` preserves colimits.

The idea of the proof is simply that products and colimits in the functor category are computed
pointwise, so pointwise preservation implies general preservation.

* Show that `F ⋙ -` preserves limits if the target category has limits.
* Show that `F : C ⥤ D` preserves limits of a certain shape
  if `Lan F.op : Cᵒᵖ ⥤ Type*` preserves such limits.

# References

https://ncatlab.org/nlab/show/commutativity+of+limits+and+colimits#preservation_by_functor_categories_and_localizations

-/


universe v₁ v₂ u u₂

noncomputable section

namespace CategoryTheory

open Category Limits

variable {C : Type u} [Category.{v₁} C]

variable {D : Type u₂} [Category.{u} D]

variable {E : Type u} [Category.{v₂} E]

/-- If `X × -` preserves colimits in `D` for any `X : D`, then the product functor `F ⨯ -` for
`F : C ⥤ D` also preserves colimits.

Note this is (mathematically) a special case of the statement that
"if limits commute with colimits in `D`, then they do as well in `C ⥤ D`"
but the story in Lean is a bit more complex, and this statement isn't directly a special case.
That is, even with a formalised proof of the general statement, there would still need to be some
work to convert to this version: namely, the natural isomorphism
`(evaluation C D).obj k ⋙ prod.functor.obj (F.obj k) ≅
  prod.functor.obj F ⋙ (evaluation C D).obj k`
-/
def FunctorCategory.prodPreservesColimits [HasBinaryProducts D] [HasColimits D]
    [∀ X : D, PreservesColimits (prod.functor.obj X)] (F : C ⥤ D) :
    PreservesColimits (prod.functor.obj F)
    where preservesColimitsOfShape {J : Type u} [Category.{u, u} J] :=
    {
      preservesColimit := fun {K : J ⥤ C ⥤ D} =>
        ( {
          preserves := fun {c : Cocone K} (t : IsColimit c) => by
            apply evaluationJointlyReflectsColimits _ fun {k} => ?_
            change IsColimit ((prod.functor.obj F ⋙ (evaluation _ _).obj k).mapCocone c)
            let this :=
              isColimitOfPreserves ((evaluation C D).obj k ⋙ prod.functor.obj (F.obj k)) t
            apply IsColimit.mapCoconeEquiv _ this
            apply (NatIso.ofComponents _ _).symm
            · intro G
              apply asIso (prodComparison ((evaluation C D).obj k) F G)
            · intro G G'
              apply prodComparison_natural ((evaluation C D).obj k) (𝟙 F) } ) }
#align category_theory.functor_category.prod_preserves_colimits CategoryTheory.FunctorCategory.prodPreservesColimits

instance whiskeringLeftPreservesLimits [HasLimits D] (F : C ⥤ E) :
    PreservesLimits ((whiskeringLeft C E D).obj F) :=
  ⟨fun {J} [hJ : Category J] =>
    ⟨fun {K} =>
      ⟨fun c {hc} => by
        apply evaluationJointlyReflectsLimits
        intro Y
        change IsLimit (((evaluation E D).obj (F.obj Y)).mapCone c)
        exact PreservesLimit.preserves hc⟩⟩⟩
#align category_theory.whiskering_left_preserves_limits CategoryTheory.whiskeringLeftPreservesLimits

instance whiskeringRightPreservesLimitsOfShape {C : Type u} [Category C] {D : Type*}
    [Category.{u} D] {E : Type*} [Category.{u} E] {J : Type u} [SmallCategory J]
    [HasLimitsOfShape J D] (F : D ⥤ E) [PreservesLimitsOfShape J F] :
    PreservesLimitsOfShape J ((whiskeringRight C D E).obj F) :=
  ⟨fun {K} =>
    ⟨fun c {hc} => by
      apply evaluationJointlyReflectsLimits _ (fun k => ?_)
      change IsLimit (((evaluation _ _).obj k ⋙ F).mapCone c)
      exact PreservesLimit.preserves hc⟩⟩
#align category_theory.whiskering_right_preserves_limits_of_shape CategoryTheory.whiskeringRightPreservesLimitsOfShape

instance whiskeringRightPreservesLimits {C : Type u} [Category C] {D : Type*} [Category.{u} D]
    {E : Type*} [Category.{u} E] (F : D ⥤ E) [HasLimits D] [PreservesLimits F] :
    PreservesLimits ((whiskeringRight C D E).obj F) :=
  ⟨inferInstance⟩
#align category_theory.whiskering_right_preserves_limits CategoryTheory.whiskeringRightPreservesLimits

-- porting note: fixed spelling mistake in def
/-- If `Lan F.op : (Cᵒᵖ ⥤ Type*) ⥤ (Dᵒᵖ ⥤ Type*)` preserves limits of shape `J`, so will `F`. -/
noncomputable def preservesLimitOfLanPreservesLimit {C D : Type u} [SmallCategory C]
    [SmallCategory D] (F : C ⥤ D) (J : Type u) [SmallCategory J]
    [PreservesLimitsOfShape J (lan F.op : _ ⥤ Dᵒᵖ ⥤ Type u)] : PreservesLimitsOfShape J F := by
  apply @preservesLimitsOfShapeOfReflectsOfPreserves _ _ _ _ _ _ _ _ F yoneda ?_
  exact preservesLimitsOfShapeOfNatIso (compYonedaIsoYonedaCompLan F).symm
set_option linter.uppercaseLean3 false in
#align category_theory.preserves_limit_of_Lan_preserves_limit CategoryTheory.preservesLimitOfLanPreservesLimit

end CategoryTheory
```
