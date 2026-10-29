-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsSimpleModuleAlgebraMapEndBijectiveOfIsAlgClosed.Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsSimpleModuleAlgebraMapEndBijectiveOfIsAlgClosed.Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"da4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RepresentationTheory/AlgebraRepresentation/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stepan Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stepan Nesterov
-/
module

public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.RingTheory.SimpleModule.Basic

/-!
# Basic facts about algebra representations

This file collects basic general facts about algebra representations. The purpose of this file is
to have general results so that when we prove a corresponding fact about group representations
(or Lie algebra representations etc), we can deduce them as special cases of facts from this file.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsSimpleModuleAlgebraMapEndBijectiveOfIsAlgClosed.Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe

public section

variable {A V : Type*} (k : Type*) [Field k] [Ring A] [Algebra k A] [AddCommGroup V] [Module k V]
  [Module A V] [IsScalarTower k A V]
  [IsSimpleModule A V] [FiniteDimensional k V] [IsAlgClosed k]

/-- Schur's Lemma: If `V` is a representation of an algebra `A` over an algebraically closed field
`k`, then any endomorphism of `V` is scalar. -/
theorem IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed :
    Function.Bijective (algebraMap k (Module.End A V)) := by
  have : Module.Finite k (Module.End A V) := .of_injective (LinearMap.restrictScalarsₗ k A V V k) <|
    LinearMap.restrictScalars_injective _
  classical exact IsAlgClosed.algebraMap_bijective_of_isIntegral (k := k)

variable (A V)

open scoped IsMulCommutative in
/-- Any finite-dimensional irreducible representation of a commutative algebra over an algebraically
closed field is one-dimensional. -/
theorem IsSimpleModule.finrank_eq_one_of_isMulCommutative [IsMulCommutative A] :
    Module.finrank k V = 1 := by
  have : Nontrivial V := IsSimpleModule.nontrivial A V
  obtain ⟨v, v_nz⟩ := exists_ne (0 : V)
  set U : Submodule A V := { Submodule.span k {v} with
    smul_mem' a w hw := by
      have ⟨t, ht⟩ := (IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed k).2
        (Module.toModuleEnd A V a)
      simpa only [← show _ = a • w from congr($ht w)] using! (k ∙ v).smul_mem t hw }
  obtain hU | hU := eq_bot_or_eq_top U
  · exact (v_nz <| hU.le <| Submodule.mem_span_singleton_self v).elim
  · rw [finrank_eq_one_iff_of_nonzero v v_nz]
    rwa [← top_le_iff] at hU ⊢
