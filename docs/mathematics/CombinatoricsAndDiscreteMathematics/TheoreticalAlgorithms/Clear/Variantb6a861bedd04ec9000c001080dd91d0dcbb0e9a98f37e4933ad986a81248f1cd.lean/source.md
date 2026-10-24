# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Clear.Variantb6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7428e5307db1da7d74ee00813adb5ba1e0f564e` · SHA-256 `b6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic

open Lean Lean.Meta

/--
Try to clear the given fvars from the local context. Returns the new goal and
the hypotheses that were cleared. Unlike `Lean.MVarId.tryClearMany`, this
function does not require the `hyps` to be given in the order in which they
appear in the local context.
-/
def Lean.MVarId.tryClearMany' (goal : MVarId) (hyps : Array FVarId) :
    MetaM (MVarId × Array FVarId) :=
  goal.withContext do
    let hyps ← sortFVarsByContextOrder hyps
    hyps.foldrM (init := (goal, Array.mkEmpty hyps.size))
      λ h (goal, cleared) => do
        let goal' ← goal.tryClear h
        let cleared := if goal == goal' then cleared else cleared.push h
        return (goal', cleared)
```
