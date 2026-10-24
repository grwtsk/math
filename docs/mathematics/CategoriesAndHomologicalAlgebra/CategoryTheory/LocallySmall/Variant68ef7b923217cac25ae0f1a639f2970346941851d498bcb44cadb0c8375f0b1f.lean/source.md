# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Variant68ef7b923217cac25ae0f1a639f2970346941851d498bcb44cadb0c8375f0b1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b56d9d4f919e2add8d3c091ebe29f7ea2f7f5cd` · SHA-256 `efe6892be0da6077ec90230cc2b0066066c027bf4d027b582b7cf4ca10ead0d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLocalizationOfLocallySmall.Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLocalizationOfLocallySmall.Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/LocallySmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Localization.HasLocalization
import Mathlib.CategoryTheory.EssentiallySmall

/-!
# Locally small localizations

In this file, given `W : MorphismProperty C` and a universe `w`, we show
that there exists a term in `HasLocalization.{w} W` if and only if
there exists (or for all) localization functors `L : C ⥤ D` for `W`,
the category `D` is locally `w`-small.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLocalizationOfLocallySmall.Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e

universe w v₁ v₂ u₁ u₂

namespace CategoryTheory.MorphismProperty

variable {C : Type u₁} [Category.{v₁} C] (W : MorphismProperty C)

/-- If `L : C ⥤ D` is a localization functor for a class of morphisms
`W : MorphismProperty C`, and `D` is locally `w`-small, we may obtain
a `HasLocalization.{w} W` instance by shrinking the morphisms in `D`.
(This version assumes that the types of objects of the categories
`C` and `D` are in the same universe.) -/
noncomputable def hasLocalizationOfLocallySmall
    {D : Type u₁} [Category.{v₂} D] [LocallySmall.{w} D]
    (L : C ⥤ D) [L.IsLocalization W] :
    HasLocalization.{w} W where
  D := ShrinkHoms D
  L := L ⋙ (ShrinkHoms.equivalence D).functor

/-- If `L : C ⥤ D` is a localization functor for a class of morphisms
`W : MorphismProperty C`, and `D` is locally `w`-small, we may obtain
a `HasLocalization.{w} W` instance. This should be used only in the
unlikely situation where the types of objects of `C` and `D` are in
different universes. Otherwise, use `hasLocalizationOfLocallySmall`. -/
noncomputable irreducible_def hasLocalizationOfLocallySmall'
    {D : Type u₂} [Category.{v₂} D] [LocallySmall.{w} D]
    (L : C ⥤ D) [L.IsLocalization W] :
    HasLocalization.{w} W := by
  have : LocallySmall.{w} (InducedCategory _ L.obj) :=
    ⟨fun X Y ↦ inferInstanceAs (Small.{w} (L.obj X ⟶ L.obj Y))⟩
  let L' : C ⥤ (InducedCategory _ L.obj) :=
    { obj X := X
      map f := L.map f }
  have := Localization.essSurj L W
  have : (inducedFunctor L.obj).EssSurj := ⟨fun Y ↦ ⟨_, ⟨L.objObjPreimageIso Y⟩⟩⟩
  have : (inducedFunctor L.obj).IsEquivalence := { }
  let e := (inducedFunctor L.obj).asEquivalence
  let e' : (L' ⋙ e.functor) ⋙ e.inverse ≅ L' :=
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft L' e.unitIso.symm ≪≫ L'.rightUnitor
  have : L'.IsLocalization W :=
    Functor.IsLocalization.of_iso W (L₁ := L ⋙ e.inverse) e'
  exact hasLocalizationOfLocallySmall.{w} W L'

/-- If a class of morphisms `W : MorphismProperty C` satisfies `HasLocalization.{w} W`,
then any localized category for `W` (i.e. any target of a localization functor
`L : C ⥤ D` for `W`) is locally `w`-small. -/
lemma locallySmall_of_hasLocalization {D : Type u₂} [Category.{v₂} D]
    (L : C ⥤ D) [L.IsLocalization W] [HasLocalization.{w} W] :
    LocallySmall.{w} D where
  hom_small _ _ := small_of_injective (fun _ _ h ↦
    (Localization.uniq L W.Q' W).functor.map_injective h)

end CategoryTheory.MorphismProperty
```
