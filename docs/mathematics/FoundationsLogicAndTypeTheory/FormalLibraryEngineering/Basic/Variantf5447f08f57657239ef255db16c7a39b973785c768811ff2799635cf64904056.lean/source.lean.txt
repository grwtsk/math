-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomicT.Variant1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtomicT.Variant1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomicT.Variant1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a

@[expose] public section

namespace Std

/--
`AtomicT α m` is the monad that can be atomically executed inside mutual exclusion primitives like
`Mutex α` with outside monad `m`.
The action has access to the state `α` of the mutex (via `get` and `set`).
-/
abbrev AtomicT := StateRefT' IO.RealWorld

end Std
