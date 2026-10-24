# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CardinalPure.Variant530c8067271192241507e6e0a25e27d60ddc5c8f5ca2b2cc964e5cfbf0807b5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eb762d06d24afd498c855b42362b4918883d57a` · SHA-256 `0a8eec89603230595e2819631c0a6e2c41daa89caaf11743fecd340930bca199`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalPure.Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCardinalPure.Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/CardinalPure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.MorphismProperty.Limits
public import Mathlib.CategoryTheory.Presentable.Dense

/-!
# Pure subobjects

In this file, we define the notion of `κ`-pure morphisms (`IsCardinalPure`)
in a category `C`, where `κ` is a regular cardinal. This class contains
split monomorphisms and is stable under `κ`-filtered colimits.
When `C` is a `κ`-accessible category, we show that `κ`-pure
morphisms are monomorphisms, and that a `κ`-accessible functor
`F : C ⥤ D` preserves `κ`-pure morphisms.

## References
* [Adámek, J. and Rosický, J., *Locally presentable and accessible categories*][Adamek_Rosicky_1994]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalPure.Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a

public section

universe w

namespace CategoryTheory

open Limits

variable {C D : Type*} [Category* C] [Category* D] (F : C ⥤ D)

/-- Given a regular cardinal `κ`, we say that a morphism `f : X ⟶ Y`
is `κ`-pure if for any commutative square:
```
      t
 X' -----> Y'
 |         |
l|         |r
 v         v
 X  -----> Y
      f
```
where `X'` and `Y'` are `κ`-presentable, there exists a morphism
`ρ : Y' ⟶ X` such that `t ≫ ρ = l`. -/
class IsCardinalPure (κ : Cardinal.{w}) [Fact κ.IsRegular]
    {X Y : C} (f : X ⟶ Y) : Prop where
  exists_of_commSq {X' Y' : C} {t : X' ⟶ Y'} {l : X' ⟶ X} {r : Y' ⟶ Y}
    [IsCardinalPresentable X' κ] [IsCardinalPresentable Y' κ]
    (sq : CommSq t l r f) : ∃ (ρ : Y' ⟶ X), t ≫ ρ = l

variable (κ : Cardinal.{w}) [Fact κ.IsRegular]

variable (C) in
/-- `κ`-pure morphisms, as a property of morphisms in a category `C`. -/
abbrev isCardinalPure : MorphismProperty C := fun _ _ f ↦ IsCardinalPure κ f

instance {X Y : C} (f : X ⟶ Y) [IsSplitMono f] : IsCardinalPure κ f where
  exists_of_commSq {X' Y' t l r _ _} sq :=
    ⟨r ≫ retraction f, by simp [sq.w_assoc]⟩

instance {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsCardinalPure κ f] [IsCardinalPure κ g] :
    IsCardinalPure κ (f ≫ g) where
  exists_of_commSq {X' Y' t l r _ _} sq := by
    obtain ⟨ρ, hρ⟩ := IsCardinalPure.exists_of_commSq κ
      (show CommSq t (l ≫ f) r g from ⟨by simpa using sq.w⟩)
    exact IsCardinalPure.exists_of_commSq κ (CommSq.mk hρ)

instance : (isCardinalPure C κ).IsMultiplicative where
  id_mem _ := inferInstance
  comp_mem _ _ _ _ := inferInstance

instance : (isCardinalPure C κ).RespectsIso where
  precomp _ _ _ _ := inferInstance
  postcomp _ _ _ _ := inferInstance

lemma IsCardinalPure.of_postcomp
    {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsCardinalPure κ (f ≫ g)] :
    IsCardinalPure κ f where
  exists_of_commSq {X' Y' t l r _ _} sq :=
    exists_of_commSq κ (show CommSq t l (r ≫ g) (f ≫ g) from ⟨by simp [sq.w_assoc]⟩)

instance : (isCardinalPure C κ).HasOfPostcompProperty (⊤ : MorphismProperty C) where
  of_postcomp f g _ _ := IsCardinalPure.of_postcomp κ f g

set_option backward.defeqAttrib.useBackward true in
lemma IsCardinalAccessibleCategory.mono_iff [IsCardinalAccessibleCategory C κ]
    {X Y : C} (f : X ⟶ Y) :
    Mono f ↔ ∀ (T : C) [IsCardinalPresentable T κ] (g₁ g₂ : T ⟶ X),
      g₁ ≫ f = g₂ ≫ f → g₁ = g₂ :=
  ⟨fun _ _ _ _ _ _ ↦ by rwa [← cancel_mono f],
    fun hf ↦ ⟨fun {Z} g₁ g₂ h ↦ ((isCardinalPresentable C κ).ι.denseAt Z).hom_ext
      (by cat_disch)⟩⟩

set_option backward.defeqAttrib.useBackward true in
/-- In a `κ`-accessible category, `κ`-pure morphisms are monomorphisms.
(This is proposition 2.29 in [Adamek_Rosicky_1994].) -/
lemma IsCardinalPure.mono [IsCardinalAccessibleCategory C κ]
    {X Y : C} (f : X ⟶ Y) [IsCardinalPure κ f] :
    Mono f := by
  rw [IsCardinalAccessibleCategory.mono_iff κ]
  intro K _ p q hpq
  obtain ⟨j, p', q', h₁, h₂⟩ := IsCardinalPresentable.exists_hom₂_of_isColimit κ
    ((isCardinalPresentable C κ).ι.denseAt X) p q
  obtain ⟨⟨X', (hX' : IsCardinalPresentable X' κ)⟩, u, rfl⟩ := j.mk_surjective
  dsimp at u h₁ h₂ p' q'
  obtain ⟨j', f', hf'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
    ((isCardinalPresentable C κ).ι.denseAt Y) (u ≫ f)
  obtain ⟨j'', c, hc⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
    ((isCardinalPresentable C κ).ι.denseAt Y) (p' ≫ f') (q' ≫ f') (by cat_disch)
  obtain ⟨⟨Y', _⟩, v', rfl⟩ := j'.mk_surjective
  obtain ⟨⟨Y'', _ : IsCardinalPresentable Y'' κ⟩, v, rfl⟩ := j''.mk_surjective
  obtain ⟨⟨h⟩, H, rfl⟩ := CostructuredArrow.homMk_surjective c
  dsimp at v' f' hf' v h H hc
  simp only [Category.assoc, Category.id_comp] at hf' h₁ h₂ hc
  obtain ⟨u', hu'⟩ :=
    IsCardinalPure.exists_of_commSq κ (show CommSq (f' ≫ h) u v f from { })
  simp only [Category.assoc] at hu'
  rw [← h₁, ← hu', reassoc_of% hc, hu', h₂]

variable (C) in
lemma isCardinalPure_le_monomorphisms [IsCardinalAccessibleCategory C κ] :
    isCardinalPure C κ ≤ .monomorphisms C :=
  fun _ _ f _ ↦ IsCardinalPure.mono κ f

set_option backward.defeqAttrib.useBackward true in
/-- `κ`-pure morphisms are stable under `κ`-filtered colimits.
(This is proposition 2.30 (i) in [Adamek_Rosicky_1994].) -/
instance (J : Type*) [Category* J] [EssentiallySmall.{w} J] [IsCardinalFiltered J κ] :
    (isCardinalPure C κ).IsStableUnderColimitsOfShape J := by
  have := isFiltered_of_isCardinalFiltered J κ
  rw [MorphismProperty.isStableUnderColimitsOfShape_iff_colimitsOfShape_le]
  rintro _ _ f ⟨X, Y, c₁, c₂, hc₁, hc₂, f, hf⟩
  refine ⟨fun {X' Y' t l r _ _} sq ↦ ?_⟩
  obtain ⟨j', l', r', _, _, sq'⟩ :=
    IsCardinalPresentable.exists_commSq_of_isColimit κ f hc₁ hc₂ _ (by cat_disch) sq
  have := hf j'
  obtain ⟨ρ, _⟩ := IsCardinalPure.exists_of_commSq κ sq'
  exact ⟨ρ ≫ c₁.ι.app j', by cat_disch⟩

/-- If `F : C ⥤ D` is a `κ`-accessible functor (with `C` a `κ`-accessible category),
then `F` maps `κ`-pure morphisms to `κ`-morphisms.
(This is proposition 2.38 in [Adamek_Rosicky_1994], without the unnecessary
assumption that `F` preserves `κ`-presentable objects.) -/
instance IsCardinalPure.map
    [IsCardinalAccessibleCategory C κ] [F.IsCardinalAccessible κ]
    {X Y : C} (f : X ⟶ Y) [IsCardinalPure κ f] :
    IsCardinalPure κ (F.map f) where
  exists_of_commSq {X' Y' t l r _ _ } sq := by
    /- Write X and Y as κ-filtered colimits of κ-presentable objects `X ≅ colimᵢ pXᵢ` and
    `Y ≅ colimⱼ pYⱼ`. -/
    obtain ⟨I, _, _, ⟨pX⟩⟩ :=
      (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape X
    obtain ⟨J, _, _, ⟨pY⟩⟩ :=
      (isCardinalFilteredGenerator_isCardinalPresentable C κ).exists_colimitsOfShape Y
    -- `F` is κ-accessible so the presentations of `X` and `Y` are preserved by `F`.
    have := F.preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall κ I
    have := F.preservesColimitsOfShape_of_isCardinalAccessible_of_essentiallySmall κ J
    -- `X'` is κ-presentable so `l : X' ⟶ F.obj X` factors through some `F.obj pXᵢ`.
    obtain ⟨i, l', hl'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
      (isColimitOfPreserves F pX.isColimit) l
    have : isCardinalPresentable C κ (pX.diag.obj i) := pX.prop_diag_obj i
    /- `Y'` is also κ-presentable so `l : Y' ⟶ F.obj Y` factors through some `F.obj pYⱼ₀`,
    and the composite `pXᵢ ⟶ X ⟶ Y` also lifts to some pYⱼ₁, taking the filtered max, one gets an
    index `j` such that `l` factors through `F.obj pYⱼ` and a lift `pXᵢ ⟶ pYⱼ` of `f`. -/
    obtain ⟨j, r', a, hr', ha⟩ :
        ∃ (j : J) (r' : Y' ⟶ F.obj (pY.diag.obj j)) (a : pX.diag.obj i ⟶ pY.diag.obj j),
          r' ≫ F.map (pY.ι.app j) = r ∧ a ≫ pY.ι.app j = pX.ι.app i ≫ f := by
      obtain ⟨j₀, r', hr'⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ
        (isColimitOfPreserves F pY.isColimit) r
      obtain ⟨j₁, a, ha⟩ :=
        IsCardinalPresentable.exists_hom_of_isColimit κ pY.isColimit (pX.ι.app i ≫ f)
      have := isFiltered_of_isCardinalFiltered J κ
      refine ⟨IsFiltered.max j₀ j₁, r' ≫ F.map (pY.diag.map (IsFiltered.leftToMax j₀ j₁)),
        a ≫ pY.diag.map (IsFiltered.rightToMax j₀ j₁), ?_, ?_⟩
      all_goals simpa [← Functor.map_comp, pY.w]
    /- Using again that `X'` is κ-presentable, the composites `X' ⟶ Y' ⟶ F.obj pYⱼ` and
    `X' ⟶ F.obj pXᵢ ⟶ F.obj pYⱼ` are equalized for some index `k ≥ j`. -/
    obtain ⟨k, b, hb⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ
      (isColimitOfPreserves F pY.isColimit) (t ≫ r') (l' ≫ F.map a) (by
        dsimp
        rw [Category.assoc, Category.assoc, hr', ← Functor.map_comp, ha,
          Functor.map_comp, reassoc_of% dsimp% hl', sq.w])
    have : isCardinalPresentable C κ (pY.diag.obj k) := pY.prop_diag_obj k
    /- Now one can use purity of `f` to get a morphism `pYₖ ⟶ X`, and the composite
    `Y' ⟶ F.obj pYₖ ⟶ F.obj X` is the desired lift. -/
    obtain ⟨ρ, hρ⟩ := IsCardinalPure.exists_of_commSq κ (f := f) (t := a ≫ pY.diag.map b)
      (l := pX.ι.app i) (r := pY.ι.app k) ⟨by simpa [pY.w]⟩
    simp only [Category.assoc] at hb hρ
    refine ⟨r' ≫ F.map (pY.diag.map b) ≫ F.map ρ, ?_⟩
    rw [reassoc_of% hb, ← Functor.map_comp, ← Functor.map_comp, hρ, dsimp% hl']

end CategoryTheory
````
