# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SavedState.Variant3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14be5ff1fe5a469092b22baeed276896825ca71a` · SHA-256 `3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Batteries.Lean.Meta.Basic
public import Batteries.Lean.MonadBacktrack

@[expose] public section

namespace Lean.Meta.SavedState

/--
Run the action `x` in state `s`. Returns the result of `x` and the state after
`x` was executed. The global state remains unchanged.
-/
def runMetaM (s : Meta.SavedState) (x : MetaM α) :
    MetaM (α × Meta.SavedState) :=
  withoutModifyingState' do restoreState s; x

/--
Run the action `x` in state `s`. Returns the result of `x`. The global state
remains unchanged.
-/
def runMetaM' (s : Meta.SavedState) (x : MetaM α) : MetaM α :=
  withoutModifyingState do restoreState s; x

end SavedState


/--
Returns the mvars that are not declared in `preState`, but declared and
unassigned in `postState`. Delayed-assigned mvars are considered assigned.
-/
def getIntroducedExprMVars (preState postState : SavedState) :
    MetaM (Array MVarId) := do
  let unassignedPost ← postState.runMetaM' getUnassignedExprMVars
  preState.runMetaM' do
    unassignedPost.filterM fun mvarId => return ! (← mvarId.isDeclared)

/--
Returns the mvars that are declared but unassigned in `preState`, and
assigned in `postState`. Delayed-assigned mvars are considered assigned.
-/
def getAssignedExprMVars (preState postState : SavedState) :
    MetaM (Array MVarId) := do
  let unassignedPre ← preState.runMetaM' getUnassignedExprMVars
  postState.runMetaM' do
    unassignedPre.filterM (·.isAssignedOrDelayedAssigned)

end Lean.Meta
```
