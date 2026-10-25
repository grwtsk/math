# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticState.Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd` · SHA-256 `dbe98e98dbd5258145dc10a8c6a559e1b8a79aae1499c3121306e04444838002`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticState.Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TacticState.Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/TacticState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022--2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

import Batteries.Lean.Meta.Basic
public import Aesop.Script.GoalWithMVars
import Lean.Meta.CollectMVars


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticState.Variantaca2291287516db2491c648170b3d169139488d029800de3e0bfe2e02e24e851

public section

open Lean

namespace Aesop.Script

variable [Monad m] [MonadError m]

structure TacticState where
  visibleGoals : Array GoalWithMVars
  invisibleGoals : Std.HashSet MVarId
  deriving Inhabited

namespace TacticState

def mkInitial (goal : MVarId) : MetaM TacticState :=
  return {
    visibleGoals := #[⟨goal, ← goal.getMVarDependencies⟩]
    invisibleGoals := ∅
  }

private def throwUnknownGoalError (goal : MVarId) (pre : MessageData) : m α :=
  throwError "internal error: {pre}: unknown goal '?{goal.name}'"

def getVisibleGoalIndex? (ts : TacticState) (goal : MVarId) : Option Nat :=
  ts.visibleGoals.findIdx? (·.goal == goal)

def getVisibleGoalIndex (ts : TacticState) (goal : MVarId) : m Nat := do
  if let (some idx) := ts.getVisibleGoalIndex? goal then
    return idx
  else
    throwUnknownGoalError goal "getVisibleGoalIndex"

def getMainGoal? (ts : TacticState) : Option MVarId :=
  ts.visibleGoals[0]?.map (·.goal)

def visibleGoalsHaveMVars (ts : TacticState) : Bool :=
  ts.visibleGoals.any λ g => ! g.mvars.isEmpty

def solveVisibleGoals (ts : TacticState) : TacticState :=
  { ts with visibleGoals := #[] }

private def replaceWithArray [BEq α] (xs : Array α) (x : α) (r : Array α) :
    Option (Array α) := Id.run do
  let mut found := false
  let mut ys := Array.mkEmpty (xs.size - 1 + r.size)
  for x' in xs do
    if x' == x then
      ys := ys ++ r
      found := true
    else
      ys := ys.push x'
  return if found then some ys else none

def eraseSolvedGoals (ts : TacticState) (preMCtx postMCtx : MetavarContext) :
    TacticState := {
  ts with
  visibleGoals := ts.visibleGoals.filter (! mvarWasSolved ·.goal)
  invisibleGoals := ts.invisibleGoals.filter (! mvarWasSolved ·)
}
where
  mvarWasSolved (mvarId : MVarId) : Bool :=
    postMCtx.isExprMVarAssignedOrDelayedAssigned mvarId &&
    ! preMCtx.isExprMVarAssignedOrDelayedAssigned mvarId

def applyTactic (ts : TacticState) (inGoal : MVarId)
    (outGoals : Array GoalWithMVars) (preMCtx postMCtx : MetavarContext) :
    m TacticState := do
  let (some visibleGoals) :=
        replaceWithArray ts.visibleGoals ⟨inGoal, {}⟩ outGoals
    | throwUnknownGoalError inGoal "applyTactic"
  let ts := { ts with visibleGoals }
  return eraseSolvedGoals ts preMCtx postMCtx

-- Focus the visible goal `goal` and move all other previously visible goals
-- to `invisibleGoals`.
def focus (ts : TacticState) (goal : MVarId) : m TacticState := do
  let (some goalWithMVars) := ts.visibleGoals.find? (·.goal == goal)
    | throwUnknownGoalError goal "focus"
  let mut invisibleGoals := ts.invisibleGoals
  for g in ts.visibleGoals do
    if g.goal != goal then
      invisibleGoals := invisibleGoals.insert g.goal
  return { visibleGoals := #[goalWithMVars], invisibleGoals }

@[inline, always_inline]
def onGoalM (ts : TacticState) (g : MVarId)
    (f : TacticState → m (α × TacticState)) : m (α × TacticState) := do
  let (a, postTs) ← f (← ts.focus g)
  let mut visibleGoals := #[]
  for preGoal in ts.visibleGoals do
    if preGoal.goal == g then
      visibleGoals := visibleGoals ++ postTs.visibleGoals
    else if postTs.invisibleGoals.contains preGoal.goal then
      visibleGoals := visibleGoals.push preGoal
  let mut invisibleGoals := ∅
  for g in ts.invisibleGoals do
    if postTs.invisibleGoals.contains g then
      invisibleGoals := invisibleGoals.insert g
  return (a, { visibleGoals, invisibleGoals })

end Aesop.Script.TacticState
```
