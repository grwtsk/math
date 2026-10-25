# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeTacAttr.Variant5cdf22e61afdf089a71b4d3ffe52bac1c538c8ebdd695d740b7004be68749d8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b78a9419eb1506e10f92e1d0c2de520042a4761c` · SHA-256 `ae89d417f5a3bc33b6d76f38717d56c867775c136e782de301d3b391b2c98920`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Simp.Variant3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/TreeTacAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Lean.Meta.Tactic.Simp


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f

public section

open Lean.Meta

namespace Std.Internal

builtin_initialize treeTacExt : SimpExtension
  ← registerSimpAttr `Std.Internal.tree_tac "simp theorems used by internal DTreeMap lemmas"

end Std.Internal
```
