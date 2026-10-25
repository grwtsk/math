# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapVar.Variantfb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96c6c0987b1800caec1b1183096ac0430d728f19` · SHA-256 `fb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Lean.Elab.ElabRules
import Mathlib.Util.Tactic

/-!
# Defines the `swap_var` tactic

Swap the names of two hypotheses.
-/

open Lean Meta Elab.Tactic

namespace Mathlib.Tactic

/-- The parser for swap rules -/
syntax swapRule := ident " ↔"? ppSpace ident

/--
`swap_var swap_rule₁, swap_rule₂, ⋯` applies `swap_rule₁` then `swap_rule₂` then `⋯`.

A *swap_rule* is of the form `x y` or `x ↔ y`, and "applying it" means swapping the variable name
`x` by `y` and vice-versa on all hypotheses and the goal.

```lean
example {P Q : Prop} (q : P) (p : Q) : P ∧ Q := by
  swap_var p ↔ q
  exact ⟨p, q⟩
```
-/
elab "swap_var " swapRules:(colGt swapRule),+ : tactic => do
  let mvarId ← getMainGoal
  let mdecl ← mvarId.getDecl
  let localInstances := mdecl.localInstances
  let lctx ← swapRules.getElems.foldlM (init := mdecl.lctx) fun lctx swapRule ↦ do
    withLCtx lctx localInstances do
      let `(swapRule| $n₁:ident $[↔]? $n₂:ident) := swapRule
        | unreachable!
      let n₁ := n₁.getId
      let n₂ := n₂.getId
      let fvarId₁ := (← getLocalDeclFromUserName n₁).fvarId
      let fvarId₂ := (← getLocalDeclFromUserName n₂).fvarId
      return lctx.setUserName fvarId₁ n₂ |>.setUserName fvarId₂ n₁
  let mdecl := { mdecl with lctx := lctx }
  modifyMCtx fun mctx ↦ { mctx with decls := mctx.decls.insert mvarId mdecl }

end Mathlib.Tactic
````
