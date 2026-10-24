# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bafeb84db829117f0e1d0b2f06fc37ea1a987c24` · SHA-256 `dffa42fdf4203041c95a4a0134e094cbac5a1fc83b45811c861bc480b63046ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CurriedActionMop.Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CurriedActionMop.Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Action/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
module

public import Mathlib.CategoryTheory.Monoidal.Action.Basic
public import Mathlib.CategoryTheory.Monoidal.End
public import Mathlib.CategoryTheory.Monoidal.Opposite

/-! # Actions as monoidal functors to endofunctor categories

In this file, we show that given a right action of a monoidal category `C`
on a category `D`, the curried action functor `C ⥤ D ⥤ D` is monoidal.
Conversely, given a monoidal functor `C ⥤ D ⥤ D`, we can define a right action
of `C` on `D`.

The corresponding results are also available for left actions: given a left
action of `C` on `D`, composing
`CategoryTheory.MonoidalCategory.MonoidalLeftAction.curriedAction C D` with
`CategoryTheory.MonoidalCategory.MonoidalOpposite.mopFunctor (D ⥤ D)` is
monoidal, and conversely one can define a left action of `C` on `D` from a monoidal
functor `C ⥤ (D ⥤ D)ᴹᵒᵖ`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CurriedActionMop.Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c

@[expose] public section

namespace CategoryTheory.MonoidalCategory

variable (C D : Type*)

variable [Category* C] [MonoidalCategory C] [Category* D]

attribute [local instance] endofunctorMonoidalCategory

attribute [local aesop safe apply (rule_sets := [CategoryTheory])]
  MonoidalOpposite.hom_ext

namespace MonoidalLeftAction

section

variable [MonoidalLeftAction C D]
/-- A variant of
`CategoryTheory.MonoidalCategory.MonoidalLeftAction.curriedAction`
that takes value in the monoidal opposite of `D ⥤ D`. -/
@[simps! obj_unmop_obj obj_unmop_map]
def curriedActionMop : C ⥤ (D ⥤ D)ᴹᵒᵖ :=
  (curriedAction C D) ⋙ mopFunctor _

-- This simp lemma is necessary because the simps projection generated for
-- unmop of a morphism is actually its underlying unmop field, rather than
-- the application of `Quiver.Hom.unmop`.
variable {C D} in
@[simp]
lemma curriedActionMop_map_unmop_app {c c' : C} (f : c ⟶ c') (d : D) :
    ((curriedActionMop C D).map f).unmop.app d = f ⊵ₗ d :=
  rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
open MonoidalOpposite in
/-- When `C` acts on the left on `D`, the functor
`curriedActionMop : C ⥤ (D ⥤ D)ᴹᵒᵖ` is monoidal, where `D ⥤ D` has the
composition monoidal structure. -/
@[simps!]
instance curriedActionMopMonoidal : (curriedActionMop C D).Monoidal where
  ε := .mop <| (actionUnitNatIso C D).inv
  μ _ _ := .mop <| { app _ := αₗ _ _ _ |>.inv }
  δ _ _ := .mop <| { app _ := αₗ _ _ _ |>.hom }
  η := .mop <| (actionUnitNatIso C D).hom
  associativity c₁ c₂ c₃ := by
    apply (mopEquiv (D ⥤ D)).fullyFaithfulInverse.map_injective
    ext d
    simpa [-associator_actionHom] using
      (IsIso.inv_eq_inv.mpr <| associator_actionHom c₁ c₂ c₃ d).symm =≫
        (α_ c₁ c₂ c₃).hom ⊵ₗ d
  oplax_right_unitality x := by
    apply MonoidalOpposite.hom_ext
    ext t
    simpa [-rightUnitor_actionHom] using
      (ρ_ x).inv ⊵ₗ t ≫= rightUnitor_actionHom x t
  oplax_left_unitality x := by
    apply MonoidalOpposite.hom_ext
    ext t
    simpa [-leftUnitor_actionHom] using
      (λ_ x).inv ⊵ₗ t ≫= leftUnitor_actionHom x t

end

variable {C D}

/-- A monoidal functor `F : C ⥤ (D ⥤ D)ᴹᵒᵖ` can be thought of as a left action
of `C` on `D`. -/
@[simps!, instance_reducible]
def actionOfMonoidalFunctorToEndofunctorMop (F : C ⥤ (D ⥤ D)ᴹᵒᵖ) [F.Monoidal] :
    MonoidalLeftAction C D where
  actionObj c d := (F.obj c).unmop.obj d
  actionHomLeft f d := (F.map f).unmop.app d
  actionHomRight c _ _ f := (F.obj c).unmop.map f
  actionAssocIso c c' d := Functor.Monoidal.μIso F c c' |>.unmop.app d |>.symm
  actionUnitIso d := Functor.Monoidal.εIso F |>.unmop.app d |>.symm
  actionAssocIso_hom_naturality {c₁ c₁' c₂ c₂' c₃ c₃'} f g h := by
    have e := congrArg (fun t ↦ t.unmop.app c₃) <|
      Functor.OplaxMonoidal.δ_natural F f g
    dsimp at e
    rw [endofunctorMonoidalCategory_tensorMap_app] at e
    simp [reassoc_of% e]
  whiskerRight_actionHomLeft {x y} c f d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.LaxMonoidal.μ_natural_left F f c
    dsimp at e
    simp [e, ← NatTrans.comp_app, ← unmop_comp]
  whiskerLeft_actionHomLeft c {x y} f d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.LaxMonoidal.μ_natural_right F c f
    dsimp at e
    simp [e, ← NatTrans.comp_app, ← unmop_comp]
  associator_actionHom c₁ c₂ c₃ d := by
    have e := congrArg (fun t ↦ t.unmop.app d) <|
      Functor.OplaxMonoidal.associativity F c₁ c₂ c₃
    dsimp at e
    simp only [Category.comp_id] at e
    simp [e]
  leftUnitor_actionHom c d := by
    have e := (F.map (λ_ c).hom).unmop.app d ≫=
      (congrArg (fun t ↦ t.unmop.app d) <|
        Functor.OplaxMonoidal.left_unitality F c)
    dsimp at e
    simp only [Category.comp_id, ← NatTrans.comp_app_assoc, ← unmop_comp,
      ← F.map_comp_assoc, Iso.hom_inv_id, Functor.map_id, Category.id_comp] at e
    simp [e]
  rightUnitor_actionHom c d := by
    have e := (F.map (ρ_ c).hom).unmop.app d ≫=
      (congrArg (fun t ↦ t.unmop.app d) <|
        Functor.OplaxMonoidal.right_unitality F c)
    dsimp at e
    simp only [Category.comp_id, ← NatTrans.comp_app_assoc, ← unmop_comp,
      ← F.map_comp_assoc, Iso.hom_inv_id, Functor.map_id, Category.id_comp] at e
    simp [e]

/-- If the (left) action of `C` on `D` comes from a monoidal functor
`C ⥤ (D ⥤ D)ᴹᵒᵖ`, then `curriedActionMop C D` is naturally isomorphic to that
functor. -/
@[simps!]
def curriedActionActionOfMonoidalFunctorToEndofunctorMopIso
    (F : C ⥤ (D ⥤ D)ᴹᵒᵖ) [F.Monoidal] :
    letI := actionOfMonoidalFunctorToEndofunctorMop F
    curriedActionMop C D ≅ F :=
  .refl _

end MonoidalLeftAction

namespace MonoidalRightAction

variable {C D}

set_option backward.defeqAttrib.useBackward true in
open MonoidalOpposite in
/-- When `C` acts on the right on `D`, the functor `curriedAction : C ⥤ (D ⥤ D)`
is monoidal, where `D ⥤ D` has the composition monoidal structure. -/
@[simps!]
instance curriedActionMonoidal [MonoidalRightAction C D] :
    (curriedAction C D).Monoidal where
  ε := (actionUnitNatIso C D).inv
  μ _ _ := { app _ := αᵣ _ _ _ |>.inv }
  δ _ _ := { app _ := αᵣ _ _ _ |>.hom }
  η := (actionUnitNatIso C D).hom
  associativity c₁ c₂ c₃ := by
    ext d
    simpa [-actionHom_associator] using
      (IsIso.inv_eq_inv.mpr <| actionHom_associator c₁ c₂ c₃ d).symm =≫
        d ⊴ᵣ (α_ c₁ c₂ c₃).hom
  oplax_right_unitality x := by
    ext t
    simpa [-actionHom_rightUnitor] using
      t ⊴ᵣ (ρ_ x).inv ≫= actionHom_rightUnitor x t
  oplax_left_unitality x := by
    ext t
    simpa [-actionHom_leftUnitor] using
      t ⊴ᵣ (λ_ x).inv ≫= actionHom_leftUnitor x t

/-- A monoidal functor `F : C ⥤ D ⥤ D` can be thought of as a right action
of `C` on `D`. -/
@[simps!, instance_reducible]
def actionOfMonoidalFunctorToEndofunctor (F : C ⥤ D ⥤ D) [F.Monoidal] :
    MonoidalRightAction C D where
  actionObj d c := (F.obj c).obj d
  actionHomLeft f c := (F.obj c).map f
  actionHomRight d _ _ f := (F.map f).app d
  actionAssocIso d c c' := Functor.Monoidal.μIso F c c' |>.app d |>.symm
  actionUnitIso d := Functor.Monoidal.εIso F |>.app d |>.symm
  actionAssocIso_hom_naturality {c₁ c₁' c₂ c₂' c₃ c₃'} f g h := by
    have e := congrArg (fun t ↦ t.app c₁) <|
      Functor.OplaxMonoidal.δ_natural F g h
    dsimp at e
    rw [endofunctorMonoidalCategory_tensorMap_app] at e
    simp [reassoc_of% e]

/-- If the action of `C` on `D` comes from a monoidal functor `C ⥤ (D ⥤ D)`,
then `curriedActionMop C D` is naturally isomorphic to that functor. -/
@[simps!]
def curriedActionActionOfMonoidalFunctorToEndofunctorIso
    (F : C ⥤ (D ⥤ D)) [F.Monoidal] :
    letI := actionOfMonoidalFunctorToEndofunctor F
    curriedAction C D ≅ F :=
  .refl _

end MonoidalRightAction

namespace endofunctorMonoidalCategory
/-- Functor evaluation gives a right action of `C ⥤ C`.

Note that in the literature, this is defined as a left action, but mathlib's
monoidal structure on `C ⥤ C` is the monoidal opposite of the one usually
considered in the literature. -/
@[simps! actionObj actionHomLeft actionHomRight actionAssocIso actionUnitIso]
scoped instance evaluationRightAction : MonoidalRightAction (C ⥤ C) C :=
  MonoidalRightAction.actionOfMonoidalFunctorToEndofunctor (𝟭 (C ⥤ C))

end endofunctorMonoidalCategory

end CategoryTheory.MonoidalCategory
```
