# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presentation.Variantc1b5c6b40e5cffb88784cb2d69ee297766a14b13d80a9b69a1f38c0fead044a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9190a2015787a8407d1daabc79836b64e18f409` · SHA-256 `f7f0d2875d65e37d0058c35717136119a44922f3559eac17aa1d24643b1d568c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitPresentation.Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ColimitPresentation.Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Presentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.Limits.Connected
public import Mathlib.CategoryTheory.Limits.Final

/-!
# (Co)limit presentations

Let `J` and `C` be categories and `X : C`. We define type `ColimitPresentation J X` that contains
the data of objects `Dⱼ` and natural maps `sⱼ : Dⱼ ⟶ X` that make `X` the colimit of the `Dⱼ`.

(See `Mathlib/CategoryTheory/Presentable/ColimitPresentation.lean` for the construction of a
presentation of a colimit of objects that are equipped with presentations.)

## Main definitions:

- `CategoryTheory.Limits.ColimitPresentation`: A colimit presentation of `X` over `J` is a diagram
  `{Dᵢ}` in `C` and natural maps `sᵢ : Dᵢ ⟶ X` making `X` into the colimit of the `Dᵢ`.
- `CategoryTheory.Limits.LimitPresentation`: A limit presentation of `X` over `J` is a diagram
  `{Dᵢ}` in `C` and natural maps `sᵢ : X ⟶ Dᵢ` making `X` into the limit of the `Dᵢ`.

## TODOs:

- Refactor `TransfiniteCompositionOfShape` so that it extends `ColimitPresentation`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitPresentation.Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55

@[expose] public section

universe s t w v u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]

/-- A colimit presentation of `X` over `J` is a diagram `{Dᵢ}` in `C` and natural maps
`sᵢ : Dᵢ ⟶ X` making `X` into the colimit of the `Dᵢ`. -/
structure ColimitPresentation (J : Type w) [Category.{t} J] (X : C) where
  /-- The diagram `{Dᵢ}`. -/
  diag : J ⥤ C
  /-- The natural maps `sᵢ : Dᵢ ⟶ X`. -/
  ι : diag ⟶ (Functor.const J).obj X
  /-- `X` is the colimit of the `Dᵢ` via `sᵢ`. -/
  isColimit : IsColimit (Cocone.mk _ ι)

variable {J : Type w} [Category.{t} J] {X : C}

namespace ColimitPresentation

initialize_simps_projections ColimitPresentation (-isColimit)

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
lemma w (pres : ColimitPresentation J X) {i j : J} (f : i ⟶ j) :
    pres.diag.map f ≫ pres.ι.app j = pres.ι.app i := by
  simp

/-- The cocone associated to a colimit presentation. -/
abbrev cocone (pres : ColimitPresentation J X) : Cocone pres.diag :=
  Cocone.mk _ pres.ι

lemma hasColimit (pres : ColimitPresentation J X) : HasColimit pres.diag :=
  ⟨_, pres.isColimit⟩

/-- The canonical colimit presentation of any object over a point. -/
@[simps]
noncomputable
def self (X : C) : ColimitPresentation PUnit.{s + 1} X where
  diag := (Functor.const _).obj X
  ι := 𝟙 _
  isColimit := isColimitConstCocone _ _

/-- If `F : J ⥤ C` is a functor that has a colimit, then this is the obvious
colimit presentation of `colimit F`. -/
noncomputable def colimit (F : J ⥤ C) [HasColimit F] :
    ColimitPresentation J (colimit F) where
  diag := F
  ι := _
  isColimit := colimit.isColimit _

set_option backward.defeqAttrib.useBackward true in
/-- If `F` preserves colimits of shape `J`, it maps colimit presentations of `X` to
colimit presentations of `F(X)`. -/
@[simps]
noncomputable
def map (P : ColimitPresentation J X) {D : Type*} [Category* D] (F : C ⥤ D)
    [PreservesColimitsOfShape J F] : ColimitPresentation J (F.obj X) where
  diag := P.diag ⋙ F
  ι := Functor.whiskerRight P.ι F ≫ (F.constComp _ _).hom
  isColimit := (isColimitOfPreserves F P.isColimit).ofIsoColimit (Cocone.ext (.refl _) (by simp))

/-- If `P` is a colimit presentation of `X`, it is possible to define another
colimit presentation of `X` where `P.diag` is replaced by an isomorphic functor. -/
@[simps]
def changeDiag (P : ColimitPresentation J X) {F : J ⥤ C} (e : F ≅ P.diag) :
    ColimitPresentation J X where
  diag := F
  ι := e.hom ≫ P.ι
  isColimit := (IsColimit.precomposeHomEquiv e _).2 P.isColimit

/-- Map a colimit presentation under an isomorphism. -/
@[simps]
def ofIso (P : ColimitPresentation J X) {Y : C} (e : X ≅ Y) : ColimitPresentation J Y where
  diag := P.diag
  ι := P.ι ≫ (Functor.const J).map e.hom
  isColimit := P.isColimit.ofIsoColimit (Cocone.ext e fun _ ↦ rfl)

/-- Change the index category of a colimit presentation. -/
@[simps]
noncomputable
def reindex (P : ColimitPresentation J X) {J' : Type*} [Category* J'] (F : J' ⥤ J) [F.Final] :
    ColimitPresentation J' X where
  diag := F ⋙ P.diag
  ι := F.whiskerLeft P.ι
  isColimit := (Functor.Final.isColimitWhiskerEquiv F _).symm P.isColimit

end ColimitPresentation

/-- A limit presentation of `X` over `J` is a diagram `{Dᵢ}` in `C` and natural maps
`sᵢ : X ⟶ Dᵢ` making `X` into the limit of the `Dᵢ`. -/
structure LimitPresentation (J : Type w) [Category.{t} J] (X : C) where
  /-- The diagram `{Dᵢ}`. -/
  diag : J ⥤ C
  /-- The natural maps `sᵢ : X ⟶ Dᵢ`. -/
  π : (Functor.const J).obj X ⟶ diag
  /-- `X` is the limit of the `Dᵢ` via `sᵢ`. -/
  isLimit : IsLimit (Cone.mk _ π)

variable {J : Type w} [Category.{t} J] {X : C}

namespace LimitPresentation

initialize_simps_projections LimitPresentation (-isLimit)

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
lemma w (pres : LimitPresentation J X) {i j : J} (f : i ⟶ j) :
    pres.π.app i ≫ pres.diag.map f = pres.π.app j := by
  simpa using (pres.π.naturality f).symm

/-- The cone associated to a limit presentation. -/
abbrev cone (pres : LimitPresentation J X) : Cone pres.diag :=
  Cone.mk _ pres.π

lemma hasLimit (pres : LimitPresentation J X) : HasLimit pres.diag :=
  ⟨_, pres.isLimit⟩

/-- The canonical limit presentation of any object over a point. -/
@[simps]
noncomputable
def self (X : C) : LimitPresentation PUnit.{s + 1} X where
  diag := (Functor.const _).obj X
  π := 𝟙 _
  isLimit := isLimitConstCone _ _

/-- If `F : J ⥤ C` is a functor that has a limit, then this is the obvious
limit presentation of `limit F`. -/
noncomputable def limit (F : J ⥤ C) [HasLimit F] :
    LimitPresentation J (limit F) where
  diag := F
  π := _
  isLimit := limit.isLimit _

set_option backward.defeqAttrib.useBackward true in
/-- If `F` preserves limits of shape `J`, it maps limit presentations of `X` to
limit presentations of `F(X)`. -/
@[simps]
noncomputable
def map (P : LimitPresentation J X) {D : Type*} [Category* D] (F : C ⥤ D)
    [PreservesLimitsOfShape J F] : LimitPresentation J (F.obj X) where
  diag := P.diag ⋙ F
  π := (F.constComp _ _).inv ≫ Functor.whiskerRight P.π F
  isLimit := (isLimitOfPreserves F P.isLimit).ofIsoLimit (Cone.ext (.refl _) (by simp))

/-- If `P` is a limit presentation of `X`, it is possible to define another
limit presentation of `X` where `P.diag` is replaced by an isomorphic functor. -/
@[simps]
def changeDiag (P : LimitPresentation J X) {F : J ⥤ C} (e : F ≅ P.diag) :
    LimitPresentation J X where
  diag := F
  π := P.π ≫ e.inv
  isLimit := (IsLimit.postcomposeHomEquiv e.symm _).2 P.isLimit

set_option backward.defeqAttrib.useBackward true in
/-- Map a limit presentation under an isomorphism. -/
@[simps]
def ofIso (P : LimitPresentation J X) {Y : C} (e : X ≅ Y) : LimitPresentation J Y where
  diag := P.diag
  π := (Functor.const J).map e.inv ≫ P.π
  isLimit := P.isLimit.ofIsoLimit (Cone.ext e)

/-- Change the index category of a limit presentation. -/
@[simps]
noncomputable
def reindex (P : LimitPresentation J X) {J' : Type*} [Category* J'] (F : J' ⥤ J) [F.Initial] :
    LimitPresentation J' X where
  diag := F ⋙ P.diag
  π := F.whiskerLeft P.π
  isLimit := (Functor.Initial.isLimitWhiskerEquiv F _).symm P.isLimit

end LimitPresentation

end CategoryTheory.Limits
```
