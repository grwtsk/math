# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variantedd353047fae29aa71102a7523b035586beaef9e2e3f90d54b81a82409897863

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d31b2d5d79013ea745e66f7702dbbcc34612f0ac` · SHA-256 `acd756385dc8203c676e8f48d05de257999686592852f614ecb65cb953b9d0f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Varianta0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Change.Varianta0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Change
public import Lean.Elab.Tactic.Conv.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Varianta0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.change] def evalChange : Tactic := fun stx => do
  match stx with
  | `(conv| change $e) => withMainContext do
    let lhs ← getLhs
    let mvarCounterSaved := (← getMCtx).mvarCounter
    let lhs' ← elabChange lhs e
    logUnassignedAndAbort (← filterOldMVars (← getMVars lhs') mvarCounterSaved)
    changeLhs lhs'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Conv
```
