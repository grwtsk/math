# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant3cf53736c4a0bb0f12327cd6d5fe51efca04d6649dae37f1f0a1a88145384dca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `626231712b75d67da1ef9aaf6fde9f7f7057e383` · SHA-256 `d22aed530d0405ae4ee68ff8e9c2ddf6482849e9ddf15d4bcaff094f44921908`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithTracing.Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithTracing.Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
import Lean.Elab.Tactic.Grind.Config
import Lean.Elab.Tactic.Grind.Param
import Lean.Meta.Tactic.TryThis
import Lean.Meta.Tactic.Grind.Finish
import Lean.Meta.Tactic.Grind.CollectParams
import Lean.Meta.Sym.Grind

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithTracing.Variant14a4c4005073901f323700045fa5ba2d2f1fd9f49a051d4c829b5d308a8188e0

namespace Lean.Elab.Tactic.Grind
open Meta
open Meta.Grind

def withTracing (x : GrindTacticM α) : GrindTacticM α := do
  withReader (fun ctx => { ctx with ctx.config.trace := true }) x

/--
In `sym =>` mode, the initialization performed on entry by `grind =>` (introductions +
proof by contradiction + internalization) has not been applied to the goal. The `finish`
action performs equivalent steps internally, but they are not recorded in the resulting
script. This function applies the interactive `intros` and `by_contra` steps, and returns
them so they can be included in the script suggested by `finish?`.
-/
private def symInit (goal : Goal) : GrindM (List TGrind × Goal) := do
  let mut seq : List TGrind := []
  let mut goal := goal
  -- Introduce hypotheses, if any
  let hygienic := tactic.hygienic.get (← getOptions)
  if let .goal _ goalNew ← Goal.intros goal #[] hygienic then
    goal ← Goal.internalizeAll goalNew
    seq := seq ++ [← `(grind| intros)]
  -- Apply proof by contradiction if the target is not already `False`
  let target ← goal.mvarId.getType
  unless target.isFalse do
    let mvarId ← if (← isProp target) then pure goal.mvarId else goal.mvarId.exfalso
    if let some mvarId ← mvarId.byContra? then
      -- `byContra?` produces `⊢ ¬target → False`, introduce the negated hypothesis
      let (_, mvarId) ← mvarId.intro1
      goal ← Goal.internalizeAll { goal with mvarId }
      seq := seq ++ [← `(grind| by_contra)]
  return (seq, goal)

@[builtin_grind_tactic finishTrace] def evalFinishTrace : GrindTactic := fun stx => do
  let `(grind| finish? $[$configItems]* $[only%$only]? $[[$params?,*]]?) := stx | throwUnsupportedSyntax
  withConfigItems configItems do
  let params := params?.getD {}
  withParams (← read).params params only.isSome do
    let a ← Action.mkFinish
    let goal ← getMainGoal
    let params := (← read).params
    let sym := (← read).sym
    withTracing do
    let solved ← liftGrindM do
      let saved ← saveState
      let (initSeq, goal') ← if sym then symInit goal else pure ([], goal)
      match (← a.run goal') with
      | .closed seq =>
        let seq := initSeq ++ seq
        let finishTac ← mkFinishTactic seq
        let seq := Action.mkGrindSeq seq
        if (← Action.checkSeqAt saved goal [finishTac]) then
          Tactic.TryThis.addSuggestions stx #[
            { suggestion := .tsyntax seq },
            { suggestion := .tsyntax finishTac }
          ]
        else
          Tactic.TryThis.addSuggestion stx { suggestion := .tsyntax seq }
        return true
      | .stuck gs =>
        let goal :: _ := gs | throwError "`finish?` failed, but resulting goal is not available"
        let result ← mkResult params (some goal)
        throwError "`finish?` failed\n{← result.toMessageData}"
        return false
    if solved then
      replaceMainGoal []

end Lean.Elab.Tactic.Grind
```
