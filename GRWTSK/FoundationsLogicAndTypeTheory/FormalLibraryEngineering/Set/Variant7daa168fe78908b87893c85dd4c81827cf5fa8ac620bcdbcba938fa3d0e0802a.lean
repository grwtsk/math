-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToHashSet.Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterToHashSet.Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Consumers/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.Iterators.Consumers.Monadic.Set
public import Init.Data.Iterators.Consumers.Total


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToHashSet.Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1

set_option doc.verso true

namespace Std
open Iterators

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`HashSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toHashSet` always terminates after finitely many steps.
-/
@[inline]
public def Iter.toHashSet {α β : Type w} [BEq β] [Hashable β] [Iterator α Id β]
    [IteratorLoop α Id Id] (it : Iter (α := α) β) : HashSet β :=
  it.toIterM.toHashSet.run

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`HashSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.toHashSet`.
-/
@[inline]
public def Iter.Total.toHashSet {α β : Type w} [BEq β] [Hashable β] [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] (it : Total (α := α) β) : HashSet β :=
  it.it.toHashSet

docs_to_verso Iter.toHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtHashSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toExtHashSet` always terminates after finitely many steps.
-/
@[inline]
public def Iter.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β] [LawfulHashable β]
    [Iterator α Id β] [IteratorLoop α Id Id] (it : Iter (α := α) β) : ExtHashSet β :=
  it.toIterM.toExtHashSet.run

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtHashSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.toExtHashSet`.
-/
@[inline]
public def Iter.Total.toExtHashSet {α β : Type w} [BEq β] [Hashable β] [EquivBEq β]
    [LawfulHashable β] [Iterator α Id β] [Finite α Id] [IteratorLoop α Id Id]
    (it : Total (α := α) β) : ExtHashSet β :=
  it.it.toExtHashSet

docs_to_verso Iter.toExtHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toTreeSet cmp` always terminates after finitely many steps.
-/
@[inline]
public def Iter.toTreeSet {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id]
    (it : Iter (α := α) β) (cmp : β → β → Ordering := by exact compare) : TreeSet β cmp :=
  it.toIterM.toTreeSet cmp |>.run

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.toTreeSet`.
-/
@[inline]
public def Iter.Total.toTreeSet {α β : Type w} [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] (it : Total (α := α) β) (cmp : β → β → Ordering := by exact compare) :
    TreeSet β cmp :=
  it.it.toTreeSet cmp

docs_to_verso Iter.toTreeSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtTreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toExtTreeSet cmp` always terminates after finitely many steps.
-/
@[inline]
public def Iter.toExtTreeSet {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id]
    (it : Iter (α := α) β) (cmp : β → β → Ordering := by exact compare) [TransCmp cmp] :
    ExtTreeSet β cmp :=
  it.toIterM.toExtTreeSet cmp |>.run

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtTreeSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.toExtTreeSet`.
-/
@[inline]
public def Iter.Total.toExtTreeSet {α β : Type w} [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] (it : Total (α := α) β) (cmp : β → β → Ordering := by exact compare)
    [TransCmp cmp] : ExtTreeSet β cmp :=
  it.it.toExtTreeSet cmp

docs_to_verso Iter.toExtTreeSet

end Std
