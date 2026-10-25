# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zip.Variant50fba425feb52f1cd059b140c12df7845364f165cc9fd2f8637f0365bf16cc6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69794313392e13b047e72d3a8fec77669b66f2f` · SHA-256 `420498b9c1efd12e443b2c65ee87cee204b83aa8c081706400a80e7a814542d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMIntermediateZip.Variant98aaf4cb7a4e4b17414b9283eca122125d07e97e077c1ca83d7cc50b4f411f40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98aaf4cb7a4e4b17414b9283eca122125d07e97e077c1ca83d7cc50b4f411f40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMIntermediateZip.Variant98aaf4cb7a4e4b17414b9283eca122125d07e97e077c1ca83d7cc50b4f411f40","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"98aaf4cb7a4e4b17414b9283eca122125d07e97e077c1ca83d7cc50b4f411f40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Combinators/Monadic/Zip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Zip
public import Init.Data.Iterators.Lemmas.Consumers.Monadic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMIntermediateZip.Variant98aaf4cb7a4e4b17414b9283eca122125d07e97e077c1ca83d7cc50b4f411f40

@[expose] public section

namespace Std
open Std.Iterators Std.Iterators.Types

variable {α₁ α₂ β₁ β₂ : Type w} {m : Type w → Type w'}

/--
Constructs intermediate states of an iterator created with the combinator `IterM.zip`.
When `left.zip right` has already obtained a value from `left` but not yet from right,
it remembers `left`'s value in a field of its internal state. This intermediate state
cannot be created directly with `IterM.zip`.

`Intermediate.zip` is meant to be used only for verification purposes.
-/
@[implicit_reducible]
noncomputable def IterM.Intermediate.zip [Iterator α₁ m β₁] (it₁ : IterM (α := α₁) m β₁)
    (memo : (Option { out : β₁ //
        ∃ it : IterM (α := α₁) m β₁, it.IsPlausibleOutput out }))
    (it₂ : IterM (α := α₂) m β₂) :
    IterM (α := Zip α₁ m α₂ β₂) m (β₁ × β₂) :=
  ⟨⟨it₁, memo, it₂⟩⟩

theorem IterM.zip_eq_intermediateZip [Iterator α₁ m β₁]
    (it₁ : IterM (α := α₁) m β₁) (it₂ : IterM (α := α₂) m β₂) :
    it₁.zip it₂ = Intermediate.zip it₁ none it₂ := rfl

theorem IterM.step_intermediateZip [Monad m] [Iterator α₁ m β₁] [Iterator α₂ m β₂]
    {it₁ : IterM (α := α₁) m β₁}
    {memo : Option { out : β₁ //
        ∃ it : IterM (α := α₁) m β₁, it.IsPlausibleOutput out }}
    {it₂ : IterM (α := α₂) m β₂} :
    (Intermediate.zip it₁ memo it₂).step = (
      match memo with
      | none => do
        match (← it₁.step).inflate with
        | .yield it₁' out hp =>
          pure <| .deflate <| .skip (Intermediate.zip it₁' (some ⟨out, _, _, hp⟩) it₂)
            (.yieldLeft rfl hp)
        | .skip it₁' hp =>
          pure <| .deflate <| .skip (Intermediate.zip it₁' none it₂)
            (.skipLeft rfl hp)
        | .done hp =>
          pure <| .deflate <| .done (.doneLeft rfl hp)
      | some out₁ => do
        match (← it₂.step).inflate with
        | .yield it₂' out₂ hp =>
          pure <| .deflate <| .yield (Intermediate.zip it₁ none it₂') (out₁, out₂)
            (.yieldRight rfl hp)
        | .skip it₂' hp =>
          pure <| .deflate <| .skip (Intermediate.zip it₁ (some out₁) it₂')
            (.skipRight rfl hp)
        | .done hp =>
          pure <| .deflate <| .done (.doneRight rfl hp)) := by
  simp only [Intermediate.zip, step, Iterator.step]
  split
  · apply bind_congr
    intro step
    cases step.inflate using PlausibleIterStep.casesOn <;> rfl
  · rename_i heq
    cases heq
    apply bind_congr
    intro step
    cases step.inflate using PlausibleIterStep.casesOn <;> rfl

theorem IterM.step_zip [Monad m] [Iterator α₁ m β₁] [Iterator α₂ m β₂]
    {it₁ : IterM (α := α₁) m β₁}
    {it₂ : IterM (α := α₂) m β₂} :
    (it₁.zip it₂).step = (do
      match (← it₁.step).inflate with
      | .yield it₁' out hp =>
        pure <| .deflate <| .skip (Intermediate.zip it₁' (some ⟨out, _, _, hp⟩) it₂)
          (.yieldLeft rfl hp)
      | .skip it₁' hp =>
        pure <| .deflate <| .skip (Intermediate.zip it₁' none it₂)
          (.skipLeft rfl hp)
      | .done hp =>
        pure <| .deflate <| .done (.doneLeft rfl hp)) := by
  simp [zip_eq_intermediateZip, step_intermediateZip]

end Std
```
