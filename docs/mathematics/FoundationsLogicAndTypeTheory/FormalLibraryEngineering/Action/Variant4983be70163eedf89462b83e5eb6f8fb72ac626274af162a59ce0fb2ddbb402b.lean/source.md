# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variant4983be70163eedf89462b83e5eb6f8fb72ac626274af162a59ce0fb2ddbb402b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ae3f00ba3ac1fa1018a13d8f3aa7b92104d76d2` · SHA-256 `8d8aeaf6b45ff3710ca070b58daf9b17e5a0e2490636e4fc63bd7799aaebf715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Variantdd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Linarith.Variantdd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.Linear.Search

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Variantdd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617

namespace Lean.Meta.Grind.Action

/-- Linear arithmetic action. -/
public def linarith : Action :=
  terminalAction Arith.Linear.check `(grind| linarith)

end Lean.Meta.Grind.Action
```
