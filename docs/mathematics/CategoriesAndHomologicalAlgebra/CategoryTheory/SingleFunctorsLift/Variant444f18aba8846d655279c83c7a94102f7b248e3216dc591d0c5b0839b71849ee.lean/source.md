# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleFunctorsLift.Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41c2a184dc7f71859d20b499744eea1cfa99dd95` · SHA-256 `5d9e6747b15051c33e1449303a775b4e2cc3f11ea927e55aaa88c12c731e00a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftIso.Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ShiftIso.Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Shift/SingleFunctorsLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
public import Mathlib.CategoryTheory.Shift.SingleFunctors

/-!
# Lift of a "single functor" to a full subcategory

Let `C`, `D` and `E` be categories. Let `A` be an additive monoid.
Assume that `D` and `E` have shifts by `A` and that we have
a fully faithful functor `G : D ⥤ A` which commutes with shifts.
Given `F : SingleFunctors C E A`, and a family of functors
`Φ a : C ⥤ D` with isomorphisms `Φ a ⋙ G ≅ F.functor a` for all `a : A`,
we lift `F` in `SingleFunctor C D A`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftIso.Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b

@[expose] public section

namespace CategoryTheory

open CategoryTheory.Functor

variable {C D E : Type*} [Category C] [Category D] [Category E]
  {A : Type*} [AddMonoid A] [HasShift D A] [HasShift E A]
  (F : SingleFunctors C E A) (G : D ⥤ E) [G.CommShift A]
  [G.Full] [G.Faithful] (Φ : A → C ⥤ D) (hΦ : ∀ a, Φ a ⋙ G ≅ F.functor a)

namespace SingleFunctors

namespace lift

variable {F G Φ}

/-- Auxiliary definition for `SingleFunctors.lift`. -/
@[irreducible]
noncomputable def shiftIso (n a a' : A) (h : n + a = a') :
    Φ a' ⋙ shiftFunctor D n ≅ Φ a :=
  ((FullyFaithful.ofFullyFaithful G).whiskeringRight _).preimageIso
    (associator _ _ _ ≪≫
      isoWhiskerLeft _ (G.commShiftIso n) ≪≫ (Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight (hΦ a') _ ≪≫ F.shiftIso n a a' h ≪≫ (hΦ a).symm)

set_option backward.defeqAttrib.useBackward true in
private lemma map_shiftIso_hom_app (n a a' : A) (h : n + a = a') (X : C) :
    dsimp% G.map ((lift.shiftIso hΦ n a a' h).hom.app X) =
      (G.commShiftIso n).hom.app _ ≫ (shiftFunctor E n).map ((hΦ a').hom.app X) ≫
        (F.shiftIso n a a' h).hom.app X ≫ (hΦ a).inv.app X := by
  simp [shiftIso]

end lift

set_option backward.defeqAttrib.useBackward true in
/-- Let `C`, `D` and `E` be categories. Let `A` be an additive monoid.
Assume that `D` and `E` have shifts by `A` and that we have
a fully faithful functor `G : D ⥤ A` which commutes with shifts.
Given `F : SingleFunctors C E A`, and a family of functors
`Φ a : C ⥤ D` with isomorphisms `Φ a ⋙ G ≅ F.functor a` for all `a : A`,
this is a term in `SingleFunctors C D A` which is given by the functors `Φ a`
for all `a`. -/
@[simps functor]
noncomputable def lift : SingleFunctors C D A where
  functor := Φ
  shiftIso := lift.shiftIso hΦ
  shiftIso_zero a := by
    ext X
    apply G.map_injective
    simp [lift.map_shiftIso_hom_app, Functor.commShiftIso_zero]
  shiftIso_add n m a a' a'' ha' ha'' := by
    ext X
    apply G.map_injective
    dsimp
    simp only [lift.map_shiftIso_hom_app, map_comp, commShiftIso_hom_naturality_assoc]
    rw [F.shiftIso_add n m a a' a'' ha' ha'']
    simp [commShiftIso_add, ← Functor.map_comp_assoc, -Functor.map_comp]

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
lemma map_lift_shiftIso_hom_app (n a a' : A) (h : n + a = a') (X : C) :
    dsimp% G.map (((lift F G Φ hΦ).shiftIso n a a' h).hom.app X) =
      (G.commShiftIso n).hom.app _ ≫ (shiftFunctor E n).map ((hΦ a').hom.app X) ≫
        (F.shiftIso n a a' h).hom.app X ≫ (hΦ a).inv.app X :=
  lift.map_shiftIso_hom_app ..

set_option backward.defeqAttrib.useBackward true in
/-- After postcomposition with the fully faithful functor `G`,
`lift F G Φ hΦ` becomes isomorphic to `F`. -/
@[simps!]
noncomputable def liftPostcompIso : (lift F G Φ hΦ).postcomp G ≅ F :=
  isoMk (hΦ) (fun n a a' ha' ↦ by
    ext X
    have := (hΦ a).inv_hom_id_app X
    dsimp at this
    simp [map_lift_shiftIso_hom_app, this])

set_option backward.defeqAttrib.useBackward true in
instance [Preadditive C] [Preadditive D] [Preadditive E] [G.Additive] (a : A)
    [(F.functor a).Additive] : ((lift F G Φ hΦ).functor a).Additive := by
  have : ((lift F G Φ hΦ).functor a ⋙ G).Additive := by
    dsimp
    rwa [Functor.additive_iff_of_iso (hΦ a)]
  exact Functor.additive_of_comp_faithful _ G

end SingleFunctors

end CategoryTheory
```
