# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantd2742df8d944280d93c86723f3be18d021b8687a3cfc23f7b2676846ddf57b32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40ae5466e1bed684ec0d27f9520ced8d72a0b131` · SHA-256 `3c8bc75e377aa6d6602cf3397aa2dd3e8fc2e69188093d7a2193cf133dc6c58c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Notation.Variant052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Internal/Order/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant052889108dd0a1847c165ccf0ee9fe6e2ad51f154bb0f7001f22bb883059220d

public section

namespace Lean.Order
/--
`monotonicity` performs one compositional step solving `monotone` goals,
using lemma tagged with `@[partial_fixpoint_monotone]`.

This tactic is mostly used internally by lean in `partial_fixpoint` definitions, but
can be useful on its own for debugging or when proving new `@[partial_fixpoint_monotone]` lemmas.
-/
scoped syntax (name := monotonicity) "monotonicity" : tactic

end Lean.Order
```
