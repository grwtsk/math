-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForInStepBindListConsPrime.Variantbb64f141ecf9d378130442270fe52d09be17f64908fc9dcf84b857b2a87bd010","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb64f141ecf9d378130442270fe52d09be17f64908fc9dcf84b857b2a87bd010","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ForInStepBindListConsPrime.Variantbb64f141ecf9d378130442270fe52d09be17f64908fc9dcf84b857b2a87bd010","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bb64f141ecf9d378130442270fe52d09be17f64908fc9dcf84b857b2a87bd010","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Control/ForInStep/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Control.ForInStep.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForInStepBindListConsPrime.Variantbb64f141ecf9d378130442270fe52d09be17f64908fc9dcf84b857b2a87bd010

@[expose] public section

/-! # Additional theorems on `ForInStep` -/

@[simp] theorem ForInStep.bind_done [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.done a).bind (m := m) f = pure (.done a) := rfl
@[simp] theorem ForInStep.bind_yield [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.yield a).bind (m := m) f = f a := rfl

attribute [simp] ForInStep.bindM

@[simp] theorem ForInStep.run_done : (ForInStep.done a).run = a := rfl
@[simp] theorem ForInStep.run_yield : (ForInStep.yield a).run = a := rfl

@[simp] theorem ForInStep.bindList_nil [Monad m] (f : α → β → m (ForInStep β))
    (s : ForInStep β) : s.bindList f [] = pure s := rfl

@[simp] theorem ForInStep.bindList_cons [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind fun b => f a b >>= (·.bindList f l) := rfl

@[simp] theorem ForInStep.done_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (a l) :
    (ForInStep.done a).bindList f l = pure (.done a) := by cases l <;> simp

@[simp] theorem ForInStep.bind_yield_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    (s.bind fun a => (yield a).bindList f l) = s.bindList f l := by cases s <;> simp

@[simp] theorem ForInStep.bind_bindList_assoc [Monad m] [LawfulMonad m]
    (f : β → m (ForInStep β)) (g : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    s.bind f >>= (·.bindList g l) = s.bind fun b => f b >>= (·.bindList g l)  := by
  cases s <;> simp

theorem ForInStep.bindList_cons' [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind (f a) >>= (·.bindList f l) := by simp

@[simp] theorem ForInStep.bindList_append [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l₁ l₂) :
    s.bindList f (l₁ ++ l₂) = s.bindList f l₁ >>= (·.bindList f l₂) := by
  induction l₁ generalizing s <;> simp [*]
