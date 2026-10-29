-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrosResult.Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntrosResult.Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Grind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
public import Lean.Meta.Sym.Simp.SimpM
public import Lean.Meta.Sym.Apply
import Lean.Meta.Tactic.Grind.Main
import Lean.Meta.Sym.Simp.Goal
import Lean.Meta.Sym.Intro
import Lean.Meta.Sym.Util
import Lean.Meta.Tactic.Grind.Solve
import Lean.Meta.Tactic.Assumption

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntrosResult.Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50

namespace Lean.Meta.Grind

/-!
# Grind Goal API for Symbolic Simulation

This module provides an API for building symbolic simulation engines and
verification condition generators on top of `grind`. It wraps `Sym` operations
to work with `grind`'s `Goal` type, enabling users to carry `grind` state
through symbolic execution while using lightweight `Sym` operations for
the main loop.

## Typical usage pattern
```
let goal ← mkGoal mvarId
let .goal xs goal ← goal.introN 2 | failure
let .goal goal ← goal.simp methods | failure
let goal ← goal.internalizeAll
-- ... symbolic execution loop using goal.apply ...
let .closed ← goal.grind | failure
```

## Design

Operations like `introN`, `apply`, and `simp` run in `SymM` for performance.
`internalize` and `grind` run in `GrindM` to access the E-graph.
-/


/--
Creates a `Goal` from an `MVarId`, applying `Sym` preprocessing.
Preprocessing ensures the goal is compatible with `Sym` operations.
-/
public def mkGoal (mvarId : MVarId) : GrindM Goal := do
  let mvarId ← Sym.preprocessMVar mvarId
  mkGoalCore mvarId

open Sym (SymM)

public inductive IntrosResult where
  | failed
  | goal (newDecls : Array FVarId) (goal : Goal)

/-- Introduces `num` binders from the goal's target. -/
public def Goal.introN (goal : Goal) (num : Nat) (hygienic : Bool := true) : SymM IntrosResult := do
  let .goal xs mvarId ← Sym.introN goal.mvarId num hygienic | return .failed
  return .goal xs { goal with mvarId }

/-- Introduces binders with the specified names. -/
public def Goal.intros (goal : Goal) (names : Array Name) (hygienic : Bool := true) : SymM IntrosResult := do
  let .goal xs mvarId ← Sym.intros goal.mvarId names hygienic | return .failed
  return .goal xs { goal with mvarId }

public inductive ApplyResult where
  | failed
  | goals (subgoals : List Goal)

/-- Applies a backward rule, returning subgoals on success. -/
public def Goal.apply (goal : Goal) (rule : Sym.BackwardRule) : SymM ApplyResult := do
  let .goals mvarIds ← rule.apply goal.mvarId | return .failed
  return .goals <| mvarIds.map fun mvarId => { goal with mvarId }

public inductive SimpGoalResult where
  | noProgress
  | closed
  | goal (goal : Goal)

/-- Simplifies the goal using the given methods. -/
public def Goal.simp (goal : Goal) (methods : Sym.Simp.Methods := {}) (config : Sym.Simp.Config := {}) : SymM SimpGoalResult := do
  match (← Sym.simpGoal goal.mvarId methods config) with
  | .goal mvarId => return .goal { goal with mvarId }
  | .noProgress  => return .noProgress
  | .closed => return .closed

/-- Like `simp`, but returns the original goal unchanged when no progress is made. -/
public def Goal.simpIgnoringNoProgress (goal : Goal) (methods : Sym.Simp.Methods := {}) (config : Sym.Simp.Config := {}) : SymM SimpGoalResult := do
  match (← Sym.simpGoal goal.mvarId methods config) with
  | .goal mvarId => return .goal { goal with mvarId }
  | .noProgress  => return .goal goal
  | .closed => return .closed

/--
Internalizes the next `num` hypotheses from the local context into the `grind` state (e.g., its E-graph).
-/
public def Goal.internalize (goal : Goal) (num : Nat) : GrindM Goal := do
  Grind.processHypotheses goal (some num)

/-- Internalizes all (un-internalized) hypotheses from the local context into the `grind` state. -/
public def Goal.internalizeAll (goal : Goal) : GrindM Goal := do
  Grind.processHypotheses goal none

public inductive GrindResult where
  | failed (goal : Goal)
  | closed

/--
Attempts to close the goal using `grind`.
Returns `.closed` on success, or `.failed` with the first subgoal that failed to be closed.
-/
public def Goal.grind (goal : Goal) : GrindM GrindResult := do
  if let some failure ← solve goal then
    return .failed failure
  else
    return .closed

/--
Closes the goal if its target matches a hypothesis.
Returns `true` on success.
-/
public def Goal.assumption (goal : Goal) : MetaM Bool := do
  -- **TODO**: add indexing
  goal.mvarId.assumptionCore

end Lean.Meta.Grind
