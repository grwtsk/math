# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exact.Variantbac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `563d00a3f4962390587d55543939dced11aad3c9` · SHA-256 `bac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Batteries.Tactic.Alias

public meta section

/-! # `exact` tactic (`MetaM` version) -/

open Lean Meta

/--
`MetaM` version of `Lean.Elab.Tactic.evalExact`: add `mvarId := x` to the metavariable assignment.
This method wraps `Lean.MVarId.assign`, checking whether `mvarId` is already assigned, and whether
the expression has the right type. -/
def Lean.MVarId.assignIfDefEq (g : MVarId) (e : Expr) : MetaM Unit := do
  guard <| ← isDefEq (← g.getType) (← inferType e)
  g.checkNotAssigned `assignIfDefEq
  g.assign e
```
