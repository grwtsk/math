# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variante5fda8c83e93aaba6186e8eabf4b2e1ca97c9aabe1c4f48d9f7e2c81a82ef687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b4d8ab7aa9e078339fe5d2acb4b8172d3c5f2b5` · SHA-256 `7fcadd86232d8408114defed577666ee71a4d0ded89e2eecbb0374db5b272d72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variantc6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cbv.Variantc6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Cbv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/

module

prelude
public import Lean.Meta.Tactic.Cbv
public import Lean.Elab.Tactic.Conv.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variantc6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0

section

namespace Lean.Elab.Tactic.Conv
open Lean.Meta.Tactic.Cbv


@[builtin_tactic Lean.Parser.Tactic.Conv.cbv] public def evalCbv : Tactic := fun stx => withMainContext do
  if cbv.warning.get (← getOptions) then
    logWarningAt stx "The `cbv` usage warning option is enabled. Disable it by setting `set_option cbv.warning false`."
  let lhs ← getLhs
  let evalResult ← cbvEntry lhs
  match evalResult with
  | .rfl .. => return ()
  | .step e' proof _ _ =>
    updateLhs e' proof

end Lean.Elab.Tactic.Conv
```
