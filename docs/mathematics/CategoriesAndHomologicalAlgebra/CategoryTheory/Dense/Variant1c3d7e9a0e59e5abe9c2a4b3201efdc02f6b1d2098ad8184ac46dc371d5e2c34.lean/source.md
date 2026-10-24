# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Dense.Variant1c3d7e9a0e59e5abe9c2a4b3201efdc02f6b1d2098ad8184ac46dc371d5e2c34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `739da0f7b4d9b6d74fb7332f06bf4aa1843f6c27` · SHA-256 `11246e09d2671b2ecdee0a0161e89066f0cf78bb92096eea96f8cf862ef2fd09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalFilteredGeneratorIsCardinalPresentable.Variant06ccec868daeafe71ddfa0f24cf7694784c8394b58564e34522e9a9284b28479","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06ccec868daeafe71ddfa0f24cf7694784c8394b58564e34522e9a9284b28479","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCardinalFilteredGeneratorIsCardinalPresentable.Variant06ccec868daeafe71ddfa0f24cf7694784c8394b58564e34522e9a9284b28479","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"06ccec868daeafe71ddfa0f24cf7694784c8394b58564e34522e9a9284b28479","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/Dense.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Filtered.Final
public import Mathlib.CategoryTheory.Functor.KanExtension.Dense
public import Mathlib.CategoryTheory.Presentable.LocallyPresentable
public import Mathlib.CategoryTheory.Presentable.Finite

/-!
# `κ`-presentable objects form a dense subcategory

In a `κ`-accessible category `C`, the inclusion of the full subcategory
of `κ`-presentable objects is a dense functor. This expresses canonically
any object `X : C` as a colimit of `κ`-presentable objects, and we show
that this is a `κ`-filtered colimit.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalFilteredGeneratorIsCardinalPresentable.Variant06ccec868daeafe71ddfa0f24cf7694784c8394b58564e34522e9a9284b28479

public section

universe w v' v u' u

namespace CategoryTheory

open Limits Opposite

variable {C : Type u} [Category.{v} C] {κ : Cardinal.{w}} [Fact κ.IsRegular]

variable (C κ) in
lemma isCardinalFilteredGenerator_isCardinalPresentable
    [IsCardinalAccessibleCategory C κ] :
    (isCardinalPresentable C κ).IsCardinalFilteredGenerator κ := by
  obtain ⟨P, _, hP⟩ := HasCardinalFilteredGenerator.exists_generator C κ
  refine hP.of_le_isoClosure ?_ le_rfl
  rw [ObjectProperty.isoClosure_eq_self]
  exact hP.le_isCardinalPresentable

namespace IsCardinalAccessibleCategory

instance final_toCostructuredArrow
    {J : Type u'} [Category.{v'} J] [EssentiallySmall.{w} J]
    [IsCardinalFiltered J κ] {X : C}
    (p : (isCardinalPresentable C κ).ColimitOfShape J X) :
    p.toCostructuredArrow.Final := by
  have := isFiltered_of_isCardinalFiltered J κ
  rw [Functor.final_iff_of_isFiltered]
  refine ⟨fun f ↦ ?_, fun {f j} g₁ g₂ ↦ ?_⟩
  · obtain ⟨j, g, hg⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ p.isColimit f.hom
    exact ⟨j, ⟨CostructuredArrow.homMk (ObjectProperty.homMk g)⟩⟩
  · obtain ⟨k, a, h⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ p.isColimit
      g₁.left.hom g₂.left.hom ((CostructuredArrow.w g₁).trans (CostructuredArrow.w g₂).symm)
    exact ⟨k, a, by cat_disch⟩

set_option backward.defeqAttrib.useBackward true in
instance [IsCardinalAccessibleCategory C κ] :
    (isCardinalPresentable C κ).ι.IsDense where
  isDenseAt X := by
    obtain ⟨J, _, _, ⟨p⟩⟩ :=
      (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape X
    exact ⟨(Functor.Final.isColimitWhiskerEquiv (F := p.toCostructuredArrow) _).1
      (IsColimit.ofIsoColimit p.isColimit (Cocone.ext (Iso.refl _)))⟩

instance [IsCardinalAccessibleCategory C κ] (X : C) :
    IsCardinalFiltered (CostructuredArrow (isCardinalPresentable C κ).ι X) κ := by
  obtain ⟨J, _, _, ⟨p⟩⟩ :=
    (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape X
  exact IsCardinalFiltered.of_final p.toCostructuredArrow κ

end IsCardinalAccessibleCategory

namespace IsFinitelyAccessibleCategory

instance [IsFinitelyAccessibleCategory.{w} C] (X : C) :
    IsFiltered (CostructuredArrow (ObjectProperty.isFinitelyPresentable.{w} C).ι X) := by
  rw [← CategoryTheory.isCardinalFiltered_aleph0_iff.{w},
    ObjectProperty.isFinitelyPresentable_eq_isCardinalPresentable]
  infer_instance

instance [IsFinitelyAccessibleCategory.{w} C] :
    (ObjectProperty.isFinitelyPresentable.{w} C).ι.IsDense := by
  rw [ObjectProperty.isFinitelyPresentable_eq_isCardinalPresentable]
  infer_instance

instance [IsFinitelyAccessibleCategory.{w} C] :
    ObjectProperty.EssentiallySmall.{w} (ObjectProperty.isFinitelyPresentable.{w} C) := by
  rw [ObjectProperty.isFinitelyPresentable_eq_isCardinalPresentable]
  infer_instance

end IsFinitelyAccessibleCategory

end CategoryTheory
```
