# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant01de6c85404f70fdfe4eb7858e99d86b469532862252e6727ea7d378c8ef6b05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbdf04d4ea3df75fac7f03a764536de5bc8cfae2` · SHA-256 `fff8f4eed65f3738588d85cb52e7ef92ba7a8f0f188caa4786fa51a4dd6bfa37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterInductSteps.Variant592a8e668960c082537b8fbed45e44ffd4103d1d796950413397b1b2964ee8e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"592a8e668960c082537b8fbed45e44ffd4103d1d796950413397b1b2964ee8e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterInductSteps.Variant592a8e668960c082537b8fbed45e44ffd4103d1d796950413397b1b2964ee8e2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"592a8e668960c082537b8fbed45e44ffd4103d1d796950413397b1b2964ee8e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterInductSteps.Variant592a8e668960c082537b8fbed45e44ffd4103d1d796950413397b1b2964ee8e2

public section

namespace Std
open Std.Iterators

/--
Induction principle for finite iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible successors of `it'.
-/
@[specialize]
def Iter.inductSteps {α β} [Iterator α Id β] [Finite α Id]
  (motive : Iter (α := α) β → Sort x)
  (step : (it : Iter (α := α) β) →
    (ih_yield : ∀ {it' : Iter (α := α) β} {out : β},
      it.IsPlausibleStep (.yield it' out) → motive it') →
    (ih_skip : ∀ {it' : Iter (α := α) β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : Iter (α := α) β) : motive it :=
  step it
    (fun {it' _} _ => inductSteps motive step it')
    (fun {it'} _ => inductSteps motive step it')
termination_by it.finitelyManySteps

/--
Induction principle for productive iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible skip successors of `it'.
-/
@[specialize]
def Iter.inductSkips {α β} [Iterator α Id β] [Productive α Id]
  (motive : Iter (α := α) β → Sort x)
  (step : (it : Iter (α := α) β) →
    (ih_skip : ∀ {it' : Iter (α := α) β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : Iter (α := α) β) : motive it :=
  step it (fun {it'} _ => inductSkips motive step it')
termination_by it.finitelyManySkips

end Std
```
