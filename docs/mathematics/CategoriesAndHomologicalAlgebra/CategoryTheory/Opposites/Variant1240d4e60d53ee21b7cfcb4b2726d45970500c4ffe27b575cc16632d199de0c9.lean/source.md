# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `123fb6525bc12bd20ff2e5dcb61c8e306d31023b` · SHA-256 `ac9740a0529d868b19fd0e2aee39073ab2dd15880cc4bfff236c463fbaae14dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unop.Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Unop.Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Adjunction/Opposites.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Thomas Read, Andrew Yang
-/
module

public import Mathlib.CategoryTheory.Adjunction.Basic
public import Mathlib.CategoryTheory.Yoneda
public import Mathlib.CategoryTheory.Opposites

/-!
# Opposite adjunctions

This file contains constructions to relate adjunctions of functors to adjunctions of their
opposites.

## Tags
adjunction, opposite, uniqueness
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unop.Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f

@[expose] public section


open CategoryTheory

universe v₁ v₂ u₁ u₂

-- morphism levels before object levels. See note [category theory universes].
variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace CategoryTheory.Adjunction

attribute [local simp] homEquiv_unit homEquiv_counit

/-- If `G` is adjoint to `F` then `F.unop` is adjoint to `G.unop`. -/
@[simps]
def unop {F : Cᵒᵖ ⥤ Dᵒᵖ} {G : Dᵒᵖ ⥤ Cᵒᵖ} (h : G ⊣ F) : F.unop ⊣ G.unop where
  unit := NatTrans.unop h.counit
  counit := NatTrans.unop h.unit
  left_triangle_components _ := Quiver.Hom.op_inj (h.right_triangle_components _)
  right_triangle_components _ := Quiver.Hom.op_inj (h.left_triangle_components _)

set_option backward.defeqAttrib.useBackward true in
/-- If `G` is adjoint to `F` then `F.op` is adjoint to `G.op`. -/
@[simps]
def op {F : C ⥤ D} {G : D ⥤ C} (h : G ⊣ F) : F.op ⊣ G.op where
  unit := NatTrans.op h.counit
  counit := NatTrans.op h.unit
  left_triangle_components _ := Quiver.Hom.unop_inj (by simp)
  right_triangle_components _ := Quiver.Hom.unop_inj (by simp)

/-- If `F` is adjoint to `G.leftOp` then `G` is adjoint to `F.leftOp`. -/
@[simps]
def leftOp {F : C ⥤ Dᵒᵖ} {G : D ⥤ Cᵒᵖ} (a : F ⊣ G.leftOp) : G ⊣ F.leftOp where
  unit := NatTrans.unop a.counit
  counit := NatTrans.op a.unit
  left_triangle_components X := congr($(a.right_triangle_components (.op X)).op)
  right_triangle_components X := congr($(a.left_triangle_components X.unop).unop)

/-- If `F.rightOp` is adjoint to `G` then `G.rightOp` is adjoint to `F`. -/
@[simps]
def rightOp {F : Cᵒᵖ ⥤ D} {G : Dᵒᵖ ⥤ C} (a : F.rightOp ⊣ G) : G.rightOp ⊣ F where
  unit := NatTrans.unop a.counit
  counit := NatTrans.op a.unit
  left_triangle_components X := congr($(a.right_triangle_components (.op X)).op)
  right_triangle_components X := congr($(a.left_triangle_components X.unop).unop)

set_option backward.defeqAttrib.useBackward true in
lemma leftOp_eq {F : C ⥤ Dᵒᵖ} {G : D ⥤ Cᵒᵖ} (a : F ⊣ G.leftOp) :
    a.leftOp = (opOpEquivalence D).symm.toAdjunction.comp a.op := by
  ext X; simp [Equivalence.unit]

set_option backward.defeqAttrib.useBackward true in
lemma rightOp_eq {F : Cᵒᵖ ⥤ D} {G : Dᵒᵖ ⥤ C} (a : F.rightOp ⊣ G) :
    a.rightOp = (opOpEquivalence D).symm.toAdjunction.comp a.op := by
  ext X; simp [Equivalence.unit]

set_option backward.defeqAttrib.useBackward true in
/-- If `F` and `F'` are both adjoint to `G`, there is a natural isomorphism
`F.op ⋙ coyoneda ≅ F'.op ⋙ coyoneda`.
We use this in combination with `fullyFaithfulCancelRight` to show left adjoints are unique.
-/
@[deprecated "No replacement" (since := "2026-04-11")]
def leftAdjointsCoyonedaEquiv {F F' : C ⥤ D} {G : D ⥤ C} (adj1 : F ⊣ G) (adj2 : F' ⊣ G) :
    F.op ⋙ coyoneda ≅ F'.op ⋙ coyoneda :=
  NatIso.ofComponents fun X =>
    NatIso.ofComponents fun Y =>
      ((adj1.homEquiv X.unop Y).trans (adj2.homEquiv X.unop Y).symm).toIso

end Adjunction

namespace Functor

instance IsLeftAdjoint.op {F : C ⥤ D} [F.IsLeftAdjoint] : F.op.IsRightAdjoint :=
  ⟨F.rightAdjoint.op, ⟨.op <| .ofIsLeftAdjoint _⟩⟩

instance IsRightAdjoint.op {F : C ⥤ D} [F.IsRightAdjoint] : F.op.IsLeftAdjoint :=
  ⟨F.leftAdjoint.op, ⟨.op <| .ofIsRightAdjoint _⟩⟩

instance IsLeftAdjoint.leftOp {F : C ⥤ Dᵒᵖ} [F.IsLeftAdjoint] : F.leftOp.IsRightAdjoint :=
  ⟨F.rightAdjoint.rightOp, ⟨.leftOp <| .ofIsLeftAdjoint _⟩⟩

-- TODO: Do we need to introduce `Adjunction.leftUnop`?
instance IsRightAdjoint.leftOp {F : C ⥤ Dᵒᵖ} [F.IsRightAdjoint] : F.leftOp.IsLeftAdjoint :=
  inferInstanceAs (F.op ⋙ (opOpEquivalence D).functor).IsLeftAdjoint

-- TODO: Do we need to introduce `Adjunction.rightUnop`?
instance IsLeftAdjoint.rightOp {F : Cᵒᵖ ⥤ D} [F.IsLeftAdjoint] : F.rightOp.IsRightAdjoint :=
  inferInstanceAs ((opOpEquivalence C).inverse ⋙ F.op).IsRightAdjoint

instance IsRightAdjoint.rightOp {F : Cᵒᵖ ⥤ D} [F.IsRightAdjoint] : F.rightOp.IsLeftAdjoint :=
  ⟨F.leftAdjoint.leftOp, ⟨.rightOp <| .ofIsRightAdjoint _⟩⟩

end Functor
end CategoryTheory
```
