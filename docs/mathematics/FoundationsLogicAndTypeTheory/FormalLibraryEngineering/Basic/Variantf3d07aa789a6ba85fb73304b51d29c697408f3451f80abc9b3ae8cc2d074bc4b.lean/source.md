# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantf3d07aa789a6ba85fb73304b51d29c697408f3451f80abc9b3ae8cc2d074bc4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4b1b832848c2c30350fd3b87d9579278b0c9eb7` · SHA-256 `7704441593519a9535f161722f19661dcfd6fd0c86a017f19aa0c283e266b91c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MStartResult.Variant9ffa303829c2136f0e5cd7fc7795cd91bc9c660f46660d27941670900328c79a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ffa303829c2136f0e5cd7fc7795cd91bc9c660f46660d27941670900328c79a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MStartResult.Variant9ffa303829c2136f0e5cd7fc7795cd91bc9c660f46660d27941670900328c79a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9ffa303829c2136f0e5cd7fc7795cd91bc9c660f46660d27941670900328c79a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.MGoal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MStartResult.Variant9ffa303829c2136f0e5cd7fc7795cd91bc9c660f46660d27941670900328c79a

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab.Tactic Meta

structure MStartResult where
  goal : MGoal
  proof? : Option Expr := none

def mStart (goal : Expr) : MetaM MStartResult := do
  -- check if already in proof mode
  if let some mgoal := parseMGoal? goal then
    return { goal := mgoal }

  let u ← mkFreshLevelMVar
  let σs ← mkFreshExprMVar (TypeList.mkType u)
  let P ← mkFreshExprMVar (mkApp (mkConst ``SPred [u]) σs)
  let inst ← synthInstance (mkApp3 (mkConst ``PropAsSPredTautology [u]) goal σs P)
  let u ← instantiateLevelMVars u
  let prf := mkApp4 (mkConst ``ProofMode.start_entails [u]) σs P goal inst
  let goal : MGoal := { u, σs, hyps := emptyHyp u σs, target := ← instantiateMVars P }
  return { goal, proof? := some prf }

def mStartMVar (mvar : MVarId) : MetaM (MVarId × MGoal) := mvar.withContext do
  let goal ← instantiateMVars <| ← mvar.getType
  unless ← isProp goal do
    throwError "The goal type of `{mkMVar mvar}` is not a proposition. It has type `{← inferType goal}`."

  let result ← mStart goal
  if let some proof := result.proof? then
    let subgoal ←
      mkFreshExprSyntheticOpaqueMVar result.goal.toExpr (← mvar.getTag)
    mvar.assign (mkApp proof subgoal)
    return (subgoal.mvarId!, result.goal)
  else
    return (mvar, result.goal)

def mStartMainGoal : TacticM (MVarId × MGoal) := do
  let (mvar, goal) ← mStartMVar (← getMainGoal)
  replaceMainGoal [mvar]
  return (mvar, goal)

@[builtin_tactic Lean.Parser.Tactic.mstart]
def elabMStart : Tactic | _ => discard mStartMainGoal

@[builtin_tactic Lean.Parser.Tactic.mstop]
def elabMStop : Tactic | _ => do
  -- parse goal
  let mvar ← getMainGoal
  mvar.withContext do
  let goal ← instantiateMVars <| ← mvar.getType

  -- check if already in proof mode
  let some mgoal := parseMGoal? goal | throwError "not in proof mode"
  mvar.setType mgoal.strip
```
