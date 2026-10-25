# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Process.Variantf0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `175259188422ddf191777b5e5e1d9b6a6efe8c8a` · SHA-256 `f0ef3d34f45e6fb1e0c7f0b01ba55cc3fe2c4e9dc06c67c0ca5cddb176cb15cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

@[expose] public section

/-!
# Running external commands.
-/

namespace IO.Process

open System (FilePath)

/--
Pipe `input` into stdin of the spawned process,
then return `(exitCode, stdout, stdErr)` upon completion.
-/
def runCmdWithInput' (cmd : String) (args : Array String)
    (input : String := "") (throwFailure := true) : IO Output := do
  let child ← spawn
    { cmd := cmd, args := args, stdin := .piped, stdout := .piped, stderr := .piped }
  let (stdin, child) ← child.takeStdin
  stdin.putStr input
  stdin.flush
  let stdout ← IO.asTask child.stdout.readToEnd Task.Priority.dedicated
  let err ← child.stderr.readToEnd
  let exitCode ← child.wait
  if exitCode != 0 && throwFailure then
    throw $ IO.userError err
  else
    let out ← IO.ofExcept stdout.get
    return ⟨exitCode, out, err⟩

/--
Pipe `input` into stdin of the spawned process,
then return the entire content of stdout as a `String` upon completion.
-/
def runCmdWithInput (cmd : String) (args : Array String)
    (input : String := "") (throwFailure := true) : IO String := do
  return (← runCmdWithInput' cmd args input throwFailure).stdout
```
