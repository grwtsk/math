# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MacroTrace.Variant7d6efccaeb9295102cbcb738d848d554a370f317d8045020a0a7cca23fa66d76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3367e4a46bda5083c5d2a6c785ab9dee2c9d6f2` · SHA-256 `cfef6eb0a23b33e7e137427e5594932c3388b415366c38338f9b846252082bc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Meta.Variant6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/MacroTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura

Extra notation that depends on Init/Meta
-/

module

prelude
public meta import Init.Meta
public import Init.Notation
import Init.Data.ToString.Macro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant6ff2e769e127f9c626d7c2aaf6db1167f3f6abaf0a665655ec442f389b5bbf74

public section

namespace Lean

macro "Macro.trace[" id:ident "]" s:interpolatedStr(term) : term =>
  `(Macro.trace $(quote id.getId.eraseMacroScopes) (s! $s))

end Lean
```
