# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructor.Variantec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64adccae545b703b2e54688b552ee6666bb6fe60` · SHA-256 `ec1931f7524867b495f7ca55269cd9f47b7c7dfee6a1c83c1f5017bf86d4fa42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Newell Jensen
-/
import Mathlib.Init
import Lean.Elab.SyntheticMVars
import Lean.Meta.Tactic.Constructor

/-!
# The `fconstructor` and `econstructor` tactics

The `fconstructor` and `econstructor` tactics are variants of the `constructor` tactic in Lean core,
except that
- `fconstructor` does not reorder goals
- `econstructor` adds only non-dependent premises as new goals.
-/

open Lean Elab Tactic

/--
`fconstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except that it does not reorder goals.
-/
elab "fconstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .all}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'

/--
`econstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except only non-dependent premises are added as new goals.
-/
elab "econstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .nonDependentOnly}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'
```
