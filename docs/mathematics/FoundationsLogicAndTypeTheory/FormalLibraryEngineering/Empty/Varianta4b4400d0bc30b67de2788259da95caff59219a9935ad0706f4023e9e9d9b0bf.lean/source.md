# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Varianta4b4400d0bc30b67de2788259da95caff59219a9935ad0706f4023e9e9d9b0bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6903cc071f3d671d409fa35ef5355d8393ffd04` · SHA-256 `efb80758d68b3b8e720632e30e74fe5d7bff133cbe418ed994ed616136f0a2c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesEmpty.Variant245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IteratorsTypesEmpty.Variant245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Monadic/Empty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Loop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesEmpty.Variant245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890

@[expose] public section

/-!
This file provides an empty iterator.
-/

namespace Std

variable {m : Type w → Type w'} {β : Type w}

/--
The internal state of the `IterM.empty` iterator.
-/
structure Iterators.Types.Empty (m : Type w → Type w') (β : Type w) : Type w where

/--
Returns an iterator that terminates immediately.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always

-/
@[always_inline, inline]
def IterM.empty (m : Type w → Type w') (β : Type w) :=
  (⟨Iterators.Types.Empty.mk (m := m) (β := β)⟩ : IterM m β)

namespace Iterators.Types

def Empty.PlausibleStep (_ : IterM (α := Empty m β) m β)
    (step : IterStep (IterM (α := Empty m β) m β) β) : Prop :=
  step = .done

instance Empty.instIterator [Monad m] : Iterator (Empty m β) m β where
  IsPlausibleStep := Empty.PlausibleStep
  step _ := return .deflate (.done rfl)

private def Empty.instFinitenessRelation [Monad m] :
    FinitenessRelation (Empty m β) m where
  Rel := emptyRelation
  wf := emptyWf.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h'
    cases h

instance Empty.instFinite [Monad m] : Finite (Empty m β) m := by
  exact Finite.of_finitenessRelation instFinitenessRelation

instance Empty.instIteratorLoop {n : Type x → Type x'} [Monad m] [Monad n] :
    IteratorLoop (Empty m β) m n :=
  .defaultImplementation

end Std.Iterators.Types
```
