# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intros.Variantf17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d800e44a60d98b8db9e754ddef174bb2ceb9431f` · SHA-256 `f17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Kyle Miller
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop norm -100 (rule_sets := [builtin])]
meta def intros : RuleTac := RuleTac.ofSingleRuleTac λ input => do
    let md? := input.options.introsTransparency?
    let ((goal, newFVarIds), steps) ←
      match md? with
      | none => introsS input.goal |>.run
      | some md => introsUnfoldingS input.goal md |>.run
    if newFVarIds.size == 0 then
      throwError "nothing to introduce"
    let addedFVars := newFVarIds.foldl (init := ∅) λ set fvarId =>
      set.insert fvarId
    let diff := {
      oldGoal := input.goal
      newGoal := goal
      addedFVars
      removedFVars := ∅
      targetChanged := .true
    }
    return (#[{ diff }], steps, none)

end Aesop.BuiltinRules
```
