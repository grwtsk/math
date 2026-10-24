-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSetFiniteOfFiniteImage.Variantd51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteSetFiniteOfFiniteImage.Variantd51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d","mathematical_subject":"Logic.Foundations","original_sha256":"d51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finite/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.EquivFin

/-!
# Lemmas about `Finite` and `Set`s

In this file we prove two lemmas about `Finite` and `Set`s.

## Tags

finiteness, finite sets
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSetFiniteOfFiniteImage.Variantd51e3ffb6f0d8426583658bc2dd134f7c357a73bff30ebade858501860f5d61d

open Set

universe u v w

variable {α : Type u} {β : Type v} {ι : Sort w}

theorem Finite.Set.finite_of_finite_image (s : Set α) {f : α → β} (h : s.InjOn f)
    [Finite (f '' s)] : Finite s :=
  Finite.of_equiv _ (Equiv.ofBijective _ h.bijOn_image.bijective).symm

theorem Finite.of_injective_finite_range {f : ι → α} (hf : Function.Injective f)
    [Finite (range f)] : Finite ι :=
  Finite.of_injective (Set.rangeFactorization f) (hf.codRestrict _)
