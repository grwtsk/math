-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMStepEmpty.Variant0ba71a218f445a7bfdfcd58f2f4e1806f877d596d6a606aaa298f2c1d8eae020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ba71a218f445a7bfdfcd58f2f4e1806f877d596d6a606aaa298f2c1d8eae020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMStepEmpty.Variant0ba71a218f445a7bfdfcd58f2f4e1806f877d596d6a606aaa298f2c1d8eae020","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0ba71a218f445a7bfdfcd58f2f4e1806f877d596d6a606aaa298f2c1d8eae020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Monadic/Empty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Empty
public import Init.Data.Iterators.Lemmas.Consumers.Monadic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMStepEmpty.Variant0ba71a218f445a7bfdfcd58f2f4e1806f877d596d6a606aaa298f2c1d8eae020

@[expose] public section

namespace Std

@[simp]
theorem IterM.step_empty {m β} [Monad m] :
    (IterM.empty m β).step = pure (.deflate ⟨.done, rfl⟩) :=
  rfl

@[simp]
theorem IterM.toList_empty {m β} [Monad m] [LawfulMonad m] :
    (IterM.empty m β).toList = pure [] := by
  rw [toList_eq_match_step]
  simp

@[simp]
theorem IterM.toListRev_empty {m β} [Monad m] [LawfulMonad m] :
    (IterM.empty m β).toListRev = pure [] := by
  rw [toListRev_eq_match_step]
  simp

@[simp]
theorem IterM.toArray_empty {m β} [Monad m] [LawfulMonad m] :
    (IterM.empty m β).toArray = pure #[] := by
  rw [toArray_eq_match_step]
  simp

@[simp]
theorem IterM.forIn_empty {m n β γ} [Monad m] [LawfulMonad m]
    [Monad n] [LawfulMonad n] [MonadLiftT m n] [LawfulMonadLiftT m n]
    {init : γ} {f} :
    ForIn.forIn (m := n) (IterM.empty m β) init f = pure init := by
  rw [IterM.forIn_eq_match_step]
  simp

@[simp]
theorem IterM.foldM_empty {m n β γ} [Monad m] [LawfulMonad m]
    [Monad n] [LawfulMonad n] [MonadLiftT m n] [LawfulMonadLiftT m n]
    {init : γ} {f} :
    (IterM.empty m β).foldM (n := n) (init := init) f = pure init := by
  simp [IterM.foldM_eq_forIn]

@[simp]
theorem IterM.fold_empty {m β γ} [Monad m] [LawfulMonad m]
    {init : γ} {f} :
    (IterM.empty m β).fold (init := init) f = pure init := by
  simp [IterM.fold_eq_foldM]

@[simp]
theorem IterM.drain_empty {m β} [Monad m] [LawfulMonad m] :
    (IterM.empty m β).drain = pure .unit := by
  simp [IterM.drain_eq_fold]

end Std
