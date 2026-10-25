# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScript.Variantfc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91e720bbe8c687349d937ba0fdf7866ae9cfb215` · SHA-256 `fc59c178a83442d842c44923ecaa7c358385b7ee92ece83971ee4153ff492610`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Script.Step
import Batteries.Lean.Meta.SavedState

public section

open Lean Lean.Meta
open Lean.Parser.Tactic (tacticSeq)

namespace Aesop.Script

abbrev UScript := Array Step

namespace UScript

variable [Monad m] [MonadError m] [MonadQuotation m] in
def render (tacticState : TacticState) (s : UScript) :
    m (Array Syntax.Tactic) := do
  let mut script := Array.mkEmpty s.size
  let mut tacticState := tacticState
  for step in s do
    let (script', tacticState') ← step.render script tacticState
    script := script'
    tacticState := tacticState'
  return script

def renderTacticSeq (uscript : UScript) (preState : Meta.SavedState)
    (goal : MVarId) : MetaM (TSyntax ``tacticSeq) := do
  let tacticState ← preState.runMetaM' $ Script.TacticState.mkInitial goal
  `(tacticSeq| $(← uscript.render tacticState):tactic*)

def validate (s : UScript) : MetaM Unit :=
  s.forM (·.validate)

end Aesop.Script.UScript
```
