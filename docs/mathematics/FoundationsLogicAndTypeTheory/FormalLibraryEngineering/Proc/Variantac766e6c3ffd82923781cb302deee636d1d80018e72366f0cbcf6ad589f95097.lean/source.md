# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proc.Variantac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ec2cba3546f9067f6121c1b9f6c2bd7122293ba` · SHA-256 `ac766e6c3ffd82923781cb302deee636d1d80018e72366f0cbcf6ad589f95097`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Sebastian Ullrich, Mac Malone
-/
module

prelude
public import Lake.Util.Log
import Init.Data.String.TakeDrop

namespace Lake

public def mkCmdLog (args : IO.Process.SpawnArgs) : String :=
  let envStr := String.join <| args.env.toList.map fun (k, v) =>
    if k == "PATH" then "PATH " else s!"{k}={v.getD ""} " -- PATH too big
  let cmdStr := " ".intercalate (args.cmd :: args.args.toList)
  let cwd := args.cwd.getD "."
  s!"{cwd}> {envStr}{cmdStr}"

@[inline] public def logOutput
  [Monad m] (out : IO.Process.Output) (log : String → m PUnit)
: m Unit := do
  unless out.stdout.isEmpty do
    log s!"stdout:\n{out.stdout.trimAscii}"
  unless out.stderr.isEmpty do
    log s!"stderr:\n{out.stderr.trimAscii}"

@[inline] public def rawProc
  (args : IO.Process.SpawnArgs) (quiet := false) (input? : Option String := none)
: LogIO IO.Process.Output := do
  withLogErrorPos do
  unless quiet do logVerbose (mkCmdLog args)
  match (← IO.Process.output args input? |>.toBaseIO) with
  | .ok out => return out
  | .error err => error s!"failed to execute '{args.cmd}': {err}"

public def proc
  (args : IO.Process.SpawnArgs) (quiet := false) (input? : Option String := none)
: LogIO Unit := do
  withLogErrorPos do
  let out ← rawProc args (input? := input?)
  if out.exitCode = 0 then
    logOutput out (if quiet then logVerbose else logInfo)
  else
    logOutput out logInfo
    error s!"external command '{args.cmd}' exited with code {out.exitCode}"

public def captureProc' (args : IO.Process.SpawnArgs) : LogIO (IO.Process.Output) := do
  let out ← rawProc args (quiet := true)
  if out.exitCode = 0 then
    return out
  else errorWithLog do
    logVerbose (mkCmdLog args)
    logOutput out logInfo
    logError s!"external command '{args.cmd}' exited with code {out.exitCode}"

@[inline] public def captureProc (args : IO.Process.SpawnArgs) : LogIO String := do
  return (← captureProc' args).stdout.trimAscii.copy -- remove, e.g., newline at end

public def captureProc? (args : IO.Process.SpawnArgs) : BaseIO (Option String) := do
  EIO.catchExceptions (h := fun _ => pure none) do
    let out ← IO.Process.output args
    if out.exitCode = 0 then
      return some out.stdout.trimAscii.copy -- remove, e.g., newline at end
    else
      return none

public def testProc (args : IO.Process.SpawnArgs) : BaseIO Bool :=
  EIO.catchExceptions (h := fun _ => pure false) do
    let child ← IO.Process.spawn {
      args with
      stdin := IO.Process.Stdio.null
      stdout := IO.Process.Stdio.null
      stderr := IO.Process.Stdio.null
    }
    return (← child.wait) == 0
```
