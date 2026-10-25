# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variantedb75a96388e14ef2fc1a80ad79df6feccb95c424b48ad6de5b248bd8d741b01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `288d916716e4c4b4cabbb90d4de3fce6ac762b23` · SHA-256 `c28f3a09adb7debd5be8dad33b4d32794c52a7b53d901bcc30152bdfa4478427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Meta.Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Format/Macro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant8c3b4a9bff0714c5de44c7b1774a44a2f3c507910e64ce38f1e1b0da68f96dda

public section

namespace Std

syntax:max "f!" interpolatedStr(term) : term

macro_rules
  | `(f! $interpStr) => do interpStr.expandInterpolatedStr (← `(Format)) (← `(Std.format))

end Std
```
