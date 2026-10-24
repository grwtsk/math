# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variant2da45ea8e1d47610fa8ab598fbc6f425da20b3e3049b33c9975f902c62858325

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5df6926ce8bddbb69a52b1c356d8e0c0d0da87d5` · SHA-256 `d9c636d2fab8b32393c0e1174300aca9c6722f78dc1fee2e1e0e23df39639032`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpEquiv.Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OpEquiv.Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Join/Opposites.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
module

public import Mathlib.CategoryTheory.Join.Basic
public import Mathlib.CategoryTheory.Opposites

/-!
# Opposites of joins of categories

This file constructs the canonical equivalence of categories `(C ⋆ D)ᵒᵖ ≌ Dᵒᵖ ⋆ Cᵒᵖ`.
This equivalence is characterized in both directions.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpEquiv.Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83

@[expose] public section

namespace CategoryTheory.Join
open Opposite CategoryTheory.Functor

universe v₁ v₂ u₁ u₂

variable (C : Type u₁) (D : Type u₂) [Category.{v₁} C] [Category.{v₂} D]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The equivalence `(C ⋆ D)ᵒᵖ ≌ Dᵒᵖ ⋆ Cᵒᵖ` induced by `Join.opEquivFunctor` and
`Join.opEquivInverse`. -/
def opEquiv : (C ⋆ D)ᵒᵖ ≌ Dᵒᵖ ⋆ Cᵒᵖ where
  functor := Functor.leftOp <|
    Join.mkFunctor (inclRight _ _).rightOp (inclLeft _ _).rightOp { app _ := (edge _ _).op }
  inverse := Join.mkFunctor (inclRight _ _).op (inclLeft _ _).op { app _ := (edge _ _).op }
  unitIso := NatIso.ofComponents
    (fun
      | op (left _) => Iso.refl _
      | op (right _) => Iso.refl _)
    (@fun
      | op (left _), op (left _), _ => by cat_disch
      | op (right _), op (left _), _ => by cat_disch
      | op (right _), op (right _), _ => by cat_disch)
  counitIso := NatIso.ofComponents
    (fun
      | left _ => Iso.refl _
      | right _ => Iso.refl _)
  functor_unitIso_comp
    | op (left _) => by cat_disch
    | op (right _) => by cat_disch

variable {C} in
@[simp]
lemma opEquiv_functor_obj_op_left (c : C) :
    (opEquiv C D).functor.obj (op <| left c) = right (op c) :=
  rfl

variable {D} in
@[simp]
lemma opEquiv_functor_obj_op_right (d : D) :
    (opEquiv C D).functor.obj (op <| right d) = left (op d) :=
  rfl

variable {C} in
@[simp]
lemma opEquiv_functor_map_op_inclLeft {c c' : C} (f : c ⟶ c') :
    (opEquiv C D).functor.map (op <| (inclLeft C D).map f) = (inclRight _ _).map (op f) :=
  rfl

variable {D} in
@[simp]
lemma opEquiv_functor_map_op_inclRight {d d' : D} (f : d ⟶ d') :
    (opEquiv C D).functor.map (op <| (inclRight C D).map f) = (inclLeft _ _).map (op f) :=
  rfl

variable {C D} in
lemma opEquiv_functor_map_op_edge (c : C) (d : D) :
    (opEquiv C D).functor.map (op <| edge c d) = edge (op d) (op c) :=
  rfl

/-- Characterize (up to a rightOp) the action of the left inclusion on `Join.opEquivFunctor`. -/
@[simps!]
def InclLeftCompRightOpOpEquivFunctor :
    inclLeft C D ⋙ (opEquiv C D).functor.rightOp ≅ (inclRight _ _).rightOp :=
  isoWhiskerLeft _ (leftOpRightOpIso _) ≪≫ mkFunctorLeft _ _ _

/-- Characterize (up to a rightOp) the action of the right inclusion on `Join.opEquivFunctor`. -/
@[simps!]
def InclRightCompRightOpOpEquivFunctor :
    inclRight C D ⋙ (opEquiv C D).functor.rightOp ≅ (inclLeft _ _).rightOp :=
  isoWhiskerLeft _ (leftOpRightOpIso _) ≪≫ mkFunctorRight _ _ _

variable {D} in
@[simp]
lemma opEquiv_inverse_obj_left_op (d : D) :
    (opEquiv C D).inverse.obj (left <| op d) = op (right d) :=
  rfl

variable {C} in
@[simp]
lemma opEquiv_inverse_obj_right_op (c : C) :
    (opEquiv C D).inverse.obj (right <| op c) = op (left c) :=
  rfl

variable {D} in
@[simp]
lemma opEquiv_inverse_map_inclLeft_op {d d' : D} (f : d ⟶ d') :
    (opEquiv C D).inverse.map ((inclLeft Dᵒᵖ Cᵒᵖ).map f.op) = op ((inclRight _ _).map f) :=
  rfl

variable {D} in
@[simp]
lemma opEquiv_inverse_map_inclRight_op {c c' : C} (f : c ⟶ c') :
    (opEquiv C D).inverse.map ((inclRight Dᵒᵖ Cᵒᵖ).map f.op) = op ((inclLeft _ _).map f) :=
  rfl

variable {C D} in
@[simp]
lemma opEquiv_inverse_map_edge_op (c : C) (d : D) :
    (opEquiv C D).inverse.map (edge (op d) (op c)) = op (edge c d) :=
  rfl

/-- Characterize `Join.opEquivInverse` with respect to the left inclusion -/
def inclLeftCompOpEquivInverse :
    Join.inclLeft Dᵒᵖ Cᵒᵖ ⋙ (opEquiv C D).inverse ≅ (inclRight _ _).op :=
  Join.mkFunctorLeft _ _ _

/-- Characterize `Join.opEquivInverse` with respect to the right inclusion -/
def inclRightCompOpEquivInverse :
    Join.inclRight Dᵒᵖ Cᵒᵖ ⋙ (opEquiv C D).inverse ≅ (inclLeft _ _).op :=
  Join.mkFunctorRight _ _ _

variable {D} in
@[simp]
lemma inclLeftCompOpEquivInverse_hom_app_op (d : D) :
    (inclLeftCompOpEquivInverse C D).hom.app (op d) = 𝟙 (op <| right d) :=
  rfl

variable {C} in
@[simp]
lemma inclRightCompOpEquivInverse_hom_app_op (c : C) :
    (inclRightCompOpEquivInverse C D).hom.app (op c) = 𝟙 (op <| left c) :=
  rfl

variable {D} in
@[simp]
lemma inclLeftCompOpEquivInverse_inv_app_op (d : D) :
    (inclLeftCompOpEquivInverse C D).inv.app (op d) = 𝟙 (op <| right d) :=
  rfl

variable {C} in
@[simp]
lemma inclRightCompOpEquivInverse_inv_app_op (c : C) :
    (inclRightCompOpEquivInverse C D).inv.app (op c) = 𝟙 (op <| left c) :=
  rfl

end CategoryTheory.Join
```
