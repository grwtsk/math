# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d7a123e67f10a8e0c6f20897fcef75742e8eaf8` · SHA-256 `90241b9b3affc35370b5a61db6c421a958dc7d628e2a6120d70749dda960ff38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompCoyonedaSectionsEquiv.Variant0b4a00462f9ed26e8adf8f7728734a82b653a61e9770146a93d382a27e704efe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b4a00462f9ed26e8adf8f7728734a82b653a61e9770146a93d382a27e704efe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CompCoyonedaSectionsEquiv.Variant0b4a00462f9ed26e8adf8f7728734a82b653a61e9770146a93d382a27e704efe","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b4a00462f9ed26e8adf8f7728734a82b653a61e9770146a93d382a27e704efe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Types/Yoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Reid Barton
-/
import Mathlib.CategoryTheory.Limits.Types.Limits

/-!
# Cones and limits

In this file, we give the natural isomorphism between cones on `F` with cone point `X` and the type
`lim Hom(X, F·)`, and similarly the natural isomorphism between cocones on `F` with cocone point `X`
and the type `lim Hom(F·, X)`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompCoyonedaSectionsEquiv.Variant0b4a00462f9ed26e8adf8f7728734a82b653a61e9770146a93d382a27e704efe

universe v u

namespace CategoryTheory.Limits

open Functor Opposite

section

variable {J C : Type*} [Category J] [Category C]

/-- Sections of `F ⋙ coyoneda.obj (op X)` identify to natural
transformations `(const J).obj X ⟶ F`. -/
@[simps]
def compCoyonedaSectionsEquiv (F : J ⥤ C) (X : C) :
    (F ⋙ coyoneda.obj (op X)).sections ≃ ((const J).obj X ⟶ F) where
  toFun s :=
    { app := fun j => s.val j
      naturality := fun j j' f => by
        dsimp
        rw [Category.id_comp]
        exact (s.property f).symm }
  invFun τ := ⟨τ.app, fun {j j'} f => by simpa using (τ.naturality f).symm⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Sections of `F.op ⋙ yoneda.obj X` identify to natural
transformations `F ⟶ (const J).obj X`. -/
@[simps]
def opCompYonedaSectionsEquiv (F : J ⥤ C) (X : C) :
    (F.op ⋙ yoneda.obj X).sections ≃ (F ⟶ (const J).obj X) where
  toFun s :=
    { app := fun j => s.val (op j)
      naturality := fun j j' f => by
        dsimp
        rw [Category.comp_id]
        exact (s.property f.op) }
  invFun τ := ⟨fun j => τ.app j.unop, fun {j j'} f => by simp [τ.naturality f.unop]⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Sections of `F ⋙ yoneda.obj X` identify to natural
transformations `(const J).obj X ⟶ F`. -/
@[simps]
def compYonedaSectionsEquiv (F : J ⥤ Cᵒᵖ) (X : C) :
    (F ⋙ yoneda.obj X).sections ≃ ((const J).obj (op X) ⟶ F) where
  toFun s :=
    { app := fun j => (s.val j).op
      naturality := fun j j' f => by
        dsimp
        rw [Category.id_comp]
        exact Quiver.Hom.unop_inj (s.property f).symm }
  invFun τ := ⟨fun j => (τ.app j).unop,
    fun {j j'} f => Quiver.Hom.op_inj (by simpa using (τ.naturality f).symm)⟩
  left_inv _ := rfl
  right_inv _ := rfl

end

variable {J : Type v} [SmallCategory J] {C : Type u} [Category.{v} C]

/-- A cone on `F` with cone point `X` is the same as an element of `lim Hom(X, F·)`. -/
@[simps!]
noncomputable def limitCompCoyonedaIsoCone (F : J ⥤ C) (X : C) :
    limit (F ⋙ coyoneda.obj (op X)) ≅ ((const J).obj X ⟶ F) :=
  ((Types.limitEquivSections _).trans (compCoyonedaSectionsEquiv F X)).toIso

/-- A cone on `F` with cone point `X` is the same as an element of `lim Hom(X, F·)`,
    naturally in `X`. -/
@[simps!]
noncomputable def coyonedaCompLimIsoCones (F : J ⥤ C) :
    coyoneda ⋙ (whiskeringLeft _ _ _).obj F ⋙ lim ≅ F.cones :=
  NatIso.ofComponents (fun X => limitCompCoyonedaIsoCone F X.unop)

variable (J) (C) in
/-- A cone on `F` with cone point `X` is the same as an element of `lim Hom(X, F·)`,
    naturally in `F` and `X`. -/
@[simps!]
noncomputable def whiskeringLimYonedaIsoCones : whiskeringLeft _ _ _ ⋙
    (whiskeringRight _ _ _).obj lim ⋙ (whiskeringLeft _ _ _).obj coyoneda ≅ cones J C :=
  NatIso.ofComponents coyonedaCompLimIsoCones

/-- A cocone on `F` with cocone point `X` is the same as an element of `lim Hom(F·, X)`. -/
@[simps!]
noncomputable def limitCompYonedaIsoCocone (F : J ⥤ C) (X : C) :
    limit (F.op ⋙ yoneda.obj X) ≅ (F ⟶ (const J).obj X) :=
  ((Types.limitEquivSections _).trans (opCompYonedaSectionsEquiv F X)).toIso

/-- A cocone on `F` with cocone point `X` is the same as an element of `lim Hom(F·, X)`,
    naturally in `X`. -/
@[simps!]
noncomputable def yonedaCompLimIsoCocones (F : J ⥤ C) :
    yoneda ⋙ (whiskeringLeft _ _ _).obj F.op ⋙ lim ≅ F.cocones :=
  NatIso.ofComponents (limitCompYonedaIsoCocone F)

variable (J) (C) in
/-- A cocone on `F` with cocone point `X` is the same as an element of `lim Hom(F·, X)`,
    naturally in `F` and `X`. -/
@[simps!]
noncomputable def opHomCompWhiskeringLimYonedaIsoCocones : opHom _ _ ⋙ whiskeringLeft _ _ _ ⋙
      (whiskeringRight _ _ _).obj lim ⋙ (whiskeringLeft _ _ _).obj yoneda ≅ cocones J C :=
  NatIso.ofComponents (fun F => yonedaCompLimIsoCocones F.unop)

end CategoryTheory.Limits
```
