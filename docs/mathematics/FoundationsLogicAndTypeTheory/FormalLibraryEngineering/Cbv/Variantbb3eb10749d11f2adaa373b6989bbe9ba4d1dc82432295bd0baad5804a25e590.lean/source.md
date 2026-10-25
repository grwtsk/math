# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variantbb3eb10749d11f2adaa373b6989bbe9ba4d1dc82432295bd0baad5804a25e590

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bec33403fe52612966869fcdff6d4083c7732260` · SHA-256 `b85f2e54afc31d4b9f26b4c9b60677fd1d577e9f8ac0dfccc873f73fc5b642f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Varianta28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cbv.Varianta28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Meta.Tactic.Cbv.Main
public import Lean.Meta.Tactic.Cbv.Util
public import Lean.Meta.Tactic.Cbv.CbvEvalExt


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Varianta28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672

public section

namespace Lean

builtin_initialize registerTraceClass `Meta.Tactic.cbv
builtin_initialize registerTraceClass `Meta.Tactic.cbv.rewrite (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.unfold (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.controlFlow (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.simprocs (inherited := true)
builtin_initialize registerTraceClass `Debug.Meta.Tactic.cbv
builtin_initialize registerTraceClass `Debug.Meta.Tactic.cbv.reduce (inherited := true)

end Lean
```
