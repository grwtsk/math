# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Varianta0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2b8d4fdbbef54cb2e29bc95c2e8c6479975a60` · SHA-256 `a0eb34543f718d7236da4078be900b6c199f7d8670c97fd070a9e886bcd82b18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Change
public import Lean.Elab.Tactic.Conv.Basic

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.change] def evalChange : Tactic := fun stx => do
  match stx with
  | `(conv| change $e) => withMainContext do
    let lhs ← getLhs
    let mvarCounterSaved := (← getMCtx).mvarCounter
    let lhs' ← elabChange lhs e
    logUnassignedAndAbort (← filterOldMVars (← getMVars lhs') mvarCounterSaved)
    changeLhs lhs'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Conv
```
