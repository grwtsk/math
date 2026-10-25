# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpdateGoal.Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c735277d334b9f9651aa6a62e149511c76fed471` · SHA-256 `89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.RunMetaM

public section

open Lean

namespace Aesop.GoalRef

def updateForwardState (phase : PhaseName) (gref : GoalRef) : TreeM Unit := do
  let g ← gref.get
  if phase == .norm then
    throwError "aesop: internal error: {decl_name%}: at goal {g.id}: norm phase not supported"
  if ! g.isNormal then
    throwError "aesop: internal error: {decl_name%}: attempt to update forward state of non-normal goal {g.id} to phase {phase}"
  let (fs, ms) ← g.runMetaMInPostNormState' fun goal =>
    g.forwardState.update goal phase
  let ms := g.forwardRuleMatches.update ms ∅ ∅
  gref.set <| g.setForwardState fs |>.setForwardRuleMatches ms

end Aesop.GoalRef
```
