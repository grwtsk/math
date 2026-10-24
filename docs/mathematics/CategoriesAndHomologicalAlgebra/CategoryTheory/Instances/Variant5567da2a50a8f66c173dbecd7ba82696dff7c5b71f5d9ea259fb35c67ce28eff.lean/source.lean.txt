-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fintype.Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Fintype.Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/EquivFunctor/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Data.Fintype.Basic
import Mathlib.Control.EquivFunctor


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fintype.Variante4593cadbbcd275b4ceb2b5a4c7baba5a636dded178f65859cbbfa7dfe4812be

#align_import control.equiv_functor.instances from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# `EquivFunctor` instances

We derive some `EquivFunctor` instances, to enable `equiv_rw` to rewrite under these functions.
-/


open Equiv

instance EquivFunctorUnique : EquivFunctor Unique where
  map e := Equiv.uniqueCongr e
  map_refl' α := by simp
  map_trans' := by simp
#align equiv_functor_unique EquivFunctorUnique

instance EquivFunctorPerm : EquivFunctor Perm where
  map e p := (e.symm.trans p).trans e
  map_refl' α := by ext; simp
  map_trans' _ _ := by ext; simp
#align equiv_functor_perm EquivFunctorPerm

-- There is a classical instance of `LawfulFunctor Finset` available,
-- but we provide this computable alternative separately.
instance EquivFunctorFinset : EquivFunctor Finset where
  map e s := s.map e.toEmbedding
  map_refl' α := by ext; simp
  map_trans' k h := by
    ext _ a; simp; constructor <;> intro h'
    · let ⟨a, ha₁, ha₂⟩ := h'
      rw [← ha₂]; simp; apply ha₁
    · exists (Equiv.symm k) ((Equiv.symm h) a)
      simp [h']
#align equiv_functor_finset EquivFunctorFinset

instance EquivFunctorFintype : EquivFunctor Fintype where
  map e s := Fintype.ofBijective e e.bijective
  map_refl' α := by ext; simp
  map_trans' := by simp
#align equiv_functor_fintype EquivFunctorFintype
