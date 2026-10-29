-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterPartial.Variant81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterPartial.Variant81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Partial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterPartial.Variant81eb9fe4a9058d878f8c8b48ad3775ee1af1a7bbb17439ea025def8f6c84b276

set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides partial consumers. See `Iter.allowNontermination`.
-/
structure Iter.Partial {α : Type w} (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `Iter.allowNontermination`.
  -/
  it : Iter (α := α) β

/--
For an iterator `it`, `it.allowNontermination` provides potentially nonterminating variants of
consumers such as `toList`. They can be used without any proof of termination such as `Finite`
or `Productive`, but as they are implemented with the `partial` declaration modifier, they are
opaque for the kernel and it is impossible to prove anything about them.
-/
@[always_inline, inline, deprecated "The consumers on iterators do not require proofs of termination anymore. For example, use `it.toList` instead of `it.allowNontermination.toList`." (since := "2026-01-28")]
def Iter.allowNontermination {α : Type w} {β : Type w}
    (it : Iter (α := α) β) : Iter.Partial (α := α) β :=
  ⟨it⟩

end Std
