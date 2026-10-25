# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant6029da9fe505ed23fc716065c12de3b89c8f7f7c480fd387f6ce312e5c376fb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b31005636b6ee6344de0766ea92ef0a0108d95ed` · SHA-256 `91c59a4db076c5d3da9bbf71e0f7e0d409671c79ca1aeb6ae6a85cc62b9e743e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplySimpResult.Variant14e461c0614fc5d84c1f78719da6c24249789ff9df9c573b3aeb7170cae3bea9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14e461c0614fc5d84c1f78719da6c24249789ff9df9c573b3aeb7170cae3bea9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplySimpResult.Variant14e461c0614fc5d84c1f78719da6c24249789ff9df9c573b3aeb7170cae3bea9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"14e461c0614fc5d84c1f78719da6c24249789ff9df9c573b3aeb7170cae3bea9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Moritz Doll
-/
module

prelude
public import Lean.Elab.Tactic.Split
public import Lean.Elab.Tactic.Conv.Basic
public import Lean.Elab.Tactic.SimpTrace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplySimpResult.Variant14e461c0614fc5d84c1f78719da6c24249789ff9df9c573b3aeb7170cae3bea9

public section

namespace Lean.Elab.Tactic.Conv
open Meta Tactic TryThis

def applySimpResult (result : Simp.Result) : TacticM Unit := do
  if result.proof?.isNone then
    changeLhs result.expr
  else
    updateLhs result.expr (← result.getProof)

@[builtin_tactic Lean.Parser.Tactic.Conv.simp] def evalSimp : Tactic := fun stx => withMainContext do
  let { ctx, simprocs, dischargeWrapper, .. } ← mkSimpContext stx (eraseLocal := false)
  let lhs ← getLhs
  let (result, _) ← dischargeWrapper.with fun d? => simp lhs ctx (simprocs := simprocs) (discharge? := d?)
  applySimpResult result

@[builtin_tactic Lean.Parser.Tactic.Conv.simpTrace] def evalSimpTrace : Tactic := fun stx => withMainContext do
  match stx with
  | `(conv| simp?%$tk $cfg:optConfig $(discharger)? $[only%$o]? $[[$args,*]]?) => do
    let stx ← `(tactic| simp%$tk $cfg:optConfig $[$discharger]? $[only%$o]? $[[$args,*]]?)
    let { ctx, simprocs, dischargeWrapper, .. } ← mkSimpContext stx (eraseLocal := false)
    let lhs ← getLhs
    let (result, stats) ← dischargeWrapper.with fun d? =>
      simp lhs ctx (simprocs := simprocs) (discharge? := d?)
    applySimpResult result
    let stx ← mkSimpCallStx stx stats.usedTheorems
    addSuggestion tk stx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.Conv.simpMatch] def evalSimpMatch : Tactic := fun _ => withMainContext do
  applySimpResult (← Split.simpMatch (← getLhs))

@[builtin_tactic Lean.Parser.Tactic.Conv.dsimp] def evalDSimp : Tactic := fun stx => withMainContext do
  let { ctx, .. } ← mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
  changeLhs (← Lean.Meta.dsimp (← getLhs) ctx).1

@[builtin_tactic Lean.Parser.Tactic.Conv.dsimpTrace] def evalDSimpTrace : Tactic := fun stx => withMainContext do
  match stx with
  | `(conv| dsimp?%$tk $cfg:optConfig $[only%$o]? $[[$args,*]]?) =>
    let stx ← `(tactic| dsimp%$tk $cfg:optConfig $[only%$o]? $[[$args,*]]?)
    let { ctx, .. } ← mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
    let (result, stats) ← Lean.Meta.dsimp (← getLhs) ctx
    changeLhs result
    let stx ← mkSimpCallStx stx stats.usedTheorems
    addSuggestion tk stx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Conv
```
