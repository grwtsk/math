# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eed5a4220cec05db415a0cb0da5b1bfa100ccd2` · SHA-256 `2d481530d078eed752da93700e846b6c3f770cd94cdc22da60e3fd2da831bff7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMToHashSet.Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMToHashSet.Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Consumers/Monadic/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Iterators.Consumers.Monadic.Loop
public import Std.Data.HashSet.Basic
public import Std.Data.ExtHashSet.Basic
public import Std.Data.TreeSet.Basic
public import Std.Data.ExtTreeSet.Basic
import Init.Data.Iterators.Consumers.Monadic.Loop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMToHashSet.Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6

set_option doc.verso true

namespace Std
open Iterators

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`HashSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toHashSet` always terminates after finitely many steps.
-/
@[inline]
public def IterM.toHashSet {α β : Type w} [BEq β] [Hashable β] {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [IteratorLoop α m m] (it : IterM (α := α) m β) : m (HashSet β) :=
  it.fold (init := ∅) fun acc a => acc.insert a

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`HashSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`IterM.toHashSet`.
-/
@[inline]
public def IterM.Total.toHashSet {α β : Type w} [BEq β] [Hashable β] {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Finite α m] [IteratorLoop α m m] (it : IterM.Total (α := α) m β) :
    m (HashSet β) :=
  it.it.toHashSet

docs_to_verso IterM.toHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtHashSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toExtHashSet` always terminates after finitely many steps.
-/
@[inline]
public def IterM.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β] [LawfulHashable β]
    {m : Type w → Type w'} [Monad m] [Iterator α m β] [IteratorLoop α m m]
    (it : IterM (α := α) m β) : m (ExtHashSet β) :=
  it.fold (init := ∅) fun acc a => acc.insert a

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtHashSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`IterM.toExtHashSet`.
-/
@[inline]
public def IterM.Total.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β] [LawfulHashable β]
    {m : Type w → Type w'} [Monad m] [Iterator α m β] [Finite α m] [IteratorLoop α m m]
    (it : IterM.Total (α := α) m β) : m (ExtHashSet β) :=
  it.it.toExtHashSet

docs_to_verso IterM.toExtHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toTreeSet` always terminates after finitely many steps.
-/
@[inline]
public def IterM.toTreeSet {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [IteratorLoop α m m] (it : IterM (α := α) m β) (cmp : β → β → Ordering) :
    m (TreeSet β cmp) :=
  it.fold (init := ∅) fun acc a => acc.insert a

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`IterM.toTreeSet`.
-/
@[inline]
public def IterM.Total.toTreeSet {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Finite α m] [IteratorLoop α m m] (it : IterM.Total (α := α) m β)
    (cmp : β → β → Ordering) : m (TreeSet β cmp) :=
  it.it.toTreeSet cmp

docs_to_verso IterM.toTreeSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtTreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toExtTreeSet cmp` always terminates after finitely
many steps.
-/
@[inline]
public def IterM.toExtTreeSet {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    [IteratorLoop α m m] (it : IterM (α := α) m β) (cmp : β → β → Ordering := by exact compare)
    [TransCmp cmp] : m (ExtTreeSet β cmp) :=
  it.fold (init := ∅) fun acc a => acc.insert a

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtTreeSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`IterM.toExtTreeSet`.
-/
@[inline]
public def IterM.Total.toExtTreeSet {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    [Finite α m] [IteratorLoop α m m] (it : IterM.Total (α := α) m β)
    (cmp : β → β → Ordering := by exact compare) [TransCmp cmp] : m (ExtTreeSet β cmp) :=
  it.it.toExtTreeSet cmp

docs_to_verso IterM.toExtTreeSet

end Std
```
