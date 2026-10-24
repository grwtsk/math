# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DenseAt.Variant7e84ffc6ecf47039678035c9b605e911357f32eb8183ade206a673158ac601e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fabf72512d6c210e468fcca1d185b2709c9390f5` · SHA-256 `4db7019ec973b6506768d9941793f4d8aefa2552d5867f9e3b6320b2885a68f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DenseAt.Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DenseAt.Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Functor/KanExtension/DenseAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Functor.KanExtension.Pointwise
public import Mathlib.CategoryTheory.Limits.Final

/-!
# Canonical colimits, or functors that are dense at an object

Given a functor `F : C ⥤ D` and `Y : D`, we say that `F` is dense at `Y` (`F.DenseAt Y`),
if `Y` identifies to the colimit of all `F.obj X` for `X : C`
and `f : F.obj X ⟶ Y`, i.e. `Y` identifies to the colimit of
the obvious functor `CostructuredArrow F Y ⥤ D`. In some references,
it is also said that `Y` is a canonical colimit relatively to `F`.
While `F.DenseAt Y` contains data, we also introduce the
corresponding property `isDenseAt F` of objects of `D`.

## TODO

* formalize dense subcategories
* show the presheaves of types are canonical colimits relatively
  to the Yoneda embedding

## References
* https://ncatlab.org/nlab/show/dense+functor

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DenseAt.Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e

@[expose] public section

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Limits

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
  (F : C ⥤ D)

namespace Functor

/-- A functor `F : C ⥤ D` is dense at `Y : D` if the obvious natural transformation
`F ⟶ F ⋙ 𝟭 D` makes `𝟭 D` a pointwise left Kan extension of `F` along itself at `Y`,
i.e. `Y` identifies to the colimit of the obvious functor `CostructuredArrow F Y ⥤ D`. -/
abbrev DenseAt (Y : D) : Type max u₁ u₂ v₂ :=
  (Functor.LeftExtension.mk (𝟭 D) F.rightUnitor.inv).IsPointwiseLeftKanExtensionAt Y

/-- `F` is dense at `Y` if `Y` identifies to the colimit of the obvious functor
`CostructuredArrow F Y ⥤ D`. -/
def denseAtEquiv (Y : D) :
    F.DenseAt Y ≃ IsColimit ((LeftExtension.mk (𝟭 D) F.rightUnitor.inv).coconeAt Y) :=
  .refl _

variable {F} {Y : D} (hY : F.DenseAt Y)

/-- If `F : C ⥤ D` is dense at `Y : D`, then it is also at `Y'`
if `Y` and `Y'` are isomorphic. -/
def DenseAt.ofIso {Y' : D} (e : Y ≅ Y') : F.DenseAt Y' :=
  LeftExtension.isPointwiseLeftKanExtensionAtOfIso' _ hY e

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ D` is dense at `Y : D`, and `G` is a functor that is isomorphic to `F`,
then `G` is also dense at `Y`. -/
def DenseAt.ofNatIso {G : C ⥤ D} (e : F ≅ G) : G.DenseAt Y :=
  (IsColimit.equivOfNatIsoOfIso
      ((Functor.associator _ _ _).symm ≪≫ Functor.isoWhiskerLeft _ e) _ _
      (by exact Cocone.ext (Iso.refl _)))
    (hY.whiskerEquivalence (CostructuredArrow.mapNatIso e.symm))

/-- If the canonical functor `CostructuredArrow (G ≫ F) Y ⥤ CostructuredArrow F Y` is final, then
`G ⋙ F` is dense at `Y` if and only if `F` is dense at `Y`. -/
noncomputable def DenseAt.precompEquivOfFinal
    {C' : Type*} [Category* C'] (G : C' ⥤ C) [(CostructuredArrow.pre G F Y).Final] :
    (G ⋙ F).DenseAt Y ≃ F.DenseAt Y :=
  Functor.Final.isColimitWhiskerEquiv (CostructuredArrow.pre G F Y)
    ((LeftExtension.mk (𝟭 D) F.rightUnitor.inv).coconeAt Y)

/-- If `F : C ⥤ D` is dense at `Y : D`, then so is `G ⋙ F` if
the canonical functor `CostructuredArrow (G ≫ F) Y ⥤ CostructuredArrow F Y` is final.
This holds in particular if `G` is an equivalence. -/
noncomputable def DenseAt.precompOfFinal
    {C' : Type*} [Category* C'] (G : C' ⥤ C) [(CostructuredArrow.pre G F Y).Final] :
    (G ⋙ F).DenseAt Y :=
  (DenseAt.precompEquivOfFinal G).symm hY

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ D` is dense at `Y : D` and `G : D ⥤ D'` is an equivalence,
then `F ⋙ G` is dense at `G.obj Y`. -/
noncomputable def DenseAt.postcompEquivalence
    {D' : Type*} [Category* D'] (G : D ⥤ D') [G.IsEquivalence] :
    (F ⋙ G).DenseAt (G.obj Y) :=
  IsColimit.ofWhiskerEquivalence (CostructuredArrow.post F G Y).asEquivalence
    (IsColimit.ofIsoColimit ((isColimitOfPreserves G hY)) (Cocone.ext (Iso.refl _)))

lemma DenseAt.hasPointwiseLeftKanExtensionAt (hf : F.DenseAt Y) :
    F.HasPointwiseLeftKanExtensionAt F Y :=
  ⟨_, hf⟩

variable (F) in
/-- Given a functor `F : C ⥤ D`, this is the property of objects `Y : D` such
that `F` is dense at `Y`. -/
def isDenseAt : ObjectProperty D :=
  fun Y ↦ Nonempty (F.DenseAt Y)

lemma isDenseAt_eq_isPointwiseLeftKanExtensionAt :
    F.isDenseAt =
      (Functor.LeftExtension.mk (𝟭 D) F.rightUnitor.inv).isPointwiseLeftKanExtensionAt :=
  rfl

lemma isDenseAt_iff {X : D} :
    F.isDenseAt X ↔ Nonempty (IsColimit <| (LeftExtension.mk (𝟭 D) F.rightUnitor.inv).coconeAt X) :=
  .rfl

instance : F.isDenseAt.IsClosedUnderIsomorphisms := by
  rw [isDenseAt_eq_isPointwiseLeftKanExtensionAt]
  infer_instance

lemma congr_isDenseAt {G : C ⥤ D} (e : F ≅ G) :
    F.isDenseAt = G.isDenseAt := by
  ext X
  exact ⟨fun ⟨h⟩ ↦ ⟨h.ofNatIso e⟩, fun ⟨h⟩ ↦ ⟨h.ofNatIso e.symm⟩⟩

lemma IsDenseAt.iff_of_final {C' : Type*} [Category* C'] (G : C' ⥤ C)
    [(CostructuredArrow.pre G F Y).Final] :
    (G ⋙ F).isDenseAt Y ↔ F.isDenseAt Y :=
  (DenseAt.precompEquivOfFinal G).nonempty_congr

lemma IsDenseAt.of_final {C' : Type*} [Category* C'] (G : C' ⥤ C)
    [(CostructuredArrow.pre G F Y).Final] (hY : F.isDenseAt Y) :
    (G ⋙ F).isDenseAt Y :=
  (iff_of_final G).mpr hY

end Functor

end CategoryTheory
```
