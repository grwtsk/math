# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variant9765e051367d8254ca339107326f2134e55bd1d7fee1abe0889cf53d31ca22e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `700ecf9be3b0628952f0cc9b32ce9cac99a07607` · SHA-256 `9765e051367d8254ca339107326f2134e55bd1d7fee1abe0889cf53d31ca22e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Fetch

/-! # Job Registration -/

namespace Lake

/--
Resets the job state after a checkpoint (e.g., registering the job).
Preserves state that downstream jobs want to depend on while resetting
job-local state that should not be inherited by downstream jobs.
-/
@[inline] public def JobState.renew (s : JobState) : JobState where
  trace := s.trace.withoutInputs

/--
Resets the job's state after a checkpoint (e.g., registering the job).
Preserves information that downstream jobs want to depend on while resetting
job-local information that should not be inherited by downstream jobs.
-/
public def Job.renew (self : Job α) : Job α :=
  have : OptDataKind α := self.kind
  self.mapResult (sync := true) fun
  | .ok a s => .ok a s.renew
  | .error _ s => .error 0 s.renew

/--
Registers the job for the top-level build monitor,
(e.g., the Lake CLI progress UI), assigning it `caption`.
-/
@[inline] public def registerJob
  [Monad m] [MonadLiftT (ST IO.RealWorld) m] [MonadBuild m]
  (caption : String) (job : Job α) (optional := false)
: m (Job α) := do
  let job : Job α := {job with caption, optional}
  (← getBuildContext).registeredJobs.modify (·.push job)
  return job.renew

/-- Wraps stray I/O, logs, and errors in `x` into the produced job.  -/
@[nospecialize] public def ensureJob
  [OptDataKind α] (x : FetchM (Job α))
: FetchM (Job α) := .ofFn fun fetch pkg? stack store ctx log => do
  let iniPos := log.endPos
  match (← (withLoggedIO x).toFn fetch pkg? stack store ctx log) with
  | .ok job log =>
    if iniPos < log.endPos then
      let (log, jobLog) := log.split iniPos
      let job := job.mapResult (sync := true) (·.prependLog jobLog)
      return .ok job log
    else
      return .ok job log
  | .error _ log =>
    let (log, jobLog) := log.split iniPos
    return .ok (.error jobLog) log

/--
Registers the produced job for the top-level build monitor
(e.g., the Lake CLI progress UI), assigning it `caption`.

Stray I/O, logs, and errors produced by `x` will be wrapped into the job.
-/
@[inline] public def withRegisterJob
  [OptDataKind α] (caption : String) (x : FetchM (Job α)) (optional := false)
: FetchM (Job α) := do
  let job ← ensureJob x
  registerJob caption job optional

/--
Registers the produced job for the top-level build monitor
if it is not already (i.e., it has an empty caption).
-/
@[inline] public def maybeRegisterJob
  (caption : String) (job : Job α)
: FetchM (Job α) := do
  if job.caption.isEmpty then
    registerJob caption job
  else
    return job
```
