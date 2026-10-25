# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recover.Variant6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88d2b8a17f6c11830452d22a41c14144f4e4e8bc` · SHA-256 `6a4ff530ab6dbdf9629cea523617dcdc20e2cc8aa2d21be76b76926f4a788cde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Siddhartha Gadgil, Jannis Limperg
-/
import Lean
import Std.Tactic.RCases
import Mathlib.Tactic.Cache

open Lean (HashSet)
open Lean Meta Elab Tactic

namespace Mathlib.Tactic

/--
Get all metavariables which `mvarId` depends on. These are the metavariables
which occur in the target or local context or delayed assignment (if any) of
`mvarId`, plus the metavariables which occur in these metavariables, etc.
-/
partial def getUnassignedGoalMVarDependencies (mvarId : MVarId) :
    MetaM (HashSet MVarId) :=
  return (← go mvarId |>.run {}).snd
  where
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    addMVars (e : Expr) : StateRefT (HashSet MVarId) MetaM Unit := do
      let mvars ← getMVars e
      let mut s ← get
      set ({} : HashSet MVarId) -- Ensure that `s` is not shared.
      for mvarId in mvars do
        unless ← mvarId.isDelayedAssigned do
          s := s.insert mvarId
      set s
      mvars.forM go
    /-- auxiliary function for `getUnassignedGoalMVarDependencies` -/
    go (mvarId : MVarId) : StateRefT (HashSet MVarId) MetaM Unit :=
      withIncRecDepth do
        let mdecl ← mvarId.getDecl
        addMVars mdecl.type
        for ldecl in mdecl.lctx do
          addMVars ldecl.type
          if let (some val) := ldecl.value? then
            addMVars val
        if let (some ass) ← getDelayedMVarAssignment? mvarId then
          let pendingMVarId := ass.mvarIdPending
          unless ← pendingMVarId.isAssigned <||> pendingMVarId.isDelayedAssigned do
            modify (·.insert pendingMVarId)
          go pendingMVarId

/-- Modifier `recover` for a tactic (sequence) to debug cases where goals are closed incorrectly.
The tactic `recover tacs` for a tactic (sequence) tacs applies the tactics and then adds goals
that are not closed starting from the original -/
elab "recover " tacs:tacticSeq : tactic => do
  let originalGoals ← getGoals
  evalTactic tacs
  let mut unassigned : HashSet MVarId := {}
  for mvarId in originalGoals do
    unless ← mvarId.isAssigned <||> mvarId.isDelayedAssigned do
      unassigned := unassigned.insert mvarId
    let unassignedMVarDependencies ← getUnassignedGoalMVarDependencies mvarId
    unassigned := unassigned.insertMany unassignedMVarDependencies.toList
  setGoals <| ((← getGoals) ++ unassigned.toList).eraseDups
```
