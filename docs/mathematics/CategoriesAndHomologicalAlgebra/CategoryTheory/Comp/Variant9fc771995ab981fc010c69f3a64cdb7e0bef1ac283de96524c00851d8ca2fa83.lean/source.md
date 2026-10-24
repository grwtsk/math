# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4284db6872071bc5e9e05f35980d8b1c89c2d86c` · SHA-256 `03673671159e4b5ee5e7fd66a648eee5f3fa5cd26e91ce32f100f2b31dfc31b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiFamilyStructCompOfEffectiveEpiSplitEpiPrime.Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EffectiveEpiFamilyStructCompOfEffectiveEpiSplitEpiPrime.Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/EffectiveEpi/Comp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Basic
/-!

# Composition of effective epimorphisms

This file provides `EffectiveEpi` instances for certain compositions.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiFamilyStructCompOfEffectiveEpiSplitEpiPrime.Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184

namespace CategoryTheory

open Limits Category

variable {C : Type*} [Category C]

/--
An effective epi family precomposed by a family of split epis is effective epimorphic.
This version takes an explicit section to the split epis, and is mainly used to define
`effectiveEpiStructCompOfEffectiveEpiSplitEpi`,
which takes a `IsSplitEpi` instance instead.
-/
noncomputable
def effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi' {α : Type*} {B : C} {X Y : α → C}
    (f : (a : α) → X a ⟶ B) (g : (a : α) → Y a ⟶ X a) (i : (a : α) → X a ⟶ Y a)
    (hi : ∀ a, i a ≫ g a = 𝟙 _) [EffectiveEpiFamily _ f] :
    EffectiveEpiFamilyStruct _ (fun a ↦ g a ≫ f a) where
  desc e w := EffectiveEpiFamily.desc _ f (fun a ↦ i a ≫ e a) fun a₁ a₂ g₁ g₂ _ ↦ (by
    simp only [← Category.assoc]
    apply w _ _ (g₁ ≫ i a₁) (g₂ ≫ i a₂)
    simp only [Category.assoc, hi]
    simp only [← Category.assoc, hi]
    simpa)
  fac e w a := by
    simp only [Category.assoc, EffectiveEpiFamily.fac]
    rw [← Category.id_comp (e a), ← Category.assoc, ← Category.assoc]
    apply w
    simp only [Category.comp_id, Category.id_comp, ← Category.assoc]
    aesop
  uniq _ _ _ hm := by
    apply EffectiveEpiFamily.uniq _ f
    intro a
    rw [← hm a, ← Category.assoc, ← Category.assoc, hi, Category.id_comp]

/--
An effective epi family precomposed with a family of split epis is effective epimorphic.
-/
noncomputable
def effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi {α : Type*} {B : C} {X Y : α → C}
    (f : (a : α) → X a ⟶ B) (g : (a : α) → Y a ⟶ X a) [∀ a, IsSplitEpi (g a)]
    [EffectiveEpiFamily _ f] : EffectiveEpiFamilyStruct _ (fun a ↦ g a ≫ f a) :=
  effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi' f g
    (fun a ↦ section_ (g a))
    (fun a ↦ IsSplitEpi.id (g a))

instance {α : Type*} {B : C} {X Y : α → C}
    (f : (a : α) → X a ⟶ B) (g : (a : α) → Y a ⟶ X a) [∀ a, IsSplitEpi (g a)]
    [EffectiveEpiFamily _ f] : EffectiveEpiFamily _ (fun a ↦ g a ≫ f a) :=
  ⟨⟨effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi f g⟩⟩

example {B X Y : C} (f : X ⟶ B) (g : Y ⟶ X) [IsSplitEpi g] [EffectiveEpi f] :
    EffectiveEpi (g ≫ f) := inferInstance

instance IsSplitEpi.EffectiveEpi {B X : C} (f : X ⟶ B) [IsSplitEpi f] : EffectiveEpi f := by
  rw [← Category.comp_id f]
  infer_instance

/--
If a family of morphisms with fixed target, precomposed by a family of epis is
effective epimorphic, then the original family is as well.
-/
noncomputable def effectiveEpiFamilyStructOfComp {C : Type*} [Category C]
    {I : Type*} {Z Y : I → C} {X : C} (g : ∀ i, Z i ⟶ Y i) (f : ∀ i, Y i ⟶ X)
    [EffectiveEpiFamily _ (fun i => g i ≫ f i)] [∀ i, Epi (g i)] :
    EffectiveEpiFamilyStruct _ f where
  desc {W} φ h := EffectiveEpiFamily.desc _ (fun i => g i ≫ f i)
    (fun i => g i ≫ φ i) (fun {T} i₁ i₂ g₁ g₂ eq =>
      by simpa [assoc] using h i₁ i₂ (g₁ ≫ g i₁) (g₂ ≫ g i₂) (by simpa [assoc] using eq))
  fac {W} φ h i := by
    dsimp
    rw [← cancel_epi (g i), ← assoc, EffectiveEpiFamily.fac _ (fun i => g i ≫ f i)]
  uniq {W} φ _ m hm := EffectiveEpiFamily.uniq _ (fun i => g i ≫ f i) _ _ _
    (fun i => by rw [assoc, hm])

lemma effectiveEpiFamily_of_effectiveEpi_epi_comp {α : Type*} {B : C} {X Y : α → C}
    (f : (a : α) → X a ⟶ B) (g : (a : α) → Y a ⟶ X a) [∀ a, Epi (g a)]
    [EffectiveEpiFamily _ (fun a ↦ g a ≫ f a)] : EffectiveEpiFamily _ f :=
  ⟨⟨effectiveEpiFamilyStructOfComp g f⟩⟩

lemma effectiveEpi_of_effectiveEpi_epi_comp {B X Y : C} (f : X ⟶ B) (g : Y ⟶ X)
    [Epi g] [EffectiveEpi (g ≫ f)] : EffectiveEpi f :=
  have := (effectiveEpi_iff_effectiveEpiFamily (g ≫ f)).mp inferInstance
  have := effectiveEpiFamily_of_effectiveEpi_epi_comp
    (X := fun () ↦ X) (Y := fun () ↦ Y) (fun () ↦ f) (fun () ↦ g)
  inferInstance

section CompIso

variable {B B' : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
  (i : B ⟶ B')

theorem effectiveEpiFamilyStructCompIso_aux
    {W : C} (e : (a : α) → X a ⟶ W)
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π a₁ ≫ i = g₂ ≫ π a₂ ≫ i → g₁ ≫ e a₁ = g₂ ≫ e a₂)
    {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂) (hg : g₁ ≫ π a₁ = g₂ ≫ π a₂) :
    g₁ ≫ e a₁ = g₂ ≫ e a₂ := by
  apply h
  rw [← Category.assoc, hg]
  simp

variable [EffectiveEpiFamily X π] [IsIso i]

/-- An effective epi family followed by an iso is an effective epi family. -/
noncomputable
def effectiveEpiFamilyStructCompIso : EffectiveEpiFamilyStruct X (fun a ↦ π a ≫ i) where
  desc e h := inv i ≫ EffectiveEpiFamily.desc X π e (effectiveEpiFamilyStructCompIso_aux X π i e h)
  fac _ _ _ := by simp
  uniq e h m hm := by
    simp only [Category.assoc] at hm
    simp [← EffectiveEpiFamily.uniq X π e
      (effectiveEpiFamilyStructCompIso_aux X π i e h) (i ≫ m) hm]

instance : EffectiveEpiFamily X (fun a ↦ π a ≫ i) := ⟨⟨effectiveEpiFamilyStructCompIso X π i⟩⟩

end CompIso

section IsoComp

variable {B : C} {α : Type*} (X Y : α → C) (π : (a : α) → (X a ⟶ B)) [EffectiveEpiFamily X π]
  (i : (a : α) → Y a ⟶ X a) [∀ a, IsIso (i a)]

example : EffectiveEpiFamily Y (fun a ↦ i a ≫ π a) :=
  inferInstance

end IsoComp

end CategoryTheory
```
