# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant556865abe4735941a0188e274bbb8f5b959f2aabbbfcbc99ac13bebfbb4f4b0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d49e35f121514f06418c9471b1f5fc536e16ea8` · SHA-256 `e51a5fb3976e1181ca3291f1771e7502e7332650a31aa23d5bbe0ad4b7818af4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterFromIdx.Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayIterFromIdx.Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9","mathematical_subject":"Computation.DataStructures","original_sha256":"c861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Array


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterFromIdx.Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9

@[expose] public section

/-!
# Array iterator

This module provides an iterator for arrays that is accessible via `Array.iter`.
-/

open Std Std.Iterators Std.Iterators.Types

/--
Returns a finite iterator for the given array starting at the given index.
The iterator yields the elements of the array in order and then terminates.

The monadic version of this iterator is `Array.iterFromIdxM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def Array.iterFromIdx {α : Type w} (l : Array α) (pos : Nat) :
    Iter (α := ArrayIterator α) α :=
  ((l.iterFromIdxM Id pos).toIter : Iter α)

/--
Returns a finite iterator for the given array.
The iterator yields the elements of the array in order and then terminates.

The monadic version of this iterator is `Array.iterM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def Array.iter {α : Type w} (l : Array α) :
    Iter (α := ArrayIterator α) α :=
  ((l.iterM Id).toIter : Iter α)
```
