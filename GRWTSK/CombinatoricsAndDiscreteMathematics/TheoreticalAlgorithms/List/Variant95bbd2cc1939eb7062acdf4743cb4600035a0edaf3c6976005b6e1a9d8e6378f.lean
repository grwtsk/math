-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIter.Variant76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListIter.Variant76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda","mathematical_subject":"Computation.DataStructures","original_sha256":"76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Producers/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Producers.Monadic.List


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIter.Variant76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda

@[expose] public section

open Std Std.Iterators Std.Iterators.Types

/-!
# List iterator

This module provides an iterator for lists that is accessible via `List.iter`.
-/

/--
Returns a finite iterator for the given list.
The iterator yields the elements of the list in order and then terminates.

The monadic version of this iterator is `List.iterM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def List.iter {α : Type w} (l : List α) :
    Iter (α := ListIterator α) α :=
  ((l.iterM Id).toIter : Iter α)
