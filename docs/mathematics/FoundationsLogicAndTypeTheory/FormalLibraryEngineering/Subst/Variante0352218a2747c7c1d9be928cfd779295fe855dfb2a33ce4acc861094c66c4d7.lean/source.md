# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Subst.Variante0352218a2747c7c1d9be928cfd779295fe855dfb2a33ce4acc861094c66c4d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a08e24b29d1f69f18b5043ab6210bb20a46aa22` · SHA-256 `0c40131d35f8a668694066091e4f01442c00a48119fdf6d605fc5635163eb699`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Subst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022--2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute
public meta import Aesop.RuleTac.Forward.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Varianteac974cebafc3a49e9a5e7293ddc1033a41050891c8fd1ef0426f52ef99dc6c9

public section

open Lean Lean.Meta Aesop.Script

namespace Aesop.BuiltinRules

meta def matchSubstitutableIff? (e : Expr) : Option (Expr × Expr) := do
  let some (lhs, rhs) := e.iff?
    | failure
  if lhs.isFVar || rhs.isFVar then
    return (lhs, rhs)
  else
    failure

meta def prepareIff? (mvarId : MVarId) (fvarId : FVarId) :
    ScriptM (Option (MVarId × FVarId)) :=
  mvarId.withContext do
    let ty ← fvarId.getType
    let some (lhs, rhs) ← matchHelper? ty (pure ∘ matchSubstitutableIff?)
      | return none
    let eqPrf ← mkPropExt (.fvar fvarId)
    let eqType ← mkEq lhs rhs
    let preState ← show MetaM _ from saveState
    let (newMVarId, newFVarId, clearSuccess) ←
      replaceFVarS mvarId fvarId eqType eqPrf
    if ! clearSuccess then
      preState.restore
      return none
    return some (newMVarId, newFVarId)

meta def prepareIffs (mvarId : MVarId) (fvarIds : Array FVarId) :
    ScriptM (MVarId × Array FVarId) := do
  let mut mvarId := mvarId
  let mut newFVarIds := Array.mkEmpty fvarIds.size
  for fvarId in fvarIds do
    if let some (newMVarId, newFVarId) ← prepareIff? mvarId fvarId then
      mvarId := newMVarId
      newFVarIds := newFVarIds.push newFVarId
    else
      newFVarIds := newFVarIds.push fvarId
  return (mvarId, newFVarIds)

meta def substEqs? (goal : MVarId) (fvarIds : Array FVarId) :
    ScriptM (Option MVarId) := do
  let preGoal := goal
  let preState ← show MetaM _ from saveState
  let userNames ← goal.withContext do fvarIds.mapM (·.getUserName)
  let mut goal := goal
  let mut substitutedUserNames := Array.mkEmpty userNames.size
  for userName in userNames do
    let ldecl ← goal.withContext $ getLocalDeclFromUserName userName
    if let some goal' ← subst? goal ldecl.fvarId then
      goal := goal'
      substitutedUserNames := substitutedUserNames.push userName
  if goal == preGoal then
    return none
  goal ← hideForwardImplDetailHyps goal -- HACK
  let postState ← show MetaM _ from saveState
  recordScriptStep {
    postGoals := #[goal]
    tacticBuilders := #[TacticBuilder.substFVars' substitutedUserNames]
    preGoal, preState, postState
  }
  return goal

meta def substEqsAndIffs? (goal : MVarId) (fvarIds : Array FVarId) :
    ScriptM (Option MVarId) := do
  let preState ← show MetaM _ from saveState
  let (goal, fvarIds) ← prepareIffs goal fvarIds
  if let some goal ← substEqs? goal fvarIds then
    return goal
  else
    preState.restore
    return none

@[aesop (rule_sets := [builtin]) norm -50 tactic (index := [hyp _ = _, hyp _ ↔ _])]
meta def subst : RuleTac := RuleTac.ofSingleRuleTac λ input =>
  input.goal.withContext do
    let hyps ← input.indexMatchLocations.mapM λ
      | .hyp ldecl => pure ldecl.fvarId
      | _ => throwError "unexpected index match location"
    let (some goal, steps) ← substEqsAndIffs? input.goal hyps |>.run
      | throwError "no suitable hypothesis found"
    -- TODO we can construct a better diff here, and doing so would be important
    -- since `subst` often renames fvars.
    let goal ← mvarIdToSubgoal input.goal goal
    return (#[goal], steps, none)

end Aesop.BuiltinRules
```
