# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyPresentable.Variant4e62d4747f13d5647b24efdc7445ed48ad029aab1e8902bdc7fac3d5e1e44559

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9117336224a9f95fdda3cf06b4bb8a6110a1112f` · SHA-256 `a1903cd55b95e4683be4b48e6686a899d1d856e4a24d088142f46523e313fd7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalLocallyPresentable.Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCardinalLocallyPresentable.Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/LocallyPresentable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.CardinalFilteredPresentation

/-!
# Locally presentable and accessible categories

In this file, we define the notion of locally presentable and accessible
categories. We first define these notions for a category `C` relative to a
fixed regular cardinal `κ` (typeclasses `IsCardinalLocallyPresentable C κ`
and `IsCardinalAccessibleCategory C κ`). The existence of such a regular
cardinal `κ` is asserted in the typeclasses `IsLocallyPresentable` and
`IsAccessibleCategory`. We show that in a locally presentable or
accessible category, any object is presentable.

## References
* [Adámek, J. and Rosický, J., *Locally presentable and accessible categories*][Adamek_Rosicky_1994]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalLocallyPresentable.Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202

public section

universe w v u

namespace CategoryTheory

open Limits Opposite

section

variable (C : Type u) [Category.{v} C] (κ : Cardinal.{w}) [Fact κ.IsRegular]

/-- Given a regular cardinal `κ`, a category `C` is `κ`-locally presentable
if it is cocomplete and admits a (small) family `G : ι → C` of `κ`-presentable
objects such that any object identifies as a `κ`-filtered colimit of these objects. -/
class IsCardinalLocallyPresentable : Prop
  extends HasCardinalFilteredGenerator C κ, HasColimitsOfSize.{w, w} C where

example (κ : Cardinal.{w}) [Fact κ.IsRegular] [IsCardinalLocallyPresentable C κ] :
    ObjectProperty.EssentiallySmall.{w} (isCardinalPresentable C κ) := inferInstance

/-- Given a regular cardinal `κ`, a category `C` is `κ`-accessible
if it has `κ`-filtered colimits and admits a (small) family `G : ι → C` of `κ`-presentable
objects such that any object identifies as a `κ`-filtered colimit of these objects. -/
class IsCardinalAccessibleCategory : Prop
  extends HasCardinalFilteredGenerator C κ, HasCardinalFilteredColimits.{w} C κ where

instance [IsCardinalLocallyPresentable C κ] : IsCardinalAccessibleCategory C κ where

example (κ : Cardinal.{w}) [Fact κ.IsRegular] [IsCardinalAccessibleCategory C κ] :
    ObjectProperty.EssentiallySmall.{w} (isCardinalPresentable C κ) := inferInstance

section Finite

open Cardinal
attribute [local instance] fact_isRegular_aleph0

/-- A category is locally finitely presentable if it is locally `ℵ₀`-presentable. -/
abbrev IsLocallyFinitelyPresentable :=
  IsCardinalLocallyPresentable.{w} C ℵ₀

/-- A category is finitely accessible if it is `ℵ₀`-accessible. -/
abbrev IsFinitelyAccessibleCategory :=
  IsCardinalAccessibleCategory.{w} C ℵ₀

end Finite

end

section

/-- A category `C` is locally presentable if it is `κ`-locally presentable
for some regular cardinal `κ`. -/
@[pp_with_univ]
class IsLocallyPresentable (C : Type u) [hC : Category.{v} C] : Prop where
  exists_cardinal (C) [hC] : ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
    IsCardinalLocallyPresentable C κ

/-- A category `C` is accessible if it is `κ`-accessible
for some regular cardinal `κ`. -/
@[pp_with_univ]
class IsAccessibleCategory (C : Type u) [hC : Category.{v} C] : Prop where
  exists_cardinal (C) [hC] : ∃ (κ : Cardinal.{w}) (_ : Fact κ.IsRegular),
    IsCardinalAccessibleCategory C κ

variable (C : Type u) [hC : Category.{v} C]

instance [IsAccessibleCategory.{w} C] : LocallySmall.{w} C := by
  obtain ⟨κ, hκ, h'⟩ := IsAccessibleCategory.exists_cardinal C
  infer_instance

instance [IsLocallyPresentable.{w} C] : IsAccessibleCategory.{w} C where
  exists_cardinal := by
    obtain ⟨κ, hκ, h'⟩ := IsLocallyPresentable.exists_cardinal C
    exact ⟨κ, hκ, inferInstance⟩

instance [IsAccessibleCategory.{w} C] (X : C) : IsPresentable.{w} X := by
  obtain ⟨κ, _, _⟩ := IsAccessibleCategory.exists_cardinal C
  obtain ⟨_, _, h⟩ := HasCardinalFilteredGenerator.exists_generator C κ
  apply h.presentable

example [IsLocallyPresentable.{w} C] (X : C) : IsPresentable.{w} X := inferInstance

end

lemma ObjectProperty.le_isCardinalPresentable
    {C : Type u} [Category.{v} C] [IsAccessibleCategory.{w} C]
    (P : ObjectProperty C) [ObjectProperty.EssentiallySmall.{w} P] :
    ∃ (κ' : Cardinal.{w}) (_ : Fact κ'.IsRegular),
      P ≤ isCardinalPresentable C κ' := by
  obtain ⟨Q, hQ, h₁, h₂⟩ := EssentiallySmall.exists_small_le.{w} P
  choose κ hκ' hκ using fun (X : Subtype Q) ↦
    Functor.IsAccessible.exists_cardinal (coyoneda.obj (op X.val))
  obtain ⟨κ', h₃, h₄⟩ := HasCardinalLT.exists_regular_cardinal_forall
    (fun i ↦ (κ i).ord.ToType)
  have : Fact κ'.IsRegular := ⟨h₃⟩
  refine ⟨κ', inferInstance, h₂.trans ((isoClosure_le_iff _ _).2 ?_)⟩
  intro X hX
  have := h₄ ⟨X, hX⟩
  simp only [hasCardinalLT_iff_cardinal_mk_lt, Cardinal.mk_toType,
    Cardinal.card_ord] at this
  exact isCardinalPresentable_monotone C this.le _ (hκ ⟨X, hX⟩)

end CategoryTheory
```
