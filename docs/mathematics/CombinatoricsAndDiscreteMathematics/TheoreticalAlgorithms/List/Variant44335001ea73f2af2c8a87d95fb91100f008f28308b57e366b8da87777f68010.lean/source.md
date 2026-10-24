# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e587bb818abf3ad5d2ee58a4c71bb969873414b7` · SHA-256 `cf5a6ce20f78a8303ebeb6a622ae16e63f2780ec69d4c59d2ab5ffc87c9a7a40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIterator.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ListIterator.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Producers/Monadic/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers
import Init.Data.Nat.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIterator.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1

@[expose] public section

/-!
# List iterator

This module provides an iterator for lists that is accessible via `List.iterM`.
-/

namespace Std

namespace Iterators.Types

/--
The underlying state of a list iterator. Its contents are internal and should
not be used by downstream users of the library.
-/
@[ext]
structure ListIterator (α : Type w) where
  list : List α

end Iterators.Types

open Std.Iterators Std.Iterators.Types

variable {α : Type w} {m : Type w → Type w'}

/--
Returns a finite iterator for the given list.
The iterator yields the elements of the list in order and then terminates.

The non-monadic version of this iterator is `List.iter`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIterator.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.List.iterM {α : Type w} (l : List α) (m : Type w → Type w') [Pure m] :
    IterM (α := ListIterator α) m α :=
  ⟨{ list := l }⟩

namespace Iterators.Types

@[always_inline, inline]
instance ListIterator.instIterator {α : Type w} [Pure m] : Iterator (ListIterator α) m α where
  IsPlausibleStep it
    | .yield it' out => it.internalState.list = out :: it'.internalState.list
    | .skip _ => False
    | .done => it.internalState.list = []
  step it := pure (match it with
        | ⟨⟨[]⟩⟩ => .deflate ⟨.done, rfl⟩
        | ⟨⟨x :: xs⟩⟩ => .deflate ⟨.yield ⟨⟨xs⟩⟩ x, rfl⟩)

private def ListIterator.instFinitenessRelation [Pure m] :
    FinitenessRelation (ListIterator α) m where
  Rel := InvImage WellFoundedRelation.rel (ListIterator.list ∘ IterM.internalState)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp_wf
    obtain ⟨step, h, h'⟩ := h
    cases step <;> simp_all [IterStep.successor, IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIterator]

instance ListIterator.instFinite [Pure m] : Finite (ListIterator α) m :=
  by exact Finite.of_finitenessRelation ListIterator.instFinitenessRelation

@[always_inline, inline]
instance ListIterator.instIteratorLoop {α : Type w} [Monad m] {n : Type x → Type x'} [Monad n] :
    IteratorLoop (ListIterator α) m n :=
  .defaultImplementation

end Std.Iterators.Types
```
