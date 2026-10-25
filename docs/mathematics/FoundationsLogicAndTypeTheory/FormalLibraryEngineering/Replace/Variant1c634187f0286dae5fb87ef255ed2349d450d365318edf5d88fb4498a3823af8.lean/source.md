# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variant1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `150bb27671e9f09e4efc1b11828a6206d2d510d4` · SHA-256 `1c634187f0286dae5fb87ef255ed2349d450d365318edf5d88fb4498a3823af8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Mario Carneiro
-/
import Mathlib.Tactic.Have

/-!
# Extending `replace`

This file extends the `replace` tactic from `Batteries` to allow the addition of hypotheses to
the context without requiring their proofs to be provided immediately.

As a style choice, this should not be used in mathlib; but is provided for downstream users who
preferred the old style.
-/

namespace Mathlib.Tactic

open Lean Elab.Tactic

/--
Acts like `have`, but removes a hypothesis with the same name as
this one if possible. For example, if the state is:

Then after `replace h : β` the state will be:

```lean
case h
f : α → β
h : α
⊢ β

f : α → β
h : β
⊢ goal
```

whereas `have h : β` would result in:

```lean
case h
f : α → β
h : α
⊢ β

f : α → β
h✝ : α
h : β
⊢ goal
```
-/
syntax (name := replace') "replace" haveIdLhs' : tactic

elab_rules : tactic
| `(tactic| replace $n:optBinderIdent $bs* $[: $t:term]?) => withMainContext do
    let (goal1, goal2) ← haveLetCore (← getMainGoal) n bs t false
    let name := optBinderIdent.name n
    let hId? := (← getLCtx).findFromUserName? name |>.map fun d ↦ d.fvarId
    match hId? with
    | some hId => replaceMainGoal [goal1, (← observing? <| goal2.clear hId).getD goal2]
    | none     => replaceMainGoal [goal1, goal2]

end Mathlib.Tactic
````
