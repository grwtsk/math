# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collect.Variant04101181a2a9b11b7cdcf7f4ecda99df2488e92212bce340f9cbfbb5d6c1a3d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `983709d3fd51db8cd1b156555d447600ef6c54aa` · SHA-256 `84185ab41849a3971f95164676f35f77c4266634589035f736c4239a5b45fef4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMToArrayRecursionRel.Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMToArrayRecursionRel.Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Monadic/Collect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Monadic.Partial
public import Init.Data.Iterators.Consumers.Monadic.Total
public import Init.WFExtrinsicFix
public import Init.Ext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMToArrayRecursionRel.Variant67787fc49fb31da1fdfda26e8f115f19ab58f95629526799fb2d7bde9caf57a5

set_option linter.missingDocs true

@[expose] public section

/-!
# Collectors

This module provides consumers that collect the values emitted by an iterator in a data structure.
Concretely, the following operations are provided:

* `IterM.toList`, collecting the values in a list
* `IterM.toListRev`, collecting the values in a list in reverse order but more efficiently
* `IterM.toArray`, collecting the values in an array
-/

namespace Std
open Std.Internal Std.Iterators

section ToArray

/--
If this relation is well-founded, then `IterM.toArray`, `IterM.toList` and `IterM.toListRev` are
guaranteed to finish after finitely many steps. If all of the iterator's steps terminate
individually, `IterM.toArray` is guaranteed to terminate.
-/
def IterM.toArray.RecursionRel {α β : Type w} {m : Type w → Type w'}
    [Iterator α m β] {γ : Type w} (x' x : (_ : IterM (α := α) m β) ×' Array γ) : Prop :=
  (∃ out, x.1.IsPlausibleStep (.yield x'.1 out) ∧ ∃ a, x'.2 = x.2.push a) ∨
    (x.1.IsPlausibleStep (.skip x'.1) ∧ x'.2 = x.2)

/--
Traverses the given iterator and stores the emitted values in an array.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toArray` always terminates after finitely many steps.
-/
@[always_inline, inline]
def IterM.toArray {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    (it : IterM (α := α) m β) : m (Array β) :=
  go it #[]
where
  @[always_inline]
  go it (acc : Array β) : m (Array β) :=
    WellFounded.extrinsicFix₂ (C₂ := fun _ _ => m (Array β)) (InvImage TerminationMeasures.Finite.Rel (·.1.finitelyManySteps!))
    (fun (it : IterM (α := α) m β) acc recur => do
      match (← it.step).inflate with
      | .yield it' out h =>
        recur it' (acc.push out) (by exact TerminationMeasures.Finite.rel_of_yield ‹_›)
      | .skip it' h => recur it' acc (by exact TerminationMeasures.Finite.rel_of_skip ‹_›)
      | .done _ => return acc) it acc

/--
Traverses the given iterator and stores the emitted values in an array.

This function is deprecated. Instead of `it.allowNontermination.toArray`, use `it.toArray`.
-/
@[always_inline, inline, deprecated IterM.toArray (since := "2025-10-23")]
def IterM.Partial.toArray {α : Type w} {m : Type w → Type w'} {β : Type w} [Monad m]
    [Iterator α m β] (it : IterM.Partial (α := α) m β) : m (Array β) :=
  it.it.toArray

/--
Traverses the given iterator and stores the emitted values in an array.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `IterM.toArray`.
-/
@[always_inline, inline]
def IterM.Total.toArray {α : Type w} {m : Type w → Type w'} {β : Type w} [Monad m]
    [Iterator α m β] [Finite α m] (it : IterM.Total (α := α) m β) :
    m (Array β) :=
  it.it.toArray

end ToArray

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toListRev` always terminates after finitely many steps.
-/
@[always_inline, inline]
def IterM.toListRev {α : Type w} {m : Type w → Type w'} [Monad m] {β : Type w}
    [Iterator α m β] (it : IterM (α := α) m β) : m (List β) :=
  go it []
where
  @[always_inline, inline]
  go (it : IterM m β) acc :=
    WellFounded.extrinsicFix₂ (InvImage TerminationMeasures.Finite.Rel (·.1.finitelyManySteps!))
      (fun it acc recur => do
        match (← it.step).inflate with
        | .yield it' out h => recur it' (out :: acc) (TerminationMeasures.Finite.rel_of_yield h)
        | .skip it' h => recur it' acc (TerminationMeasures.Finite.rel_of_skip h)
        | .done _ => return acc) it acc

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toListRev`, use `it.toListRev`.
-/
@[always_inline, inline, deprecated IterM.toListRev (since := "2025-10-23")]
partial def IterM.Partial.toListRev {α : Type w} {m : Type w → Type w'} [Monad m] {β : Type w}
    [Iterator α m β] (it : IterM.Partial (α := α) m β) : m (List β) :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `IterM.toListRev`.
-/
@[always_inline, inline]
def IterM.Total.toListRev {α : Type w} {m : Type w → Type w'} {β : Type w} [Monad m]
    [Iterator α m β] [Finite α m] (it : IterM.Total (α := α) m β) :
    m (List β) :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toList` always terminates after finitely many steps.
-/
@[always_inline, inline]
def IterM.toList {α : Type w} {m : Type w → Type w'} [Monad m] {β : Type w}
    [Iterator α m β] (it : IterM (α := α) m β) : m (List β) :=
  Array.toList <$> IterM.toArray it

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toList`, use `it.toList`.
-/
@[always_inline, inline, deprecated IterM.toList (since := "2025-10-23")]
def IterM.Partial.toList {α : Type w} {m : Type w → Type w'} [Monad m] {β : Type w}
    [Iterator α m β] (it : IterM.Partial (α := α) m β) :
    m (List β) :=
  Array.toList <$> it.it.toArray

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `IterM.toList`.
-/
@[always_inline, inline]
def IterM.Total.toList {α : Type w} {m : Type w → Type w'} {β : Type w} [Monad m]
    [Iterator α m β] [Finite α m] (it : IterM.Total (α := α) m β) :
    m (List β) :=
  it.it.toList

end Std
```
