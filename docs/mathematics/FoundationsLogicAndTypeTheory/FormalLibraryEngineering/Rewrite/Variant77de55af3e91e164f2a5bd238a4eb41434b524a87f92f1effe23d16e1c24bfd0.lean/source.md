# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `878ddfd7b82d8fc008c03d80bc1636a1127f660d` · SHA-256 `77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Normalize.Basic

/-!
This module contains the implementation of the rewriting pass in the fixpoint pipeline, applying
rules from the `bv_normalize` simp set.
-/

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

/--
Responsible for applying the Bitwuzla style rewrite rules.
-/
public def rewriteRulesPass : Pass where
  name := `rewriteRules
  run' goal := do
    let bvThms ← bvNormalizeExt.getTheorems
    let bvSimprocs ← bvNormalizeSimprocExt.getSimprocs
    let sevalThms ← getSEvalTheorems
    let sevalSimprocs ← Simp.getSEvalSimprocs
    let cfg ← PreProcessM.getConfig

    let simpCtx ← Simp.mkContext
      (config := {
        failIfUnchanged := false,
        zetaDelta := true,
        implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
        maxSteps := cfg.maxSteps,
        instances := true
      })
      (simpTheorems := #[bvThms, sevalThms])
      (congrTheorems := (← getSimpCongrTheorems))

    let hyps ← getHyps goal
    if hyps.isEmpty then
      return goal
    else
      let ⟨result?, _⟩ ← simpGoal goal
        (ctx := simpCtx)
        (simprocs := #[bvSimprocs, sevalSimprocs])
        (fvarIdsToSimp := hyps)

      let some (_, newGoal) := result? | return none
      newGoal.withContext do
        (← getPropHyps).forM PreProcessM.rewriteFinished
      return newGoal
where
  getHyps (goal : MVarId) : PreProcessM (Array FVarId) := do
    goal.withContext do
      let hyps ← getPropHyps
      let filter hyp := do
        return !(← PreProcessM.checkRewritten hyp)
      hyps.filterM filter


end Normalize
end Lean.Meta.Tactic.BVDecide
```
