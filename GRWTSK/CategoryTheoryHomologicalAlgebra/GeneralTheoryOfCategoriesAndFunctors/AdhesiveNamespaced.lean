-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Adhesive.Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Adhesive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Extensive
import Mathlib.CategoryTheory.Limits.Shapes.KernelPair


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703

#align_import category_theory.adhesive from "leanprover-community/mathlib"@"afff1f24a6b68d0077c9d63782a1d093e337758c"

/-!

# Adhesive categories

## Main definitions
- `CategoryTheory.IsPushout.IsVanKampen`: A convenience formulation for a pushout being
  a van Kampen colimit.
- `CategoryTheory.Adhesive`: A category is adhesive if it has pushouts and pullbacks along
  monomorphisms, and such pushouts are van Kampen.

## Main Results
- `CategoryTheory.Type.adhesive`: The category of `Type` is adhesive.
- `CategoryTheory.Adhesive.isPullback_of_isPushout_of_mono_left`: In adhesive categories,
  pushouts along monomorphisms are pullbacks.
- `CategoryTheory.Adhesive.mono_of_isPushout_of_mono_left`: In adhesive categories,
  monomorphisms are stable under pushouts.
- `CategoryTheory.Adhesive.toRegularMonoCategory`: Monomorphisms in adhesive categories are
  regular (this implies that adhesive categories are balanced).

## TODO

Show that the following are adhesive:
- functor categories into adhesive categories
- the categories of sheaves over a site

## References
- https://ncatlab.org/nlab/show/adhesive+category
- [Stephen Lack and Paweł Sobociński, Adhesive Categories][adhesive2004]

-/


namespace CategoryTheory

open Limits

universe v' u' v u

variable {J : Type v'} [Category.{u'} J] {C : Type u} [Category.{v} C]

variable {W X Y Z : C} {f : W ⟶ X} {g : W ⟶ Y} {h : X ⟶ Z} {i : Y ⟶ Z}

-- This only makes sense when the original diagram is a pushout.
/-- A convenience formulation for a pushout being a van Kampen colimit.
See `IsPushout.isVanKampen_iff` below. -/
@[nolint unusedArguments]
def IsPushout.IsVanKampen (_ : IsPushout f g h i) : Prop :=
  ∀ ⦃W' X' Y' Z' : C⦄ (f' : W' ⟶ X') (g' : W' ⟶ Y') (h' : X' ⟶ Z') (i' : Y' ⟶ Z') (αW : W' ⟶ W)
    (αX : X' ⟶ X) (αY : Y' ⟶ Y) (αZ : Z' ⟶ Z) (_ : IsPullback f' αW αX f)
    (_ : IsPullback g' αW αY g) (_ : CommSq h' αX αZ h) (_ : CommSq i' αY αZ i)
    (_ : CommSq f' g' h' i'), IsPushout f' g' h' i' ↔ IsPullback h' αX αZ h ∧ IsPullback i' αY αZ i
#align category_theory.is_pushout.is_van_kampen CategoryTheory.IsPushout.IsVanKampen

theorem IsPushout.IsVanKampen.flip {H : IsPushout f g h i} (H' : H.IsVanKampen) :
    H.flip.IsVanKampen := by
  introv W' hf hg hh hi w
  simpa only [IsPushout.flip_iff, IsPullback.flip_iff, and_comm] using
    H' g' f' i' h' αW αY αX αZ hg hf hi hh w.flip
#align category_theory.is_pushout.is_van_kampen.flip CategoryTheory.IsPushout.IsVanKampen.flip

theorem IsPushout.isVanKampen_iff (H : IsPushout f g h i) :
    H.IsVanKampen ↔ IsVanKampenColimit (PushoutCocone.mk h i H.w) := by
  constructor
  · intro H F' c' α fα eα hα
    refine' Iff.trans _
        ((H (F'.map WalkingSpan.Hom.fst) (F'.map WalkingSpan.Hom.snd) (c'.ι.app _) (c'.ι.app _)
          (α.app _) (α.app _) (α.app _) fα (by convert hα WalkingSpan.Hom.fst)
          (by convert hα WalkingSpan.Hom.snd) _ _ _).trans _)
    · have : F'.map WalkingSpan.Hom.fst ≫ c'.ι.app WalkingSpan.left =
          F'.map WalkingSpan.Hom.snd ≫ c'.ι.app WalkingSpan.right := by
        simp only [Cocone.w]
      rw [(IsColimit.equivOfNatIsoOfIso (diagramIsoSpan F') c' (PushoutCocone.mk _ _ this)
            _).nonempty_congr]
      · exact ⟨fun h => ⟨⟨this⟩, h⟩, fun h => h.2⟩
      · refine' Cocones.ext (Iso.refl c'.pt) _
        rintro (_ | _ | _) <;> dsimp <;>
          simp only [c'.w, Category.assoc, Category.id_comp, Category.comp_id]
    · exact ⟨NatTrans.congr_app eα.symm _⟩
    · exact ⟨NatTrans.congr_app eα.symm _⟩
    · exact ⟨by simp⟩
    constructor
    · rintro ⟨h₁, h₂⟩ (_ | _ | _)
      · rw [← c'.w WalkingSpan.Hom.fst]; exact (hα WalkingSpan.Hom.fst).paste_horiz h₁
      exacts [h₁, h₂]
    · intro h; exact ⟨h _, h _⟩
  · introv H W' hf hg hh hi w
    refine'
      Iff.trans _ ((H w.cocone ⟨by rintro (_ | _ | _); exacts [αW, αX, αY], _⟩ αZ _ _).trans _)
    rotate_left
    · rintro i _ (_ | _ | _)
      · dsimp; simp only [Functor.map_id, Category.comp_id, Category.id_comp]
      exacts [hf.w, hg.w]
    · ext (_ | _ | _)
      · dsimp; rw [PushoutCocone.condition_zero]; erw [Category.assoc, hh.w, hf.w_assoc]
      exacts [hh.w.symm, hi.w.symm]
    · rintro i _ (_ | _ | _)
      · dsimp; simp_rw [Functor.map_id]
        exact IsPullback.of_horiz_isIso ⟨by rw [Category.comp_id, Category.id_comp]⟩
      exacts [hf, hg]
    · constructor
      · intro h; exact ⟨h WalkingCospan.left, h WalkingCospan.right⟩
      · rintro ⟨h₁, h₂⟩ (_ | _ | _)
        · dsimp; rw [PushoutCocone.condition_zero]; exact hf.paste_horiz h₁
        exacts [h₁, h₂]
    · exact ⟨fun h => h.2, fun h => ⟨w, h⟩⟩
#align category_theory.is_pushout.is_van_kampen_iff CategoryTheory.IsPushout.isVanKampen_iff

theorem is_coprod_iff_isPushout {X E Y YE : C} (c : BinaryCofan X E) (hc : IsColimit c) {f : X ⟶ Y}
    {iY : Y ⟶ YE} {fE : c.pt ⟶ YE} (H : CommSq f c.inl iY fE) :
    Nonempty (IsColimit (BinaryCofan.mk (c.inr ≫ fE) iY)) ↔ IsPushout f c.inl iY fE := by
  constructor
  · rintro ⟨h⟩
    refine' ⟨H, ⟨Limits.PushoutCocone.isColimitAux' _ _⟩⟩
    intro s
    dsimp only [PushoutCocone.inr, PushoutCocone.mk] -- Porting note: Originally `dsimp`
    refine' ⟨h.desc (BinaryCofan.mk (c.inr ≫ s.inr) s.inl), h.fac _ ⟨WalkingPair.right⟩, _, _⟩
    · apply BinaryCofan.IsColimit.hom_ext hc
      · rw [← H.w_assoc]; erw [h.fac _ ⟨WalkingPair.right⟩]; exact s.condition
      · rw [← Category.assoc]; exact h.fac _ ⟨WalkingPair.left⟩
    · intro m e₁ e₂
      apply BinaryCofan.IsColimit.hom_ext h
      · dsimp only [BinaryCofan.mk, id] -- Porting note: Originally `dsimp`
        rw [Category.assoc, e₂, eq_comm]; exact h.fac _ ⟨WalkingPair.left⟩
      · refine' e₁.trans (Eq.symm _); exact h.fac _ _
  · refine' fun H => ⟨_⟩
    fapply Limits.BinaryCofan.isColimitMk
    · exact fun s => H.isColimit.desc (PushoutCocone.mk s.inr _ <|
        (hc.fac (BinaryCofan.mk (f ≫ s.inr) s.inl) ⟨WalkingPair.left⟩).symm)
    · intro s
      erw [Category.assoc, H.isColimit.fac _ WalkingSpan.right, hc.fac]; rfl
    · intro s; exact H.isColimit.fac _ WalkingSpan.left
    · intro s m e₁ e₂
      apply PushoutCocone.IsColimit.hom_ext H.isColimit
      · symm; exact (H.isColimit.fac _ WalkingSpan.left).trans e₂.symm
      · erw [H.isColimit.fac _ WalkingSpan.right]
        apply BinaryCofan.IsColimit.hom_ext hc
        · erw [hc.fac, ← H.w_assoc, e₂]; rfl
        · refine' ((Category.assoc _ _ _).symm.trans e₁).trans _; symm; exact hc.fac _ _
#align category_theory.is_coprod_iff_is_pushout CategoryTheory.is_coprod_iff_isPushout

theorem IsPushout.isVanKampen_inl {W E X Z : C} (c : BinaryCofan W E) [FinitaryExtensive C]
    [HasPullbacks C] (hc : IsColimit c) (f : W ⟶ X) (h : X ⟶ Z) (i : c.pt ⟶ Z)
    (H : IsPushout f c.inl h i) : H.IsVanKampen := by
  obtain ⟨hc₁⟩ := (is_coprod_iff_isPushout c hc H.1).mpr H
  introv W' hf hg hh hi w
  obtain ⟨hc₂⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
    (BinaryCofan.mk _ pullback.fst) _ _ _ hg.w.symm pullback.condition.symm).mpr
    ⟨hg, IsPullback.of_hasPullback αY c.inr⟩
  refine' (is_coprod_iff_isPushout _ hc₂ w).symm.trans _
  refine' ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen _ hc₁)
    (BinaryCofan.mk _ _) pullback.snd _ _ _ hh.w.symm).trans _
  · dsimp; rw [← pullback.condition_assoc, Category.assoc, hi.w]
  constructor
  · rintro ⟨hc₃, hc₄⟩
    refine' ⟨hc₄, _⟩
    let Y'' := pullback αZ i
    let cmp : Y' ⟶ Y'' := pullback.lift i' αY hi.w
    have e₁ : (g' ≫ cmp) ≫ pullback.snd = αW ≫ c.inl := by
      rw [Category.assoc, pullback.lift_snd, hg.w]
    have e₂ : (pullback.fst ≫ cmp : pullback αY c.inr ⟶ _) ≫ pullback.snd = pullback.snd ≫ c.inr :=
      by rw [Category.assoc, pullback.lift_snd, pullback.condition]
    obtain ⟨hc₄⟩ := ((BinaryCofan.isVanKampen_iff _).mp (FinitaryExtensive.vanKampen c hc)
      (BinaryCofan.mk _ _) αW _ _ e₁.symm e₂.symm).mpr <| by
        constructor
        · apply IsPullback.of_right _ e₁ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst, ← H.w, ← w.w]; exact hf.paste_horiz hc₄
        · apply IsPullback.of_right _ e₂ (IsPullback.of_hasPullback _ _)
          rw [Category.assoc, pullback.lift_fst]; exact hc₃
    · rw [← Category.id_comp αZ, ← show cmp ≫ pullback.snd = αY from pullback.lift_snd _ _ _]
      apply IsPullback.paste_vert _ (IsPullback.of_hasPullback αZ i)
      have : cmp = (hc₂.coconePointUniqueUpToIso hc₄).hom := by
        apply BinaryCofan.IsColimit.hom_ext hc₂
        exacts [(hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.left⟩).symm,
          (hc₂.comp_coconePointUniqueUpToIso_hom hc₄ ⟨WalkingPair.right⟩).symm]
      rw [this]
      exact IsPullback.of_vert_isIso ⟨by rw [← this, Category.comp_id, pullback.lift_fst]⟩
  · rintro ⟨hc₃, hc₄⟩
    exact ⟨(IsPullback.of_hasPullback αY c.inr).paste_horiz hc₄, hc₃⟩
#align category_theory.is_pushout.is_van_kampen_inl CategoryTheory.IsPushout.isVanKampen_inl

theorem IsPushout.IsVanKampen.isPullback_of_mono_left [Mono f] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : IsPullback f g h i :=
  ((H' (𝟙 _) g g (𝟙 Y) (𝟙 _) f (𝟙 _) i (IsKernelPair.id_of_mono f)
      (IsPullback.of_vert_isIso ⟨by simp⟩) H.1.flip ⟨rfl⟩ ⟨by simp⟩).mp
    (IsPushout.of_horiz_isIso ⟨by simp⟩)).1.flip
#align category_theory.is_pushout.is_van_kampen.is_pullback_of_mono_left CategoryTheory.IsPushout.IsVanKampen.isPullback_of_mono_left

theorem IsPushout.IsVanKampen.isPullback_of_mono_right [Mono g] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : IsPullback f g h i :=
  ((H' f (𝟙 _) (𝟙 _) f (𝟙 _) (𝟙 _) g h (IsPullback.of_vert_isIso ⟨by simp⟩)
      (IsKernelPair.id_of_mono g) ⟨rfl⟩ H.1 ⟨by simp⟩).mp
    (IsPushout.of_vert_isIso ⟨by simp⟩)).2
#align category_theory.is_pushout.is_van_kampen.is_pullback_of_mono_right CategoryTheory.IsPushout.IsVanKampen.isPullback_of_mono_right

theorem IsPushout.IsVanKampen.mono_of_mono_left [Mono f] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : Mono i :=
  IsKernelPair.mono_of_isIso_fst
    ((H' (𝟙 _) g g (𝟙 Y) (𝟙 _) f (𝟙 _) i (IsKernelPair.id_of_mono f)
        (IsPullback.of_vert_isIso ⟨by simp⟩) H.1.flip ⟨rfl⟩ ⟨by simp⟩).mp
      (IsPushout.of_horiz_isIso ⟨by simp⟩)).2
#align category_theory.is_pushout.is_van_kampen.mono_of_mono_left CategoryTheory.IsPushout.IsVanKampen.mono_of_mono_left

theorem IsPushout.IsVanKampen.mono_of_mono_right [Mono g] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : Mono h :=
  IsKernelPair.mono_of_isIso_fst
    ((H' f (𝟙 _) (𝟙 _) f (𝟙 _) (𝟙 _) g h (IsPullback.of_vert_isIso ⟨by simp⟩)
        (IsKernelPair.id_of_mono g) ⟨rfl⟩ H.1 ⟨by simp⟩).mp
      (IsPushout.of_vert_isIso ⟨by simp⟩)).1
#align category_theory.is_pushout.is_van_kampen.mono_of_mono_right CategoryTheory.IsPushout.IsVanKampen.mono_of_mono_right

/-- A category is adhesive if it has pushouts and pullbacks along monomorphisms,
and such pushouts are van Kampen. -/
class Adhesive (C : Type u) [Category.{v} C] : Prop where
  [hasPullback_of_mono_left : ∀ {X Y S : C} (f : X ⟶ S) (g : Y ⟶ S) [Mono f], HasPullback f g]
  [hasPushout_of_mono_left : ∀ {X Y S : C} (f : S ⟶ X) (g : S ⟶ Y) [Mono f], HasPushout f g]
  van_kampen : ∀ {W X Y Z : C} {f : W ⟶ X} {g : W ⟶ Y} {h : X ⟶ Z} {i : Y ⟶ Z} [Mono f]
    (H : IsPushout f g h i), H.IsVanKampen
#align category_theory.adhesive CategoryTheory.Adhesive

attribute [instance] Adhesive.hasPullback_of_mono_left Adhesive.hasPushout_of_mono_left

theorem Adhesive.van_kampen' [Adhesive C] [Mono g] (H : IsPushout f g h i) : H.IsVanKampen :=
  (Adhesive.van_kampen H.flip).flip
#align category_theory.adhesive.van_kampen' CategoryTheory.Adhesive.van_kampen'

theorem Adhesive.isPullback_of_isPushout_of_mono_left [Adhesive C] (H : IsPushout f g h i)
    [Mono f] : IsPullback f g h i :=
  (Adhesive.van_kampen H).isPullback_of_mono_left
#align category_theory.adhesive.is_pullback_of_is_pushout_of_mono_left CategoryTheory.Adhesive.isPullback_of_isPushout_of_mono_left

theorem Adhesive.isPullback_of_isPushout_of_mono_right [Adhesive C] (H : IsPushout f g h i)
    [Mono g] : IsPullback f g h i :=
  (Adhesive.van_kampen' H).isPullback_of_mono_right
#align category_theory.adhesive.is_pullback_of_is_pushout_of_mono_right CategoryTheory.Adhesive.isPullback_of_isPushout_of_mono_right

theorem Adhesive.mono_of_isPushout_of_mono_left [Adhesive C] (H : IsPushout f g h i) [Mono f] :
    Mono i :=
  (Adhesive.van_kampen H).mono_of_mono_left
#align category_theory.adhesive.mono_of_is_pushout_of_mono_left CategoryTheory.Adhesive.mono_of_isPushout_of_mono_left

theorem Adhesive.mono_of_isPushout_of_mono_right [Adhesive C] (H : IsPushout f g h i) [Mono g] :
    Mono h :=
  (Adhesive.van_kampen' H).mono_of_mono_right
#align category_theory.adhesive.mono_of_is_pushout_of_mono_right CategoryTheory.Adhesive.mono_of_isPushout_of_mono_right

instance Type.adhesive : Adhesive (Type u) :=
  ⟨fun {_ _ _ _ f _ _ _ _} H =>
    (IsPushout.isVanKampen_inl _ (Types.isCoprodOfMono f) _ _ _ H.flip).flip⟩
#align category_theory.type.adhesive CategoryTheory.Type.adhesive

noncomputable instance (priority := 100) Adhesive.toRegularMonoCategory [Adhesive C] :
    RegularMonoCategory C :=
  ⟨fun f _ =>
    { Z := pushout f f
      left := pushout.inl
      right := pushout.inr
      w := pushout.condition
      isLimit := (Adhesive.isPullback_of_isPushout_of_mono_left
        (IsPushout.of_hasPushout f f)).isLimitFork }⟩
#align category_theory.adhesive.to_regular_mono_category CategoryTheory.Adhesive.toRegularMonoCategory

-- This then implies that adhesive categories are balanced
example [Adhesive C] : Balanced C :=
  inferInstance

end CategoryTheory
