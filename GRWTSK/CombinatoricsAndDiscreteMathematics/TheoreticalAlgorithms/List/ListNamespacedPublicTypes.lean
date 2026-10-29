-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypesListIteratorStepAsHetTIterM.Variant219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TypesListIteratorStepAsHetTIterM.Variant219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Monadic/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Producers.Monadic.List
public import Std.Data.Iterators.Lemmas.Equivalence.Basic



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypesListIteratorStepAsHetTIterM.Variant219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6

namespace Std
open Std.Internal Std.Iterators Std.Iterators.Types

variable {m : Type w → Type w'} {n : Type w → Type w''} [Monad m] {β : Type w}

-- We don't want to pollute `List` with this rarely used lemma.
public theorem Types.ListIterator.stepAsHetT_iterM [LawfulMonad m] {l : List β} :
    (l.iterM m).stepAsHetT = (match l with
      | [] => pure .done
      | x :: xs => pure (.yield (xs.iterM m) x)) := by
  simp only [List.iterM, HetT.ext_iff, Equivalence.property_step, IterM.IsPlausibleStep,
    Equivalence.prun_step,
    -- TODO: get rid of these
    Iterator.IsPlausibleStep, ListIterator.instIterator]
  refine ⟨?_, ?_⟩
  · ext step
    cases step
    · cases l
      · simp [Pure.pure]
      · simp only [List.cons.injEq, pure, HetT.property_pure, IterStep.yield.injEq, IterM.ext_iff,
        ListIterator.ext_iff]
        exact And.comm
    · cases l <;> simp [Pure.pure]
    · cases l <;> simp [Pure.pure]
  · intro β f
    simp only [IterM.step, Iterator.step, pure_bind]
    cases l <;> simp [Pure.pure]

end Std
