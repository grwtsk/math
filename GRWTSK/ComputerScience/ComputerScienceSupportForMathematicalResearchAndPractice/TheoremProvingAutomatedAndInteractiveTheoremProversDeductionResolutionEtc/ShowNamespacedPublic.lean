-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabShow.Variant6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabShow.Variant6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Show.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Arnez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Arnez
-/
module

prelude
public import Lean.Elab.Tactic.Change


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabShow.Variant6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27

public section

namespace Lean.Elab.Tactic
open Meta
/-!
# Implementation of the `show` tactic

The `show p` tactic finds the first goal that `p` unifies with and brings it to the front of the
goal list. If there were a `first_goal` combinator, it would be like `first_goal change p`.
-/

def elabShow (newType : Term) : TacticM Unit := do
  let goals@(goal :: _) ← getGoals | throwNoGoalsToBeSolved
  go newType goal goals []
where
  go (newType : Term) (firstGoal : MVarId) (goals : List MVarId) (prevRev : List MVarId) : TacticM Unit := do
    match goals with
    | [] =>
      -- re-run first goal for error message
      tryGoal newType firstGoal (← getGoals).tail [] manyError
    | goal :: goals =>
      if goals.isEmpty && (prevRev.isEmpty || !(← read).recover) then
        -- optimization for single goal / last goal without error recovery
        tryGoal newType goal goals prevRev simpleError
      else
        /-
        Save state manually to make sure that the info state is reverted,
        since `elabChange` elaborates the pattern each time.
        -/
        let state ← saveState
        Tactic.tryCatch
          (withoutRecover (tryGoal newType goal goals prevRev simpleError))
          fun _ => do
            state.restore true
            go newType firstGoal goals (goal :: prevRev)
  tryGoal (newType : Term) (goal : MVarId) (goals : List MVarId) (prevRev : List MVarId) (err : Expr → Expr → MetaM MessageData) : TacticM Unit := do
    let type ← goal.getType
    let tag ← goal.getTag
    goal.withContext do
      let (tgt', mvars) ← withCollectingNewGoalsFrom
        (elabChange type newType err)
        tag `show
      let goal' ← goal.replaceTargetDefEq tgt'
      let newGoals := goal' :: prevRev.reverseAux (mvars ++ goals)
      setGoals newGoals
  simpleError (p tgt : Expr) : MetaM MessageData := do
    return m!"\
      'show' tactic failed, pattern{indentExpr p}\n\
      is not definitionally equal to target{indentExpr tgt}"
  manyError (p tgt : Expr) : MetaM MessageData := do
    return m!"\
      'show' tactic failed, no goals unify with the given pattern.\n\
      \n\
      In the first goal, the pattern{indentExpr p}\n\
      is not definitionally equal to the target{indentExpr tgt}\n\
      (Errors for other goals omitted)"

@[builtin_tactic «show»] def evalShow : Tactic
  | `(tactic| show $newType:term) => elabShow newType
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
