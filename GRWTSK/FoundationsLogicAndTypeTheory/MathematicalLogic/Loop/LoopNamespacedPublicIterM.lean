-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterMEquivForInEq.Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IterMEquivForInEq.Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31","mathematical_subject":"Logic.Foundations","original_sha256":"ee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Monadic/Loop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop
public import Std.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Monadic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterMEquivForInEq.Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31

@[expose] public section

namespace Std
open Std.Iterators

theorem IterM.Equiv.forIn_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    {n : Type w → Type w''} [Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m]
    [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n]
    [IteratorLoop α₁ m n] [LawfulIteratorLoop α₁ m n]
    [IteratorLoop α₂ m n] [LawfulIteratorLoop α₂ m n]
    [MonadLiftT m n] [LawfulMonadLiftT m n] {init : γ} {f : β → γ → n (ForInStep γ)}
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ForIn.forIn (m := n) ita init f = ForIn.forIn (m := n) itb init f := by
  revert h itb init
  apply ita.inductSteps
  intro ita ihy ihs init itb h
  rw [IterM.forIn_eq_match_step, IterM.forIn_eq_match_step]
  apply h.lift_step_bind_congr
  intro sa sb hs
  simp only [IterStep.bundledQuotient, IterStep.mapIterator_comp, Function.comp_apply] at hs
  cases ha : sa.inflate using PlausibleIterStep.casesOn <;>
    cases hb : sb.inflate using PlausibleIterStep.casesOn
  all_goals try exfalso; simp_all; done
  · simp only [ha, hb, IterStep.mapIterator_yield, IterStep.yield.injEq,
      BundledIterM.Equiv.quotMk_eq_iff] at hs
    rcases hs with ⟨hs, rfl⟩
    apply bind_congr
    intro forInStep
    cases forInStep
    · rfl
    · exact ihy ‹_› hs
  · simp only [ha, hb, IterStep.mapIterator_skip, IterStep.skip.injEq,
      BundledIterM.Equiv.quotMk_eq_iff] at hs
    exact ihs ‹_› hs
  · rfl

theorem IterM.Equiv.foldM_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    {n : Type w → Type w''} [Iterator α₁ m β] [Iterator α₂ m β][Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m] [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n]
    [IteratorLoop α₁ m n] [LawfulIteratorLoop α₁ m n]
    [IteratorLoop α₂ m n] [LawfulIteratorLoop α₂ m n]
    [MonadLiftT m n] [LawfulMonadLiftT m n] {init : γ} {f : γ → β → n γ}
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.foldM (init := init) f = itb.foldM (init := init) f := by
  simp [IterM.foldM_eq_forIn, h.forIn_eq]

theorem IterM.Equiv.fold_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    [Iterator α₁ m β] [Iterator α₂ m β][Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m] [Monad m] [LawfulMonad m]
    [IteratorLoop α₁ m m] [LawfulIteratorLoop α₁ m m]
    [IteratorLoop α₂ m m] [LawfulIteratorLoop α₂ m m]
    {init : γ} {f : γ → β → γ}
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.fold (init := init) f = itb.fold (init := init) f := by
  simp [IterM.fold_eq_foldM, h.foldM_eq]

theorem IterM.Equiv.drain_eq {α₁ α₂ β : Type w} {m : Type w → Type w'}
    [Iterator α₁ m β] [Iterator α₂ m β][Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m] [Monad m] [LawfulMonad m]
    [IteratorLoop α₁ m m] [LawfulIteratorLoop α₁ m m]
    [IteratorLoop α₂ m m] [LawfulIteratorLoop α₂ m m]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ita.drain = itb.drain := by
  simp [IterM.drain_eq_fold, h.fold_eq]

end Std
