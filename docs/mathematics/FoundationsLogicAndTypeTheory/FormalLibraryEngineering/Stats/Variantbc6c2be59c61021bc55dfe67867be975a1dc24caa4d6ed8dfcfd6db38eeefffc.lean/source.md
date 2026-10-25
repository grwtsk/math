# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c9de11356e12eb71e97321a929b50c7cccf0234` · SHA-256 `bc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.Traversal

public section

namespace Aesop

def Goal.stats (g : Goal) : TreeM GoalStats := do
  let (goal, metaState) ← g.currentGoalAndMetaState (← getRootMetaState)
  let decl := metaState.meta.mctx.getDecl goal
  let lctxSize := decl.lctx.foldl (init := 0) fun acc ldecl =>
    if ldecl.isImplementationDetail then acc else acc + 1
  return {
    goalId := g.id.toNat
    goalKind := if g.isNormal then .postNorm else .preNorm
    forwardStateStats := g.forwardState.stats
    depth := g.depth
    lctxSize
  }

def collectGoalStatsIfEnabled : TreeM Unit := do
  if ← enableStats then
    let go : StateRefT (Array GoalStats) TreeM Unit :=
      postTraverseDown
        (fun gref => do
          let stats ← (← gref.get).stats
          modify (·.push stats))
        (fun _rref => return)
        (fun _cref => return)
        (.mvarCluster (← getThe Tree).root)
    let goalStats ← (·.2) <$> go.run #[]
    modifyStats ({ · with goalStats })

end Aesop
```
