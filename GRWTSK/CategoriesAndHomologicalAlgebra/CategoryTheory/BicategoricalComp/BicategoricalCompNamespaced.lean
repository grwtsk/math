-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoricalCoherence.Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BicategoricalCoherence.Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CategoryTheory/BicategoricalComp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.CategoryTheory.Bicategory.Basic

/-!
# Bicategorical composition `⊗≫` (composition up to associators)

We provide `f ⊗≫ g`, the `bicategoricalComp` operation,
which automatically inserts associators and unitors as needed
to make the target of `f` match the source of `g`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoricalCoherence.Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553

universe w v u

open CategoryTheory Bicategory

namespace CategoryTheory

variable {B : Type u} [Bicategory.{w, v} B] {a b c d : B}

/-- A typeclass carrying a choice of bicategorical structural isomorphism between two objects.
Used by the `⊗≫` bicategorical composition operator, and the `coherence` tactic.
-/
class BicategoricalCoherence (f g : a ⟶ b) where
  /-- The chosen structural isomorphism between to 1-morphisms. -/
  iso : f ≅ g

/-- Notation for identities up to unitors and associators. -/
scoped[CategoryTheory.Bicategory] notation " ⊗𝟙 " =>
  BicategoricalCoherence.iso -- type as \ot 𝟙

/-- Construct an isomorphism between two objects in a bicategorical category
out of unitors and associators. -/
abbrev bicategoricalIso (f g : a ⟶ b) [BicategoricalCoherence f g] : f ≅ g :=
  ⊗𝟙

/-- Compose two morphisms in a bicategorical category,
inserting unitors and associators between as necessary. -/
def bicategoricalComp {f g h i : a ⟶ b} [BicategoricalCoherence g h]
    (η : f ⟶ g) (θ : h ⟶ i) : f ⟶ i :=
  η ≫ ⊗𝟙.hom ≫ θ

-- type as \ot \gg
@[inherit_doc bicategoricalComp]
scoped[CategoryTheory.Bicategory] infixr:80 " ⊗≫ " => bicategoricalComp

/-- Compose two isomorphisms in a bicategorical category,
inserting unitors and associators between as necessary. -/
def bicategoricalIsoComp {f g h i : a ⟶ b} [BicategoricalCoherence g h]
    (η : f ≅ g) (θ : h ≅ i) : f ≅ i :=
  η ≪≫ ⊗𝟙 ≪≫ θ

@[inherit_doc bicategoricalIsoComp]
scoped[CategoryTheory.Bicategory] infixr:80 " ≪⊗≫ " =>
  bicategoricalIsoComp -- type as \ll \ot \gg

namespace BicategoricalCoherence

@[simps]
instance refl (f : a ⟶ b) : BicategoricalCoherence f f :=
  ⟨Iso.refl _⟩

@[simps]
instance whiskerLeft (f : a ⟶ b) (g h : b ⟶ c)
    [BicategoricalCoherence g h] : BicategoricalCoherence (f ≫ g) (f ≫ h) :=
  ⟨whiskerLeftIso f ⊗𝟙⟩

@[simps]
instance whiskerRight (f g : a ⟶ b) (h : b ⟶ c)
    [BicategoricalCoherence f g] : BicategoricalCoherence (f ≫ h) (g ≫ h) :=
  ⟨whiskerRightIso ⊗𝟙 h⟩

@[simps]
instance tensorRight (f : a ⟶ b) (g : b ⟶ b)
    [BicategoricalCoherence (𝟙 b) g] : BicategoricalCoherence f (f ≫ g) :=
  ⟨(ρ_ f).symm ≪≫ (whiskerLeftIso f ⊗𝟙)⟩

@[simps]
instance tensorRight' (f : a ⟶ b) (g : b ⟶ b)
    [BicategoricalCoherence g (𝟙 b)] : BicategoricalCoherence (f ≫ g) f :=
  ⟨whiskerLeftIso f ⊗𝟙 ≪≫ (ρ_ f)⟩

@[simps]
instance left (f g : a ⟶ b) [BicategoricalCoherence f g] :
    BicategoricalCoherence (𝟙 a ≫ f) g :=
  ⟨λ_ f ≪≫ ⊗𝟙⟩

@[simps]
instance left' (f g : a ⟶ b) [BicategoricalCoherence f g] :
    BicategoricalCoherence f (𝟙 a ≫ g) :=
  ⟨⊗𝟙 ≪≫ (λ_ g).symm⟩

@[simps]
instance right (f g : a ⟶ b) [BicategoricalCoherence f g] :
    BicategoricalCoherence (f ≫ 𝟙 b) g :=
  ⟨ρ_ f ≪≫ ⊗𝟙⟩

@[simps]
instance right' (f g : a ⟶ b) [BicategoricalCoherence f g] :
    BicategoricalCoherence f (g ≫ 𝟙 b) :=
  ⟨⊗𝟙 ≪≫ (ρ_ g).symm⟩

@[simps]
instance assoc (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : a ⟶ d)
    [BicategoricalCoherence (f ≫ g ≫ h) i] :
    BicategoricalCoherence ((f ≫ g) ≫ h) i :=
  ⟨α_ f g h ≪≫ ⊗𝟙⟩

@[simps]
instance assoc' (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d) (i : a ⟶ d)
    [BicategoricalCoherence i (f ≫ g ≫ h)] :
    BicategoricalCoherence i ((f ≫ g) ≫ h) :=
  ⟨⊗𝟙 ≪≫ (α_ f g h).symm⟩

end BicategoricalCoherence

@[simp]
theorem bicategoricalComp_refl {f g h : a ⟶ b} (η : f ⟶ g) (θ : g ⟶ h) : η ⊗≫ θ = η ≫ θ := by
  dsimp [bicategoricalComp]; simp

end CategoryTheory
