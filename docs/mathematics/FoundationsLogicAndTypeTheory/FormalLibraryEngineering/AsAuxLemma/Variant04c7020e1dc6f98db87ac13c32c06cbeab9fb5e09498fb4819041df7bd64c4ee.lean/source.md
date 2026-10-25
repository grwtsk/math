# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsAuxLemma.Variant04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f043d96f183d528e71f354dcb99c5eb478b02b` · SHA-256 `04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
public import Lean.Elab.Tactic.Meta

public section

open Lean Meta Elab Tactic Parser.Tactic

namespace Lean.Elab.Tactic

@[builtin_tactic as_aux_lemma]
def elabAsAuxLemma : Lean.Elab.Tactic.Tactic
| `(tactic| as_aux_lemma => $s) => withMainContext do
  let mvarId ← getMainGoal
  let mvars ← Tactic.run mvarId (evalTactic s)
  unless mvars.isEmpty do
    throwError "Cannot abstract term into auxiliary lemma because there are open goals."
  let e ← instantiateMVars (mkMVar mvarId)
  let e ← mkAuxTheorem (← mvarId.getType) e
  mvarId.assign e
| _ => throwError "Invalid as_aux_lemma syntax"

end Lean.Elab.Tactic
```
