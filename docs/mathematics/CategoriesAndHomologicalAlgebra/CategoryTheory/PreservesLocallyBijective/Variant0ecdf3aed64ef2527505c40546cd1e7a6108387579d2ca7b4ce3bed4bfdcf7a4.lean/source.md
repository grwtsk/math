# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLocallyBijective.Variant0ecdf3aed64ef2527505c40546cd1e7a6108387579d2ca7b4ce3bed4bfdcf7a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a449ce59f3c0fd4d1be58b2d121754e336e4a08` · SHA-256 `880eeb2658cd8f587a7552ada15cfb6a3c5dc200d8688619a1bd74710a51d5c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallyInjectiveWhisker.Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLocallyInjectiveWhisker.Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/PreservesLocallyBijective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.DenseSubsite.Basic
public import Mathlib.CategoryTheory.Sites.LocallySurjective
/-!

# Preserving and reflecting local injectivity and surjectivity

This file proves that precomposition with a cocontinuous functor preserves local injectivity and
surjectivity of morphisms of presheaves, and that precomposition with a cover-preserving and
cover-dense functor reflects the same properties.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallyInjectiveWhisker.Variant31d7c8c604d95d99c60beb000a1a109763ab6b6b8241e0cd01efcffac1ffc853

public section

open CategoryTheory Functor

variable {C D A : Type*} [Category* C] [Category* D] [Category* A]
  (J : GrothendieckTopology C) (K : GrothendieckTopology D)
  (H : C ⥤ D) {F G : Dᵒᵖ ⥤ A} (f : F ⟶ G)

namespace CategoryTheory

namespace Presheaf

variable {FA : A → A → Type*} {CA : A → Type*}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory A FA]


lemma isLocallyInjective_whisker [H.IsCocontinuous J K] [IsLocallyInjective K f] :
    IsLocallyInjective J (whiskerLeft H.op f) where
  equalizerSieve_mem x y h := H.cover_lift J K (equalizerSieve_mem K f x y h)

set_option backward.defeqAttrib.useBackward true in
lemma isLocallyInjective_of_whisker (hH : CoverPreserving J K H)
    [H.IsCoverDense K] [IsLocallyInjective J (whiskerLeft H.op f)] : IsLocallyInjective K f where
  equalizerSieve_mem {X} a b h := by
    apply K.transitive (H.is_cover_of_isCoverDense K X.unop)
    intro Y g ⟨⟨Z, lift, m, fac⟩⟩
    rw [← fac, Sieve.pullback_comp]
    apply K.pullback_stable
    refine K.superset_covering (Sieve.functorPullback_pushforward_le H _) ?_
    refine K.superset_covering (Sieve.functorPushforward_monotone H _ ?_)
      (hH.cover_preserve <| equalizerSieve_mem J (whiskerLeft H.op f)
        (F.map m.op a) (F.map m.op b) ?_)
    · intro W q hq
      simpa using hq
    · simp only [comp_obj, op_obj, whiskerLeft_app, Opposite.op_unop]
      rw [NatTrans.naturality_apply, NatTrans.naturality_apply, h]

lemma isLocallyInjective_whisker_iff (hH : CoverPreserving J K H) [H.IsCocontinuous J K]
    [H.IsCoverDense K] : IsLocallyInjective J (whiskerLeft H.op f) ↔ IsLocallyInjective K f :=
  ⟨fun _ ↦ isLocallyInjective_of_whisker J K H f hH,
    fun _ ↦ isLocallyInjective_whisker J K H f⟩

lemma isLocallySurjective_whisker [H.IsCocontinuous J K] [IsLocallySurjective K f] :
    IsLocallySurjective J (whiskerLeft H.op f) where
  imageSieve_mem a := H.cover_lift J K (imageSieve_mem K f a)

lemma isLocallySurjective_of_whisker (hH : CoverPreserving J K H)
    [H.IsCoverDense K] [IsLocallySurjective J (whiskerLeft H.op f)] : IsLocallySurjective K f where
  imageSieve_mem {X} a := by
    apply K.transitive (H.is_cover_of_isCoverDense K X)
    intro Y g ⟨⟨Z, lift, m, fac⟩⟩
    rw [← fac, Sieve.pullback_comp]
    apply K.pullback_stable
    have hh := hH.cover_preserve <| imageSieve_mem J (whiskerLeft H.op f) (G.map m.op a)
    refine K.superset_covering (Sieve.functorPullback_pushforward_le H _) ?_
    refine K.superset_covering (Sieve.functorPushforward_monotone H _ ?_) hh
    intro W q ⟨x, h⟩
    simp only [Sieve.functorPullback_apply, Presieve.functorPullback_mem, Sieve.pullback_apply]
    exact ⟨x, by simpa using! h⟩

lemma isLocallySurjective_whisker_iff (hH : CoverPreserving J K H) [H.IsCocontinuous J K]
    [H.IsCoverDense K] : IsLocallySurjective J (whiskerLeft H.op f) ↔ IsLocallySurjective K f :=
  ⟨fun _ ↦ isLocallySurjective_of_whisker J K H f hH,
    fun _ ↦ isLocallySurjective_whisker J K H f⟩

end Presheaf

end CategoryTheory
```
