# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DropWhile.Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd5d316f2ee30f886e73b139de14674181443e42` · SHA-256 `5d7ada5fc05d46ed2071eb8ebf8d4d7721b2f785c8b2d7c81bd6f80a83337491`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMIntermediateDropWhileMEqDropWhileWithPostcondition.Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMIntermediateDropWhileMEqDropWhileWithPostcondition.Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Combinators/Monadic/DropWhile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.DropWhile
public import Init.Data.Iterators.Lemmas.Consumers.Monadic
import Init.Data.Bool


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMIntermediateDropWhileMEqDropWhileWithPostcondition.Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc

@[expose] public section

namespace Std
open Std.Iterators

theorem IterM.Intermediate.dropWhileM_eq_dropWhileWithPostcondition {α m β} [Monad m] [MonadAttach m]
    [Iterator α m β] {it : IterM (α := α) m β} {P dropping} :
    Intermediate.dropWhileM P dropping it =
      Intermediate.dropWhileWithPostcondition (PostconditionT.attachLift ∘ P) dropping it :=
  rfl

theorem IterM.Intermediate.dropWhile_eq_dropWhileWithPostcondition {α m β} [Monad m]
    [Iterator α m β] {it : IterM (α := α) m β} {P dropping} :
    Intermediate.dropWhile P dropping it =
      Intermediate.dropWhileWithPostcondition (pure ∘ ULift.up ∘ P) dropping it :=
  rfl

theorem IterM.dropWhileWithPostcondition_eq_intermediateDropWhileWithPostcondition {α m β}
    [Iterator α m β] {it : IterM (α := α) m β} {P} :
    it.dropWhileWithPostcondition P = Intermediate.dropWhileWithPostcondition P true it :=
  rfl

theorem IterM.dropWhileM_eq_intermediateDropWhileM {α m β} [Monad m] [MonadAttach m]
    [Iterator α m β] {it : IterM (α := α) m β} {P} :
    it.dropWhileM P = Intermediate.dropWhileM P true it :=
  rfl

theorem IterM.dropWhile_eq_intermediateDropWhile {α m β} [Monad m]
    [Iterator α m β] {it : IterM (α := α) m β} {P} :
    it.dropWhile P = Intermediate.dropWhile P true it :=
  rfl

theorem IterM.step_intermediateDropWhileWithPostcondition {α m β} [Monad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} {dropping} :
    (IterM.Intermediate.dropWhileWithPostcondition P dropping it).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      if h' : dropping = true then
        match ← (P out).operation with
        | ⟨.up true, h''⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.dropped h h' h'')
        | ⟨.up false, h''⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out (.start h h' h'')
      else
        return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out
            (.yield h (Bool.not_eq_true _ ▸ h'))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P dropping it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp only [step, Iterator.step, Intermediate.dropWhileWithPostcondition]
  apply bind_congr
  intro step
  simp
  cases h : step.inflate using PlausibleIterStep.casesOn <;> rfl

theorem IterM.step_dropWhileWithPostcondition {α m β} [Monad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.dropWhileWithPostcondition P).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
        match ← (P out).operation with
        | ⟨.up true, h''⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.dropped h rfl h'')
        | ⟨.up false, h''⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out (.start h rfl h'')
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp [dropWhileWithPostcondition_eq_intermediateDropWhileWithPostcondition, step_intermediateDropWhileWithPostcondition]

theorem IterM.step_intermediateDropWhileM {α m β} [Monad m] [MonadAttach m] [LawfulMonad m]
    [Iterator α m β] {it : IterM (α := α) m β} {P} {dropping} :
    (IterM.Intermediate.dropWhileM P dropping it).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      if h' : dropping = true then
        match ← MonadAttach.attach (P out) with
        | ⟨.up true, hP⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileM P true it') (.dropped h h' hP)
        | ⟨.up false, hP⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileM P false it') out (.start h h' hP)
      else
        return .deflate <| .yield (IterM.Intermediate.dropWhileM P false it') out
            (.yield h (Bool.not_eq_true _ ▸ h'))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileM P dropping it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp only [Intermediate.dropWhileM_eq_dropWhileWithPostcondition, step_intermediateDropWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PostconditionT.operation_attachLift, PlausibleIterStep.skip,
    PlausibleIterStep.yield]
    split
    · apply bind_congr
      rintro ⟨⟨x⟩, hx⟩
      cases x <;> rfl
    · rfl
  · rfl
  · rfl

theorem IterM.step_dropWhileM {α m β} [Monad m] [MonadAttach m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.dropWhileM P).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      match ← MonadAttach.attach (P out) with
      | ⟨.up true, hP⟩ =>
        return .deflate <| .skip (IterM.Intermediate.dropWhileM P true it') (.dropped h rfl (by simpa))
      | ⟨.up false, hP⟩ =>
        return .deflate <| .yield (IterM.Intermediate.dropWhileM P false it') out (.start h rfl (by simpa))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileM P true it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp [dropWhileM_eq_intermediateDropWhileM, step_intermediateDropWhileM]

theorem IterM.step_intermediateDropWhile {α m β} [Monad m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} {dropping} :
    (IterM.Intermediate.dropWhile P dropping it).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      if h' : dropping = true then
        match hP : P out with
        | true =>
          return .deflate <| .skip (IterM.Intermediate.dropWhile P true it') (.dropped h h' (by simpa))
        | false =>
          return .deflate <| .yield (IterM.Intermediate.dropWhile P false it') out (.start h h' (by simpa))
      else
        return .deflate <| .yield (IterM.Intermediate.dropWhile P false it') out
            (.yield h (Bool.not_eq_true _ ▸ h'))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhile P dropping it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp only [Intermediate.dropWhile_eq_dropWhileWithPostcondition, step_intermediateDropWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PlausibleIterStep.skip,
    PlausibleIterStep.yield]
    split
    · simp only [PostconditionT.operation_pure, pure_bind]
      split <;> split <;> simp_all
    · rfl
  · rfl
  · rfl

theorem IterM.step_dropWhile {α m β} [Monad m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.dropWhile P).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
        match hP : P out with
        | true =>
          return .deflate <| .skip (IterM.Intermediate.dropWhile P true it') (.dropped h rfl (by simpa))
        | false =>
          return .deflate <| .yield (IterM.Intermediate.dropWhile P false it') out (.start h rfl (by simpa))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhile P true it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp [dropWhile_eq_intermediateDropWhile, step_intermediateDropWhile]

end Std
```
