# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantf5447f08f57657239ef255db16c7a39b973785c768811ff2799635cf64904056

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ec230eac5a271f221745ab292acf1aa4e39a57e` · SHA-256 `7e3d77eee3c9a9e758a28a6d1352923e2730095045fb49988a0e0d999db50212`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
