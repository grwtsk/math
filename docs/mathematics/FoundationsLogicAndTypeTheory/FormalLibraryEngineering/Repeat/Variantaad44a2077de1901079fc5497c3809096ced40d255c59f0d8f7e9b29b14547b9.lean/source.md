# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variantaad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0ff6f859254284f492689915c2accab3a11e836` · SHA-256 `aad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Repeat
public import Lean.Elab.Tactic.Basic

public section

namespace Lean.Elab.Tactic

@[builtin_tactic tacticRepeat_]
def evalRepeat : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat $tac:tacticSeq) =>
    withoutRecover do
      while true do
          try
            evalTactic tac
          catch _ =>
            break
  | _ => throwUnsupportedSyntax

@[builtin_tactic repeat']
def evalRepeat' : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat' $tac:tacticSeq) =>
     setGoals (← Meta.repeat' (evalTacticAtRaw tac) (← getGoals))
  | _ => throwUnsupportedSyntax

@[builtin_tactic repeat1']
def evalRepeat1' : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat1' $tac:tacticSeq) =>
    setGoals (← Meta.repeat1' (evalTacticAtRaw tac) (← getGoals))
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```
