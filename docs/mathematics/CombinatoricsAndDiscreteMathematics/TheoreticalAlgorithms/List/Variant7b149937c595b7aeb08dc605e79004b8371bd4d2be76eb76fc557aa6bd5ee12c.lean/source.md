# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant7b149937c595b7aeb08dc605e79004b8371bd4d2be76eb76fc557aa6bd5ee12c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d05c0a0a397633e00a1d8024069c57de383eddc` · SHA-256 `331a069ba935f757c426fb040299f00a06a60d8cd68df165221b174b21e29ddc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListStepIterMNil.Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListStepIterMNil.Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08","mathematical_subject":"Computation.DataStructures","original_sha256":"bd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Producers/Monadic/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Producers.Monadic.List
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.List.ToArray


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListStepIterMNil.Variantbd74a54fc9a45f071adbf40ee3033b5488c15fa22058a9a396977279595c6b08

@[expose] public section

/-!
# Lemmas about list iterators

This module provides lemmas about the interactions of `List.iterM` with `IterM.step` and various
collectors.
-/

open Std Std.Internal Std.Iterators Std.Iterators.Types

variable {m : Type w → Type w'} {n : Type w → Type w''} [Monad m] {β : Type w}

@[simp]
theorem List.step_iterM_nil :
    (([] : List β).iterM m).step = pure (.deflate ⟨.done, rfl⟩) := by
  simp only [IterM.step, Iterator.step]; rfl

@[simp]
theorem List.step_iterM_cons {x : β} {xs : List β} :
    ((x :: xs).iterM m).step = pure (.deflate ⟨.yield (xs.iterM m) x, rfl⟩) := by
  simp only [List.iterM, IterM.step, Iterator.step]

theorem List.step_iterM {l : List β} :
    (l.iterM m).step = match l with
      | [] => pure (.deflate ⟨.done, rfl⟩)
      | x :: xs => pure (.deflate ⟨.yield (xs.iterM m) x, rfl⟩) := by
  cases l <;> simp [List.step_iterM_cons, List.step_iterM_nil]

@[simp, grind =]
theorem List.toArray_iterM [LawfulMonad m] {β : Type w} {l : List β} :
  (l.iterM m).toArray = pure l.toArray := by
  induction l with
  | nil =>
    rw [IterM.toArray_eq_match_step]
    simp [List.step_iterM_nil]
  | cons x xs ih =>
    rw [IterM.toArray_eq_match_step]
    simp [List.step_iterM_cons, pure_bind, ih]

@[simp, grind =]
theorem List.toList_iterM [LawfulMonad m] {l : List β} :
    (l.iterM m).toList = pure l := by
  rw [← IterM.toList_toArray, List.toArray_iterM, map_pure, List.toList_toArray]

@[simp, grind =]
theorem List.toListRev_iterM [LawfulMonad m] {l : List β} :
    (l.iterM m).toListRev = pure l.reverse := by
  simp [IterM.toListRev_eq, List.toList_iterM]
```
