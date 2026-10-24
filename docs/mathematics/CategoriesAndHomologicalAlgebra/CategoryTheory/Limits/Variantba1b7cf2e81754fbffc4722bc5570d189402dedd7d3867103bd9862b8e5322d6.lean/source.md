# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantba1b7cf2e81754fbffc4722bc5570d189402dedd7d3867103bd9862b8e5322d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fad81f6b89811a74131ce6a24316ef2337c6797` · SHA-256 `5d4178e424e03440151c127158e600674dc68325271542891e00c90a7143f4fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsPushoutHasLiftingProperty.Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsPushoutHasLiftingProperty.Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/LiftingProperties/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs

/-!
# Lifting properties and (co)limits

In this file, we show some consequences of lifting properties in the presence of
certain (co)limits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsPushoutHasLiftingProperty.Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5

public section

universe v

namespace CategoryTheory

open Category Limits

variable {C : Type*} [Category* C] {X Y Z W : C}
  {f : X ⟶ Y} {s : X ⟶ Z} {g : Z ⟶ W} {t : Y ⟶ W}

lemma IsPushout.hasLiftingProperty (h : IsPushout s f g t)
    {Z' W' : C} (g' : Z' ⟶ W') [HasLiftingProperty f g'] : HasLiftingProperty g g' where
  sq_hasLift := fun {u v} sq ↦ by
    have w : (s ≫ u) ≫ g' = f ≫ (t ≫ v) := by
      rw [← Category.assoc, ← h.w, Category.assoc, Category.assoc, sq.w]
    exact ⟨h.desc u (CommSq.mk w).lift (by rw [CommSq.fac_left]), h.inl_desc ..,
      h.hom_ext (by rw [h.inl_desc_assoc, sq.w]) (by rw [h.inr_desc_assoc, CommSq.fac_right])⟩

lemma IsPullback.hasLiftingProperty (h : IsPullback s f g t)
    {X' Y' : C} (f' : X' ⟶ Y') [HasLiftingProperty f' g] : HasLiftingProperty f' f where
  sq_hasLift := fun {u v} sq ↦ by
    have w : (u ≫ s) ≫ g = f' ≫ v ≫ t := by
      rw [Category.assoc, h.toCommSq.w, ← Category.assoc, ← Category.assoc, sq.w]
    exact ⟨h.lift (CommSq.mk w).lift v (by rw [CommSq.fac_right]),
      h.hom_ext (by rw [Category.assoc, h.lift_fst, CommSq.fac_left])
        (by rw [Category.assoc, h.lift_snd, sq.w]), h.lift_snd _ _ _⟩

instance [HasPushout s f] {T₁ T₂ : C} (p : T₁ ⟶ T₂) [HasLiftingProperty f p] :
    HasLiftingProperty (pushout.inl s f) p :=
  (IsPushout.of_hasPushout s f).hasLiftingProperty p

instance [HasPushout s f] {T₁ T₂ : C} (p : T₁ ⟶ T₂) [HasLiftingProperty s p] :
    HasLiftingProperty (pushout.inr s f) p :=
  (IsPushout.of_hasPushout s f).flip.hasLiftingProperty p

instance [HasPullback g t] {T₁ T₂ : C} (p : T₁ ⟶ T₂) [HasLiftingProperty p g] :
    HasLiftingProperty p (pullback.snd g t) :=
  (IsPullback.of_hasPullback g t).hasLiftingProperty p

instance [HasPullback g t] {T₁ T₂ : C} (p : T₁ ⟶ T₂) [HasLiftingProperty p t] :
    HasLiftingProperty p (pullback.fst g t) :=
  (IsPullback.of_hasPullback g t).flip.hasLiftingProperty p

instance {J : Type*} {A B : J → C} [HasProduct A] [HasProduct B]
    (f : (j : J) → A j ⟶ B j) {X Y : C} (p : X ⟶ Y)
    [∀ j, HasLiftingProperty p (f j)] :
    HasLiftingProperty p (Limits.Pi.map f) where
  sq_hasLift {t b} sq := by
    have sq' (j : J) :
        CommSq (t ≫ Pi.π _ j) p (f j) (b ≫ Pi.π _ j) :=
      ⟨by rw [← Category.assoc, ← sq.w]; simp⟩
    exact ⟨⟨{ l := Pi.lift (fun j ↦ (sq' j).lift) }⟩⟩

instance {J : Type*} {A B : J → C} [HasCoproduct A] [HasCoproduct B]
    (f : (j : J) → A j ⟶ B j) {X Y : C} (p : X ⟶ Y)
    [∀ j, HasLiftingProperty (f j) p] :
    HasLiftingProperty (Limits.Sigma.map f) p where
  sq_hasLift {t b} sq := by
    have sq' (j : J) :
        CommSq (Sigma.ι _ j ≫ t) (f j) p (Sigma.ι _ j ≫ b) :=
      ⟨by simp [sq.w]⟩
    exact ⟨⟨{ l := Sigma.desc (fun j ↦ (sq' j).lift) }⟩⟩

end CategoryTheory
```
