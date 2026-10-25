# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SavedState.Variant76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1122f48218c0613d82bd05e7e3d0d36cf77edd8d` · SHA-256 `76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic
import Std.Lean.MonadBacktrack

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
    unassignedPost.filterM λ mvarId => return ! (← mvarId.isDeclared)

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
