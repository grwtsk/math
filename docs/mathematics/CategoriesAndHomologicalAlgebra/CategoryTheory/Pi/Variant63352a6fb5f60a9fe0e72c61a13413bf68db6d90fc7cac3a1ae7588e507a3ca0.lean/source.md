# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pi.Variant63352a6fb5f60a9fe0e72c61a13413bf68db6d90fc7cac3a1ae7588e507a3ca0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aad2290be110a47b52281985cd33d0bf79360ccb` · SHA-256 `3a1e978c10de3cdd9d9f60cc349e5cecc0d9042d4fba7baf73b9006ac144d0d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prod.Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Prod.Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Prod
import Mathlib.CategoryTheory.Localization.Equivalence
import Mathlib.Data.Fintype.Option

/-!
# Localization of product categories

In this file, it is shown that if for all `j : J` (with `J` finite),
functors `L j : C j ⥤ D j` are localization functors with respect
to a class of morphisms `W j : MorphismProperty (C j)`, then the product
functor `Functor.pi L : (∀ j, C j) ⥤ ∀ j, D j` is a localization
functor for the product class of morphisms `MorphismProperty.pi W`.
The proof proceeds by induction on the cardinal of `J` using the
main result of the file `Mathlib/CategoryTheory/Localization/Prod.lean`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prod.Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8

universe w v₁ v₂ u₁ u₂

namespace CategoryTheory.Functor.IsLocalization

instance pi {J : Type w} [Finite J] {C : J → Type u₁} {D : J → Type u₂}
    [∀ j, Category.{v₁} (C j)] [∀ j, Category.{v₂} (D j)]
    (L : ∀ j, C j ⥤ D j) (W : ∀ j, MorphismProperty (C j))
    [∀ j, (W j).ContainsIdentities] [∀ j, (L j).IsLocalization (W j)] :
    (Functor.pi L).IsLocalization (MorphismProperty.pi W) := by
  revert J
  apply Finite.induction_empty_option
  · intro J₁ J₂ e hJ₁ C₂ D₂ _ _ L₂ W₂ _ _
    let L₁ := fun j => (L₂ (e j))
    let E := Pi.equivalenceOfEquiv C₂ e
    let E' := Pi.equivalenceOfEquiv D₂ e
    haveI : CatCommSq E.functor (Functor.pi L₁) (Functor.pi L₂) E'.functor :=
      (CatCommSq.hInvEquiv E (Functor.pi L₁) (Functor.pi L₂) E').symm ⟨Iso.refl _⟩
    refine IsLocalization.of_equivalences (Functor.pi L₁)
      (MorphismProperty.pi (fun j => (W₂ (e j)))) (Functor.pi L₂)
      (MorphismProperty.pi W₂) E E' ?_
      (MorphismProperty.IsInvertedBy.pi _ _ (fun _ => Localization.inverts _ _))
    intro _ _ f hf
    refine ⟨_, _, E.functor.map f, fun i => ?_, ⟨Iso.refl _⟩⟩
    have H : ∀ {j j' : J₂} (h : j = j') {X Y : C₂ j} (g : X ⟶ Y) (_ : W₂ j g),
        W₂ j' ((Pi.eqToEquivalence C₂ h).functor.map g) := by
      rintro j _ rfl _ _ g hg
      exact hg
    exact H (e.apply_symm_apply i) _ (hf (e.symm i))
  · intro C D _ _ L W _ _
    haveI : ∀ j, IsEquivalence (L j) := by rintro ⟨⟩
    refine IsLocalization.of_isEquivalence _ _ (fun _ _ _ _ => ?_)
    rw [MorphismProperty.isomorphisms.iff, isIso_pi_iff]
    rintro ⟨⟩
  · intro J _ hJ C D _ _ L W _ _
    let L₁ := (L none).prod (Functor.pi (fun j => L (some j)))
    haveI : CatCommSq (Pi.optionEquivalence C).symm.functor L₁ (Functor.pi L)
      (Pi.optionEquivalence D).symm.functor :=
        ⟨NatIso.pi' (by rintro (_|i) <;> apply Iso.refl)⟩
    refine IsLocalization.of_equivalences L₁
      ((W none).prod (MorphismProperty.pi (fun j => W (some j)))) (Functor.pi L) _
      (Pi.optionEquivalence C).symm (Pi.optionEquivalence D).symm ?_ ?_
    · intro ⟨X₁, X₂⟩ ⟨Y₁, Y₂⟩ f ⟨hf₁, hf₂⟩
      refine ⟨_, _, (Pi.optionEquivalence C).inverse.map f, ?_, ⟨Iso.refl _⟩⟩
      rintro (_|i)
      · exact hf₁
      · apply hf₂
    · apply MorphismProperty.IsInvertedBy.pi
      rintro (_|i) <;> apply Localization.inverts

/-- If `L : C ⥤ D` is a localization functor for `W : MorphismProperty C`, then
the induced functor `(Discrete J ⥤ C) ⥤ (Discrete J ⥤ D)` is also a localization
for `W.functorCategory (Discrete J)` if `W` contains identities. -/
instance {J : Type} [Finite J] {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
    (L : C ⥤ D) (W : MorphismProperty C) [W.ContainsIdentities] [L.IsLocalization W] :
    ((whiskeringRight (Discrete J) C D).obj L).IsLocalization
      (W.functorCategory (Discrete J)) := by
  let E := piEquivalenceFunctorDiscrete J C
  let E' := piEquivalenceFunctorDiscrete J D
  let L₂ := (whiskeringRight (Discrete J) C D).obj L
  let L₁ := Functor.pi (fun (_ : J) => L)
  have : CatCommSq E.functor L₁ L₂ E'.functor :=
    ⟨(Functor.rightUnitor _).symm ≪≫ isoWhiskerLeft _ E'.counitIso.symm ≪≫
      Functor.associator _ _ _≪≫ isoWhiskerLeft _ ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight (by exact Iso.refl _) _) ≪≫ (Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight E.unitIso.symm L₁) _ ≪≫ isoWhiskerRight L₁.leftUnitor _⟩
  refine Functor.IsLocalization.of_equivalences L₁
    (MorphismProperty.pi (fun _ => W)) L₂ _ E E' ?_ ?_
  · intro X Y f hf
    exact MorphismProperty.le_isoClosure _ _ (fun ⟨j⟩ => hf j)
  · intro X Y f hf
    have : ∀ (j : Discrete J), IsIso ((L₂.map f).app j) :=
      fun j => Localization.inverts L W _ (hf j)
    apply NatIso.isIso_of_isIso_app

end CategoryTheory.Functor.IsLocalization
```
