# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Task.Variantaef1795c9e49c8881dbbbf2c40f4c6750968402f6eaeedbc3c805b79827e1cb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f679d6d4385a9b6a1175d4c34bbc7676a0d42707` · SHA-256 `db582f90837005889ee056a39a90d3f73cd174df3e8bd33771aac7c463843f98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsTask.Variant52c9646dfc92d6dac6f626ca6bad8dd4f4c19a88058232ebde5af6d1202e5cae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52c9646dfc92d6dac6f626ca6bad8dd4f4c19a88058232ebde5af6d1202e5cae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AsTask.Variant52c9646dfc92d6dac6f626ca6bad8dd4f4c19a88058232ebde5af6d1202e5cae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"52c9646dfc92d6dac6f626ca6bad8dd4f4c19a88058232ebde5af6d1202e5cae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Tactic.Basic

/-!
# Task creation utilities for Lean's tactic monads.

This file provides `asTask` and `asTask'` functions for various monads
(`CoreM`, `MetaM`, `TermElabM`, `TacticM`), which convert monadic computations
into tasks that run in parallel while preserving state.

Each `asTask` function returns:
* a cancellation hook and
* a `Task` containing a monadic value with the cached result and updated state

The `asTask'` variants omit the cancellation hook for convenience.

Note: Calling `IO.cancel` on `t.map f` does not cancel `t`,
so these functions are careful to construct cancellation hooks
connected to the underlying task rather than various maps of it.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsTask.Variant52c9646dfc92d6dac6f626ca6bad8dd4f4c19a88058232ebde5af6d1202e5cae

public section

namespace Lean.Core.CoreM

/--
Given a monadic value in `CoreM`, creates a task that runs it in the current state,
returning
* a cancellation hook and
* a monadic value with the cached result (and subsequent state as it was after running).

The task is run with a fresh `CancelToken` in its context, so it can detect cancellation
via `Core.checkInterrupted`. The cancellation hook sets this token.

Uses `Core.wrapAsync` internally to properly handle name generators and heartbeats.

Note: We only set the cancel token and don't call `IO.cancel task`. We're uncertain whether
`IO.cancel` is also necessary - it may be required for tasks that use `IO.checkCanceled`
instead of `Core.checkInterrupted`.
-/
def asTask (t : CoreM α) : CoreM (BaseIO Unit × Task (CoreM α)) := do
  let cancelToken ← IO.CancelToken.new
  -- Use wrapAsync to properly handle name generators and heartbeats,
  -- but modify it to return both the result and state
  let wrappedAct ← Core.wrapAsync (fun () => do let a ← t; let s ← get; return (a, s)) (some cancelToken)
  let task ← (wrappedAct ()).asTask
  -- Propagate parent cancel token to child: when the parent is cancelled,
  -- the child token is set too. This ensures that subtasks spawned via `asTask`
  -- respond to server-level cancellation (e.g. on re-elaboration).
  if let some parentTk := (← read).cancelTk? then
    parentTk.onSet cancelToken.set
  return (cancelToken.set, task.map (sync := true) fun result =>
    match result with
    | .ok (a, s) => do
        -- Set state to the task's state (not merging)
        set s
        return a
    | .error e => throw e)

/--
Given a monadic value in `CoreM`, creates a task that runs it in the current state,
returning a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask' (t : CoreM α) : CoreM (Task (CoreM α)) := (·.2) <$> asTask t

end Lean.Core.CoreM

namespace Lean.Meta.MetaM

/--
Given a monadic value in `MetaM`, creates a task that runs it in the current state,
returning
* a cancellation hook and
* a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask (t : MetaM α) : MetaM (BaseIO Unit × Task (MetaM α)) := do
  let (cancel, task) ← (t.run (← read) (← get)).asTask
  return (cancel, task.map (sync := true)
    fun c : CoreM (α × Meta.State) => do let (a, s) ← c; set s; pure a)

/--
Given a monadic value in `MetaM`, creates a task that runs it in the current state,
returning a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask' (t : MetaM α) : MetaM (Task (MetaM α)) := (·.2) <$> asTask t

end Lean.Meta.MetaM

namespace Lean.Elab.Term.TermElabM

/--
Given a monadic value in `TermElabM`, creates a task that runs it in the current state,
returning
* a cancellation hook and
* a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask (t : TermElabM α) : TermElabM (BaseIO Unit × Task (TermElabM α)) := do
  let (cancel, task) ← (t.run (← read) (← get)).asTask
  return (cancel, task.map (sync := true)
    fun c : MetaM (α × Term.State) => do let (a, s) ← c; set s; pure a)

/--
Given a monadic value in `TermElabM`, creates a task that runs it in the current state,
returning a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask' (t : TermElabM α) : TermElabM (Task (TermElabM α)) := (·.2) <$> asTask t

end Lean.Elab.Term.TermElabM

namespace Lean.Elab.Tactic.TacticM

/--
Given a monadic value in `TacticM`, creates a task that runs it in the current state,
returning
* a cancellation hook and
* a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask (t : TacticM α) : TacticM (BaseIO Unit × Task (TacticM α)) := do
  let (cancel, task) ← (t (← read) |>.run (← get)).asTask
  return (cancel, task.map (prio := .max)
    fun c : TermElabM (α × Tactic.State) => do let (a, s) ← c; set s; pure a)

/--
Given a monadic value in `TacticM`, creates a task that runs it in the current state,
returning a monadic value with the cached result (and subsequent state as it was after running).
-/
def asTask' (t : TacticM α) : TacticM (Task (TacticM α)) := (·.2) <$> asTask t

end Lean.Elab.Tactic.TacticM
```
