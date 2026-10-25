# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variante4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e49b14ed877a9ec6bd919ba5d80aad28db5fb02c` · SHA-256 `e4cd604a4f74b8bd2a5da676736ae0080d709f8892e78785000a24231b2d0122`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Util.Basic
import Batteries.Lean.Meta.SavedState
import Aesop.Util.EqualUpToIds

public section

open Lean Std Lean.Meta

namespace Aesop.Script

-- Without {α β : Type} universe inference goes haywire.
@[specialize]
def findFirstStep? {α β : Type} (goals : Array α) (step? : α → Option β)
     (stepOrder : β → Nat) : Option (Nat × α × β) := Id.run do
  let mut firstStep? := none
  for h : pos in [:goals.size] do
    let g := goals[pos]
    if let some step := step? g then
      if let some (_, _, currentFirstStep) := firstStep? then
        if stepOrder step < stepOrder currentFirstStep then
          firstStep? := some (pos, g, step)
      else
        firstStep? := some (pos, g, step)
    else
      continue
  return firstStep?

def matchGoals (postState₁ postState₂ : Meta.SavedState)
    (goals₁ goals₂ : Array MVarId) : MetaM (Option (Std.HashMap MVarId MVarId)) := do
  let goals₁ ← getProperGoals postState₁ goals₁
  let goals₂ ← getProperGoals postState₂ goals₂
  let (equal, s) ←
    tacticStatesEqualUpToIds' none postState₁.meta.mctx
      postState₂.meta.mctx goals₁ goals₂ (allowAssignmentDiff := true)
  if ! equal then
    return none
  else
    return s.equalMVarIds
where
  getProperGoals (state : Meta.SavedState) (goals : Array MVarId) :
      MetaM (Array MVarId) :=
    state.runMetaM' do
      let (properGoals, _) ← partitionGoalsAndMVars id goals
      return properGoals.map (·.fst)

end Aesop.Script
```
