-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMStepAttachWith.Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMStepAttachWith.Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Combinators/Monadic/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Attach
import all Init.Data.Iterators.Combinators.Monadic.Attach
public import Init.Data.Iterators.Consumers.Monadic.Collect
public import Init.Data.List.Attach
import Init.Data.Array.Lemmas
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop
import Init.Data.Iterators.Lemmas.Monadic.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMStepAttachWith.Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246

public section

namespace Std
open Std.Iterators Std.Iterators.Types

variable {α : Type w} {m : Type w → Type w'} {β : Type w} {P : β → Prop}

theorem IterM.step_attachWith [Iterator α m β] [Monad m] {it : IterM (α := α) m β} {hP} :
    (it.attachWith P hP).step =
      (fun s => .deflate ⟨Attach.Monadic.modifyStep (it.attachWith P hP) s.inflate, s.inflate, rfl⟩) <$> it.step :=
  rfl

@[simp]
theorem IterM.map_unattach_toList_attachWith [Iterator α m β] [Monad m]
    {it : IterM (α := α) m β} {hP}
    [Finite α m] [LawfulMonad m] :
    List.unattach <$> (it.attachWith P hP).toList = it.toList := by
  induction it using IterM.inductSteps with | step it ihy ihs
  rw [IterM.toList_eq_match_step, IterM.toList_eq_match_step, step_attachWith]
  simp only [bind_pure_comp, bind_map_left, map_bind]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · rename_i it' out hp
    simp only [IterM.attachWith] at ihy
    simp [Types.Attach.Monadic.modifyStep,
      ← ihy ‹_› (hP := fun out h => hP out (.indirect ⟨_, rfl, hp⟩ h))]
  · simp only [IterM.attachWith] at ihs
    simp [Types.Attach.Monadic.modifyStep, ihs ‹_›]
  · simp [Types.Attach.Monadic.modifyStep]

@[simp]
theorem IterM.map_unattach_toListRev_attachWith [Iterator α m β] [Monad m] [Monad n]
    {it : IterM (α := α) m β} {hP}
    [Finite α m] [LawfulMonad m] :
    List.unattach <$> (it.attachWith P hP).toListRev = it.toListRev := by
  rw [toListRev_eq, toListRev_eq, ← map_unattach_toList_attachWith (it := it) (hP := hP)]
  simp [-map_unattach_toList_attachWith]

@[simp]
theorem IterM.map_unattach_toArray_attachWith [Iterator α m β] [Monad m] [Monad n]
    {it : IterM (α := α) m β} {hP}
    [Finite α m]
    [LawfulMonad m] :
    (·.map Subtype.val) <$> (it.attachWith P hP).toArray = it.toArray := by
  rw [← toArray_toList, ← toArray_toList, ← map_unattach_toList_attachWith (it := it) (hP := hP)]
  simp [-map_unattach_toList_attachWith, -IterM.toArray_toList]

@[simp]
theorem IterM.length_attachWith [Iterator α m β] [Monad m] [Monad n]
    {it : IterM (α := α) m β} {hP}
    [Finite α m] [IteratorLoop α m m] [LawfulMonad m] [LawfulIteratorLoop α m m] :
    (it.attachWith P hP).length = it.length := by
  rw [← up_length_toList_eq_length, ← up_length_toList_eq_length,
    ← map_unattach_toList_attachWith (it := it) (P := P) (hP := hP)]
  simp only [Functor.map_map, List.length_unattach]

set_option linter.defProp false in
@[deprecated IterM.length_attachWith (since := "2026-01-28")]
def IterM.count_attachWith := @IterM.length_attachWith

end Std
