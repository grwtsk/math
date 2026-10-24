# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant4db7f4fade9bdf1369cad4506b6c9e8ae2bba8349075ba648f5a499c806e6a82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f00fb39e4242618b4f475dea7754453aaa16efb` · SHA-256 `3ee2507f33baea2f3d23a67d2c33c7dac8972f00df65012b900566d990e580ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LocallyInjective.Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Concrete
import Mathlib.CategoryTheory.Sites.LocallyBijective

/-!
# Morphisms of sheaves factor as a locally surjective followed by a locally injective morphism

When morphisms in a concrete category `A` factor in a functorial manner as a surjective map
followed by an injective map, we obtain that any morphism of sheaves in `Sheaf J A`
factors in a functorial manner as a locally surjective morphism (which is epi) followed by
a locally injective morphism (which is mono).

Moreover, if we assume that the category of sheaves `Sheaf J A` is balanced
(see `Sites.LeftExact`), then epimorphisms are exactly locally surjective morphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyInjective.Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c

universe w v' u' v u

namespace CategoryTheory

open Category ConcreteCategory

variable {C : Type u} [Category.{v} C] (J : GrothendieckTopology C)
  (A : Type u') [Category.{v'} A] {FA : A → A → Type*} {CA : A → Type w}
  [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{w} A FA]
  [HasFunctorialSurjectiveInjectiveFactorization A]
  [J.WEqualsLocallyBijective A]

namespace Sheaf

/-- The class of locally injective morphisms of sheaves, see `Sheaf.IsLocallyInjective`. -/
def locallyInjective : MorphismProperty (Sheaf J A) :=
  fun _ _  f => IsLocallyInjective f

/-- The class of locally surjective morphisms of sheaves, see `Sheaf.IsLocallySurjective`. -/
def locallySurjective : MorphismProperty (Sheaf J A) :=
  fun _ _  f => IsLocallySurjective f

section

variable {A}
variable (data : FunctorialSurjectiveInjectiveFactorizationData A) [HasWeakSheafify J A]

/-- Given a functorial surjective/injective factorizations of morphisms in a concrete
category `A`, this is the induced functorial locally surjective/locally injective
factorization of morphisms in the category `Sheaf J A`. -/
noncomputable def functorialLocallySurjectiveInjectiveFactorization :
    (locallySurjective J A).FunctorialFactorizationData (locallyInjective J A) where
  Z := (sheafToPresheaf J A).mapArrow ⋙ (data.functorCategory Cᵒᵖ).Z ⋙ presheafToSheaf J A
  i := whiskerLeft Arrow.leftFunc (inv (sheafificationAdjunction J A).counit) ≫
        whiskerLeft (sheafToPresheaf J A).mapArrow
          (whiskerRight (data.functorCategory Cᵒᵖ).i (presheafToSheaf J A))
  p := whiskerLeft (sheafToPresheaf J A).mapArrow
        (whiskerRight (data.functorCategory Cᵒᵖ).p (presheafToSheaf J A)) ≫
          whiskerLeft Arrow.rightFunc (sheafificationAdjunction J A).counit
  fac := by
    ext f : 2
    dsimp
    simp only [assoc, ← Functor.map_comp_assoc,
      MorphismProperty.FunctorialFactorizationData.fac_app,
      NatIso.isIso_inv_app, IsIso.inv_comp_eq]
    exact (sheafificationAdjunction J A).counit.naturality f.hom
  hi _ := by
    dsimp [locallySurjective]
    rw [← isLocallySurjective_sheafToPresheaf_map_iff, Functor.map_comp,
      Presheaf.comp_isLocallySurjective_iff, isLocallySurjective_sheafToPresheaf_map_iff,
      Presheaf.isLocallySurjective_presheafToSheaf_map_iff]
    apply Presheaf.isLocallySurjective_of_surjective
    apply (data.functorCategory Cᵒᵖ).hi
  hp _ := by
    dsimp [locallyInjective]
    rw [← isLocallyInjective_sheafToPresheaf_map_iff, Functor.map_comp,
      Presheaf.isLocallyInjective_comp_iff, isLocallyInjective_sheafToPresheaf_map_iff,
      Presheaf.isLocallyInjective_presheafToSheaf_map_iff]
    apply Presheaf.isLocallyInjective_of_injective
    apply (data.functorCategory Cᵒᵖ).hp

section

variable (f : Arrow (Sheaf J A))

instance : IsLocallySurjective
            ((functorialLocallySurjectiveInjectiveFactorization J data).i.app f) := by
  apply (functorialLocallySurjectiveInjectiveFactorization J data).hi

instance : IsLocallyInjective
            ((functorialLocallySurjectiveInjectiveFactorization J data).p.app f) := by
  apply (functorialLocallySurjectiveInjectiveFactorization J data).hp

variable [J.HasSheafCompose (forget A)]

instance : Epi ((functorialLocallySurjectiveInjectiveFactorization J data).i.app f) := by
  apply epi_of_isLocallySurjective

instance : Mono ((functorialLocallySurjectiveInjectiveFactorization J data).p.app f) := by
  apply mono_of_isLocallyInjective

end

instance : (locallySurjective J A).HasFunctorialFactorization (locallyInjective J A) where
  nonempty_functorialFactorizationData :=
    ⟨functorialLocallySurjectiveInjectiveFactorization J
      (MorphismProperty.functorialFactorizationData _ _)⟩

end

section

variable {J}
variable [HasSheafify J A] [J.HasSheafCompose (forget A)] [Balanced (Sheaf J A)]
variable {F G : Sheaf J A} (φ : F ⟶ G)

lemma isLocallySurjective_iff_epi' :
    IsLocallySurjective φ ↔ Epi φ := by
  constructor
  · intro
    infer_instance
  · intro
    let data := (locallySurjective J A).factorizationData (locallyInjective J A) φ
    have : IsLocallySurjective data.i := data.hi
    have : IsLocallyInjective data.p := data.hp
    have : Epi data.p := epi_of_epi_fac data.fac
    have := mono_of_isLocallyInjective data.p
    have := isIso_of_mono_of_epi data.p
    rw [← data.fac]
    infer_instance

end

end Sheaf

end CategoryTheory
```
