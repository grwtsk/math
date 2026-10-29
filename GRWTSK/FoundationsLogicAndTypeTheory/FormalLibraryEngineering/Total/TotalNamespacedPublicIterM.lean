-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMTotal.Variant8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMTotal.Variant8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Monadic/Total.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMTotal.Variant8d81427ae516aec6f6e0669a3f95453a8abd513cdee73fd5c506c67f1e2e091b

set_option doc.verso true
set_option linter.missingDocs true

public section

namespace Std

/--
A wrapper around an iterator that provides total consumers. See `IterM.ensureTermination`.
-/
structure IterM.Total {α : Type w} (m : Type w → Type w') (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `IterM.ensureTermination`.
  -/
  it : IterM (α := α) m β

/--
For an iterator {name}`it`, {lean}`it.ensureTermination` provides variants of consumers that always
terminate.
-/
@[always_inline, inline]
def IterM.ensureTermination {α : Type w} {β : Type w} {m : Type w → Type w'}
    (it : IterM (α := α) m β) :
  IterM.Total (α := α) m β :=
  ⟨it⟩

/--
A wrapper around an iterator that provides strictly terminating consumers. See
{name}`IterM.ensureTermination`.
-/
add_decl_doc IterM.Total

end Std
