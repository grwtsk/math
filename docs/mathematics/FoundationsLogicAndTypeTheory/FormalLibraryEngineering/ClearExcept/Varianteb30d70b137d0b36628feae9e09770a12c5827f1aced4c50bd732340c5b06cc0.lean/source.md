# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Varianteb30d70b137d0b36628feae9e09770a12c5827f1aced4c50bd732340c5b06cc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e4296b36ed44d8eeddc4a1b740b5834e006bd1d` · SHA-256 `eb30d70b137d0b36628feae9e09770a12c5827f1aced4c50bd732340c5b06cc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm

/-!
# The `clear*` tactic

This file provides a variant of the `clear` tactic, which clears all hypotheses it can
besides a provided list.
-/

open Lean.Meta

namespace Lean.Elab.Tactic

/-- Clears all hypotheses it can, except those provided after a minus sign. Example:
```
  clear * - h₁ h₂
```
-/
syntax (name := clearExcept) "clear " "*" " -" (ppSpace colGt ident)* : tactic

elab_rules : tactic
  | `(tactic| clear * - $hs:ident*) => do
    let fvarIds ← getFVarIds hs
    liftMetaTactic1 fun goal ↦ do
      let mut toClear : Array FVarId := #[]
      for decl in ← getLCtx do
        unless fvarIds.contains decl.fvarId do
          if let none ← isClass? decl.type then
            toClear := toClear.push decl.fvarId
      goal.tryClearMany toClear

end Lean.Elab.Tactic
````
