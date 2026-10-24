# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant813cc451cddfac98d37686c79bddd226c9244fd7ddb57dc64280d2231a1311aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb4f49df5e8b25f90c2b4f80f91ab64ec3de4805` · SHA-256 `99539a88edf8810f501f8785827262f70c08a45f9143d843e63cf316d7da3641`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHomEquiv.Variant43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorHomEquiv.Variant43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Closed/FunctorToTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Functor.FunctorHom
public import Mathlib.CategoryTheory.Monoidal.Closed.Basic

/-!
# Functors to Type are closed.

Show that `C ⥤ Type max w v u` is monoidal closed for `C` a category in `Type u` with morphisms in
`Type v`, and `w` an arbitrary universe.

## TODO
It should be shown that `C ⥤ Type max w v u` is Cartesian closed.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHomEquiv.Variant43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db

@[expose] public section


universe w v' v u u'

open CategoryTheory Functor MonoidalCategory

namespace CategoryTheory.FunctorToTypes

variable {C : Type u} [Category.{v} C]

variable (F : C ⥤ Type (max w v u))

/-- When `F G H : C ⥤ Type max w v u`, we have `(G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H)`. -/
@[simps! apply_app symm_apply_app]
def functorHomEquiv (G H : C ⥤ Type (max w v u)) : (G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H) :=
  (Functor.functorHomEquiv F H G).trans (homObjEquiv F H G)

set_option backward.defeqAttrib.useBackward true in
/-- A right adjoint of `tensorLeft F`. -/
@[simps! obj_obj obj_map map_app]
def rightAdj : (C ⥤ Type (max w v u)) ⥤ C ⥤ Type (max w v u) where
  obj G := F.functorHom G
  map f := { app X := ↾fun a ↦ {
    app d b := a.app d b ≫ f.app d
    naturality g h := by
      have := a.naturality g h
      change (F.map g ≫ a.app _ (h ≫ g)) ≫ _ = _
      aesop  }}

@[deprecated "Use `(rightAdj F).map instead" (since := "2026-04-08")] alias rightAdj_map := rightAdj

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
attribute [local simp] types_tensorObj_def in
/-- The adjunction `tensorLeft F ⊣ rightAdj F`. -/
def adj : tensorLeft F ⊣ rightAdj F where
  unit := {
    app := fun G ↦ (functorHomEquiv F G _).2 (𝟙 _)
    naturality := fun G H f ↦ by
      ext
      dsimp
      ext
      apply Prod.ext
      · rfl
      · simp }
  counit := { app := fun G ↦ functorHomEquiv F _ G (𝟙 _) }

instance closed : Closed F where
  rightAdj := rightAdj F
  adj := adj F

instance monoidalClosed : MonoidalClosed (C ⥤ Type (max w v u)) where

end CategoryTheory.FunctorToTypes
```
