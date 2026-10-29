-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Polymorphic.Variantb83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Polymorphic.Variantb83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Basic
public import Init.Data.Range.Polymorphic.Iterators
public import Init.Data.Range.Polymorphic.Stream
public import Init.Data.Range.Polymorphic.Lemmas
public import Init.Data.Range.Polymorphic.Map

public import Init.Data.Range.Polymorphic.Fin
public import Init.Data.Range.Polymorphic.Char
public import Init.Data.Range.Polymorphic.Nat
public import Init.Data.Range.Polymorphic.Int
public import Init.Data.Range.Polymorphic.BitVec
public import Init.Data.Range.Polymorphic.UInt
public import Init.Data.Range.Polymorphic.SInt

public import Init.Data.Range.Polymorphic.NatLemmas
public import Init.Data.Range.Polymorphic.IntLemmas
public import Init.Data.Range.Polymorphic.GetElemTactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Polymorphic.Variantb83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7

public section

/-!
# Polymorphic ranges

Any type that provides certain typeclasses supports range notation: For example, `2...<5`
stands for the numbers at least `2` and smaller than `5`. Such ranges support iteration with
`for .. in` and can be converted into a list with `PRange.toList`. After importing
`Std.Data.Iterators`, there will also be `PRange.iter`, which provides an iterator over the
elements of the range.

In order to support ranges of a certain type `α`, multiple instances need to be implemented.
An example of how this plays out can be found in `Init.Data.Range.Polymorphic.Nat`.

The typeclass system is experimental and will change soon, so at this point it is not recommended
to provide custom ranges outside of the standard library.
-/
