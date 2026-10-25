# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant249434f30fe42af701c5ad8c6dad454c7a244574dbfd04314ffbc1b6eefc9937

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8d901ebfd41cda33867cdf1b5ab10678ff4ba78` · SHA-256 `1e50ca6aed7f49d42d7f0d65e92dce54cd85854e48b83296cc0bf63b51e0e0a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftCommandElabM.Variantb81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LiftCommandElabM.Variantb81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Command
import Lean.Elab.SetOption


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftCommandElabM.Variantb81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d

namespace Lean
open Elab Command MonadRecDepth

/--
Lift an action in `CommandElabM` into `CoreM`, updating the traces and the environment.
This does not preserve things like `open` and `namespace` declarations.
-/
def liftCommandElabM (k : CommandElabM α) : CoreM α := do
  let (a, commandState) ←
    k.run {
      fileName := ← getFileName
      fileMap := ← getFileMap
      ref := ← getRef
      tacticCache? := none
    } |>.run {
      env := ← getEnv
      maxRecDepth := ← getMaxRecDepth
      scopes := [{ header := "", opts := ← getOptions }]
    }
  modify fun coreState => { coreState with
    traceState.traces := coreState.traceState.traces ++ commandState.traceState.traces
    env := commandState.env
  }
  if let some err := commandState.messages.msgs.toArray.find? (·.severity matches .error) then
    throwError err.data
  pure a

/--
Evaluate any `set_option in` commands before the given `stx`, and pass the inner `stx` with the
updated environment to the continuation `k`.
-/
partial def withSetOptionIn (k : CommandElab) : CommandElab := fun stx => do
  if stx.getKind == ``Lean.Parser.Command.in &&
     stx[0].getKind == ``Lean.Parser.Command.set_option then
      let opts ← Elab.elabSetOption stx[0][1] stx[0][2]
      Command.withScope (fun scope => { scope with opts }) do
        withSetOptionIn k stx[1]
  else
    k stx
```
