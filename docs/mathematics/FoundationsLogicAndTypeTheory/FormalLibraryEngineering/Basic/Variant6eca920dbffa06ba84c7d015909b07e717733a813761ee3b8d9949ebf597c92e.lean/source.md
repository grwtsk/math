# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93bca8574af241fde5d9970e30c234040dfe3a53` · SHA-256 `6eca920dbffa06ba84c7d015909b07e717733a813761ee3b8d9949ebf597c92e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Jon Eugster
-/
module

public import Mathlib.Lean.Meta
/-!
# Additions to `Lean.Elab.Tactic.Basic`
-/

@[expose] public section

open Lean Elab Tactic

namespace Lean.Elab.Tactic

/-- Return expected type for the main goal, cleaning up annotations, using `Lean.MVarId.getType''`.
Remark: note that `MVarId.getType'` uses `whnf` instead of `cleanupAnnotations`, and
`MVarId.getType''` also uses `cleanupAnnotations` -/
def getMainTarget'' : TacticM Expr := do
  (← getMainGoal).getType''

/-- Runs `x`, and if `x` throws an exception, rewinds the tactic state *except* for the `InfoState`
and `Messages`. This means that hovers and error messages created within `x` are preserved.

Note: `x` is run under `withSaveInfoContext` in order to propagate hovers and messages correctly.
This means that pre-existing infotrees are not accessible from within `x`. -/
def commitIfNoExPreservingInfoAndMessages {α} (x : TacticM α) : TacticM α := do
  let saved ← saveState
  Tactic.tryCatch (withSaveInfoContext x) fun ex => do
    let saved := { saved with
      term.meta.core.infoState := ← getInfoState
      term.meta.core.messages := (← getThe Core.State).messages }
    restoreState saved
    throw ex

end Lean.Elab.Tactic
```
