# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithGrindTacticM.Variant48dce4c6c9d04de685913d05fefeb2da809c2445e28f719aa8cfbf0bb5e88c13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `197ba1cdf7abce2f1b95ada3eab6d5f2725cbc97` · SHA-256 `58f04c4d724dc161af1644889cd11b229a40bae75a5eed762a6260937afed7e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithGrindTacticM.Variant93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithGrindTacticM.Variant93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/WithGrindTacticM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Elab.Command

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithGrindTacticM.Variant93d219242cb7aadab8fcc686b2863d3511de24524852ab0d8d3e00850a955944

namespace Lean.Elab.Command
open Meta

/--
Runs a `GrindTacticM` computation in a minimal context for validation.
-/
public def withGrindTacticM (k : Tactic.Grind.GrindTacticM α) : CommandElabM α := do
  liftTermElabM do
  let params ← Grind.mkDefaultParams {}
  let (ctx, state) ← Grind.GrindM.run (params := params) do
    let methods ← Grind.getMethods
    let grindCtx ← readThe Meta.Grind.Context
    let symCtx ← readThe Sym.Context
    let grindState ← get
    let symState ← getThe Sym.State
    let ctx := {
      elaborator := `registerSymSimp,
      ctx := grindCtx, sctx := symCtx, methods, params
    }
    return (ctx, { grindState, symState, goals := [] })
  let (a, _) ← Tactic.Grind.GrindTacticM.run k ctx state
  return a

end Lean.Elab.Command
```
