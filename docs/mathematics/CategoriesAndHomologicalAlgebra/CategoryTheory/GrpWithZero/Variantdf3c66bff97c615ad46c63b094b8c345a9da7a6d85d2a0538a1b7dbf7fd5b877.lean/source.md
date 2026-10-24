# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpWithZero.Variantdf3c66bff97c615ad46c63b094b8c345a9da7a6d85d2a0538a1b7dbf7fd5b877

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de61b84bed4618e050eecb20bf93c955863e53f1` · SHA-256 `e67d411d3f6a2e03fa2edbf2c76ac39573eace88610442773ced5c5364120b29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpWithZero.Variant77d29bc462aebe68469519d07ae5e172601e63b8750ecbfbf7b158d3734ab747","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77d29bc462aebe68469519d07ae5e172601e63b8750ecbfbf7b158d3734ab747","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrpWithZero.Variant77d29bc462aebe68469519d07ae5e172601e63b8750ecbfbf7b158d3734ab747","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"77d29bc462aebe68469519d07ae5e172601e63b8750ecbfbf7b158d3734ab747","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/GrpWithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Category.MonCat.Basic
public import Mathlib.Algebra.GroupWithZero.WithZero
public import Mathlib.CategoryTheory.Category.Bipointed

/-!
# The category of groups with zero

This file defines `GrpWithZero`, the category of groups with zero.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpWithZero.Variant77d29bc462aebe68469519d07ae5e172601e63b8750ecbfbf7b158d3734ab747

@[expose] public section

assert_not_exists Ring

universe u

open CategoryTheory

/-- The category of groups with zero. -/
structure GrpWithZero where
  /-- Construct a bundled `GrpWithZero` from a `GroupWithZero`. -/
  of ::
  /-- The underlying group with zero. -/
  carrier : Type*
  [str : GroupWithZero carrier]

attribute [instance] GrpWithZero.str

namespace GrpWithZero

instance : CoeSort GrpWithZero Type* :=
  ⟨carrier⟩

instance : Inhabited GrpWithZero :=
  ⟨of (WithZero PUnit)⟩

instance : LargeCategory.{u} GrpWithZero where
  Hom X Y := MonoidWithZeroHom X Y
  id X := MonoidWithZeroHom.id X
  comp f g := g.comp f

instance groupWithZeroConcreteCategory : ConcreteCategory GrpWithZero (MonoidWithZeroHom · ·) where
  hom f := f
  ofHom f := f

/-- Typecheck a `MonoidWithZeroHom` as a morphism in `GrpWithZero`. -/
abbrev ofHom {X Y : Type u} [GroupWithZero X] [GroupWithZero Y]
    (f : MonoidWithZeroHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom f

@[simp]
lemma hom_id {X : GrpWithZero} : ConcreteCategory.hom (𝟙 X : X ⟶ X) = MonoidWithZeroHom.id X := rfl

@[simp]
lemma hom_comp {X Y Z : GrpWithZero} {f : X ⟶ Y} {g : Y ⟶ Z} :
    ConcreteCategory.hom (f ≫ g) = g.comp f := rfl

lemma coe_id {X : GrpWithZero} : (𝟙 X : X → X) = id := rfl

lemma coe_comp {X Y Z : GrpWithZero} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp] lemma forget_map {X Y : GrpWithZero} (f : X ⟶ Y) :
    (forget GrpWithZero).map f = (f : _ → _) :=
  rfl

instance hasForgetToBipointed : HasForget₂ GrpWithZero Bipointed where
  forget₂ :=
      { obj := fun X => ⟨X, 0, 1⟩
        map := fun f => ⟨f, f.map_zero', f.map_one'⟩ }

instance hasForgetToMon : HasForget₂ GrpWithZero MonCat where
  forget₂ :=
      { obj := fun X => ↧X
        map := fun f => MonCat.ofHom f.toMonoidHom }

/-- Constructs an isomorphism of groups with zero from a group isomorphism between them. -/
@[simps]
def Iso.mk {α β : GrpWithZero.{u}} (e : α ≃* β) : α ≅ β where
  hom := ofHom (.ofClass e)
  inv := ofHom (.ofClass e.symm)
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _

end GrpWithZero

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `GrpWithZero.of X` as `↧X`. -/
@[app_delab GrpWithZero.of]
meta def GrpWithZero.delabOf : Delab := CategoryTheory.delabOf

end Notation
```
