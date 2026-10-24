-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsPreregular.Variante4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorReflectsPreregular.Variante4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Coherent/ReflectsPreregular.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Enough
import Mathlib.CategoryTheory.EffectiveEpi.Preserves
import Mathlib.CategoryTheory.Sites.Coherent.RegularTopology
/-!

# Reflecting the property of being preregular

We prove that given a fully faithful functor `F : C ⥤ D`, with `Preregular D`, such that for every
object `X` of `D` there exists an object `W` of `C` with an effective epi `π : F.obj W ⟶ X`, the
category `C` is `Preregular`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsPreregular.Variante4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D] (F : C ⥤ D)
  [F.PreservesEffectiveEpis] [F.ReflectsEffectiveEpis]
  [F.EffectivelyEnough]
  [Preregular D] [F.Full] [F.Faithful]

include F in
lemma Functor.reflects_preregular : Preregular C where
  exists_fac f g _ := by
    obtain ⟨W, f', _, i, w⟩ := Preregular.exists_fac (F.map f) (F.map g)
    refine ⟨_, F.preimage (F.effectiveEpiOver W ≫ f'),
      ⟨F.effectiveEpi_of_map _ ?_, F.preimage (F.effectiveEpiOver W ≫ i), ?_⟩⟩
    · simp only [Functor.map_preimage]
      infer_instance
    · apply F.map_injective
      simp [w]

end CategoryTheory
