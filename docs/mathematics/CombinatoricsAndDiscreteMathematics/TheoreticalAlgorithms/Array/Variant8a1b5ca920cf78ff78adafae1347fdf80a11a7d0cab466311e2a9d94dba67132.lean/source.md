# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbd6387362a48945c6625ae5e3cdf1927c7ef9d2` · SHA-256 `f34a11c98a72eb315d346ccc51b82364a1bfd5605b37f6101513845822161440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c","mathematical_subject":"Computation.DataStructures","original_sha256":"78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Monadic/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c

@[expose] public section

/-!
# Array iterator

This module provides an iterator for arrays that is accessible via `Array.iterM`.
-/

namespace Std.Iterators.Types

variable {α : Type w} {m : Type w → Type w'}

/--
The underlying state of a list iterator. Its contents are internal and should
not be used by downstream users of the library.
-/
@[unbox, ext]
structure ArrayIterator (α : Type w) where
  /-- Internal implementation detail of the iterator library. -/
  array : Array α
  /-- Internal implementation detail of the iterator library. -/
  pos : Nat

theorem ArrayIterator.exists_iff {α : Type w} {P : ArrayIterator α → Prop} :
    (∃ s, P s) ↔ ∃ array pos, P ⟨array, pos⟩ := by
  constructor
  · rintro ⟨⟨array, pos⟩, h⟩
    exact ⟨array, pos, h⟩
  · rintro ⟨array, pos, h⟩
    exact ⟨⟨array, pos⟩, h⟩

/--
Returns a finite monadic iterator for the given array starting at the given index.
The iterator yields the elements of the array in order and then terminates.

The pure version of this iterator is `Array.iterFromIdx`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[always_inline, inline, match_pattern]
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.Array.iterFromIdxM {α : Type w} (array : Array α) (m : Type w → Type w') (pos : Nat)
    [Pure m] :
    IterM (α := ArrayIterator α) m α :=
  ⟨{ array := array, pos := pos }⟩

/--
Returns a finite monadic iterator for the given array.
The iterator yields the elements of the array in order and then terminates. There are no side
effects.

The pure version of this iterator is `Array.iter`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[always_inline, inline]
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.Array.iterM {α : Type w} (array : Array α) (m : Type w → Type w') [Pure m] :
    IterM (α := ArrayIterator α) m α :=
  array.iterFromIdxM m 0

@[always_inline, inline]
instance ArrayIterator.instIterator {α : Type w} [Pure m] : Iterator (ArrayIterator α) m α where
  IsPlausibleStep it
    | .yield it' out => it.internalState.array = it'.internalState.array ∧
      it'.internalState.pos = it.internalState.pos + 1 ∧
      ∃ _ : it.internalState.pos < it.internalState.array.size,
      it.internalState.array[it.internalState.pos] = out
    | .skip _ => False
    | .done => it.internalState.pos ≥ it.internalState.array.size
  step it := pure <| .deflate <| if h : it.internalState.pos < it.internalState.array.size then
        .yield
          ⟨⟨it.internalState.array, it.internalState.pos + 1⟩⟩
          it.internalState.array[it.internalState.pos]
          ⟨rfl, rfl, h, rfl⟩
      else
        .done (Nat.not_lt.mp h)

private def ArrayIterator.instFinitenessRelation [Pure m] :
    FinitenessRelation (ArrayIterator α) m where
  Rel := InvImage WellFoundedRelation.rel
      (fun it => it.internalState.array.size - it.internalState.pos)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp_wf
    obtain ⟨step, h, h'⟩ := h
    cases step
    · cases h
      obtain ⟨h, h', h'', rfl⟩ := h'
      rw [h] at h''
      rw [h, h']
      omega
    · cases h'
    · cases h

instance ArrayIterator.instFinite [Pure m] : Finite (ArrayIterator α) m := by
  exact Finite.of_finitenessRelation ArrayIterator.instFinitenessRelation

@[always_inline, inline]
instance ArrayIterator.instIteratorLoop {α : Type w} [Monad m] {n : Type x → Type x'} [Monad n] :
    IteratorLoop (ArrayIterator α) m n :=
  .defaultImplementation

end Std.Iterators.Types
```
