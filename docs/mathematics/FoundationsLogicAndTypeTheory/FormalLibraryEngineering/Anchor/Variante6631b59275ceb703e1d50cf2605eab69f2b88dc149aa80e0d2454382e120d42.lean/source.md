# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variante6631b59275ceb703e1d50cf2605eab69f2b88dc149aa80e0d2454382e120d42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b201a26a6685cfa2e8c9221a504b7cc63c34c1d8` · SHA-256 `bc8115f930a97fe6f581f47c58f70e0e14262882e5941fd6114ef37271fde68e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAnchorRef.Variant7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabAnchorRef.Variant7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Anchor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAnchorRef.Variant7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34

namespace Lean.Elab.Tactic.Grind
open Meta Lean.Meta.Grind

public def elabAnchorRef (anchor : TSyntax `hexnum) : CoreM AnchorRef := do
  let numDigits := anchor.getHexNumSize
  let val := anchor.getHexNumVal
  if val >= UInt64.size then
    throwError "invalid anchor, value is too big"
  let anchorPrefix := val.toUInt64
  return { numDigits, anchorPrefix }

end Lean.Elab.Tactic.Grind
```
