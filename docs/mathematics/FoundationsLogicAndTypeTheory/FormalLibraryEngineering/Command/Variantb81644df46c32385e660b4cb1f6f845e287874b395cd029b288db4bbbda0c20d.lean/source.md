# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantb81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e005994272d9643fde3eb2032c80f0264ff9ee6` · SHA-256 `b81644df46c32385e660b4cb1f6f845e287874b395cd029b288db4bbbda0c20d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Command
import Lean.Elab.SetOption

namespace Lean
open Elab Command MonadRecDepth

/--
Lift an action in `CommandElabM` into `CoreM`, updating the traces and the environment.
This does not preserve things like `open` and `namespace` declarations.
-/
def liftCommandElabM (k : CommandElabM α) : CoreM α := do
  let (a, commandState) ←
    k.run {
      fileName := ← getFileName
      fileMap := ← getFileMap
      ref := ← getRef
      tacticCache? := none
    } |>.run {
      env := ← getEnv
      maxRecDepth := ← getMaxRecDepth
      scopes := [{ header := "", opts := ← getOptions }]
    }
  modify fun coreState => { coreState with
    traceState.traces := coreState.traceState.traces ++ commandState.traceState.traces
    env := commandState.env
  }
  if let some err := commandState.messages.msgs.toArray.find? (·.severity matches .error) then
    throwError err.data
  pure a

/--
Evaluate any `set_option in` commands before the given `stx`, and pass the inner `stx` with the
updated environment to the continuation `k`.
-/
partial def withSetOptionIn (k : CommandElab) : CommandElab := fun stx => do
  if stx.getKind == ``Lean.Parser.Command.in &&
     stx[0].getKind == ``Lean.Parser.Command.set_option then
      let opts ← Elab.elabSetOption stx[0][1] stx[0][2]
      Command.withScope (fun scope => { scope with opts }) do
        withSetOptionIn k stx[1]
  else
    k stx
```
