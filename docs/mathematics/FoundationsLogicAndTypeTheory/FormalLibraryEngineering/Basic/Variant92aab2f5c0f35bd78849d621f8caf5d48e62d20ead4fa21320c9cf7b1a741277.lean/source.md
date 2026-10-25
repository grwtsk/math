# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant92aab2f5c0f35bd78849d621f8caf5d48e62d20ead4fa21320c9cf7b1a741277

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0281dd8560039886476917d52f2dc00e386a6947` · SHA-256 `31d397d65817a592340483c61c8e56197fd061cf6e21346f5ab1266cf9cdc9ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTerm.Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BuiltinTerm.Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/CodeAction/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.BuiltinTerm
public meta import Lean.Elab.BuiltinNotation
public meta import Lean.Server.InfoUtils
public meta import Lean.Server.CodeActions.Provider
public meta import Batteries.CodeAction.Attr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTerm.Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63

public meta section

/-!
# Initial setup for code actions

This declares a code action provider that calls all `@[hole_code_action]` definitions
on each occurrence of a hole (`_`, `?_` or `sorry`).

(This is in a separate file from `Batteries.CodeAction.Hole.Attr` so that the server does not
attempt to use this code action provider when browsing the `Batteries.CodeAction.Hole.Attr` file
itself.)
-/
namespace Batteries.CodeAction

open Lean Elab Server RequestM CodeAction

/-- A code action which calls `@[tactic_code_action]` code actions. -/
@[code_action_provider] def tacticCodeActionProvider : CodeActionProvider := fun params snap => do
  let doc ← readDoc
  let startPos := doc.meta.text.lspPosToUtf8Pos params.range.start
  let endPos := doc.meta.text.lspPosToUtf8Pos params.range.end
  let pointerCol :=
    if params.range.start.line == params.range.end.line then
      max params.range.start.character params.range.end.character
    else 0
  let some result := findTactic?
    (fun pos => (doc.meta.text.utf8PosToLspPos pos).character ≤ pointerCol)
    ⟨startPos, endPos⟩ snap.stx | return #[]
  let tgtTac := match result with
    | .tactic (tac :: _)
    | .tacticSeq _ _ (_ :: tac :: _) => tac.1
    | _ => unreachable!
  let tgtRange := tgtTac.getRange?.get!
  have info := findInfoTree? tgtTac.getKind tgtRange none snap.infoTree (canonicalOnly := true)
    fun _ info => info matches .ofTacticInfo _
  let some (ctx, node@(.node (.ofTacticInfo info) _)) := info | return #[]
  let mut out := #[]
  match result with
  | .tactic stk@((tac, _) :: _) => do
    let ctx := { ctx with mctx := info.mctxBefore }
    let actions := (tacticCodeActionExt.getState snap.env).2
    if let some arr := actions.onTactic.find? tac.getKind then
      for act in arr do
        try out := out ++ (← act params snap ctx stk node) catch _ => pure ()
    for act in actions.onAnyTactic do
      try out := out ++ (← act params snap ctx stk node) catch _ => pure ()
  | .tacticSeq _ i stk@((seq, _) :: _) =>
    let (ctx, goals) ← if 2*i < seq.getNumArgs then
      let stx := seq[2*i]
      let some stxRange := stx.getRange? | return #[]
      let some (ctx, .node (.ofTacticInfo info') _) :=
          findInfoTree? stx.getKind stxRange ctx node fun _ info => (info matches .ofTacticInfo _)
        | return #[]
      pure ({ ctx with mctx := info'.mctxBefore }, info'.goalsBefore)
    else
      pure ({ ctx with mctx := info.mctxAfter }, info.goalsAfter)
    for act in (tacticSeqCodeActionExt.getState snap.env).2 do
      try out := out ++ (← act params snap ctx i stk goals) catch _ => pure ()
  | _ => unreachable!
  pure out
```
