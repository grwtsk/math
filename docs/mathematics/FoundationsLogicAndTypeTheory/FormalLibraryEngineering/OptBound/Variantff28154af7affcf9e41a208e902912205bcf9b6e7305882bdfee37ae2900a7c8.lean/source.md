# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptBound.Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b06685123e7778cd0e81ef3e3387c1099e8b6349` · SHA-256 `244fe5dd6cae909b952131d9469d7cd0f0f0791341b445fd5a8cc3abbd0f0a07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkGlobalOptConfigExpr.Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkGlobalOptConfigExpr.Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/IntervalAuto/OptBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto.Basic
import LeanCert.Validity.Bounds
import LeanCert.Engine.Optimization.BoundVerify

/-!
# Global Optimization Tactic

The `opt_bound` tactic handles goals using global branch-and-bound optimization.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkGlobalOptConfigExpr.Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b

open Lean Meta Elab Tactic Term

namespace LeanCert.Tactic.Auto

open LeanCert.Meta
open LeanCert.Core
open LeanCert.Engine
open LeanCert.Validity
open LeanCert.Engine.Optimization

/-- Build a GlobalOptConfig expression -/
def mkGlobalOptConfigExpr (maxIters : Nat) (tolerance : ℚ) (useMonotonicity : Bool) (taylorDepth : Nat) : MetaM Lean.Expr := do
  mkAppM ``GlobalOptConfig.mk #[toExpr maxIters, toExpr tolerance, toExpr useMonotonicity, toExpr taylorDepth]

/-- The main opt_bound tactic implementation -/
def optBoundCore (maxIters : Nat) (useMonotonicity : Bool) (taylorDepth : Nat) : TacticM Unit := do
  let cfgExpr ← mkGlobalOptConfigExpr maxIters ((1 : ℚ)/1000) useMonotonicity taylorDepth

  -- First try applying upper bound theorem (for f(ρ) ≤ c goals)
  let goal ← getMainGoal
  try
    let proof ← mkAppOptM ``LeanCert.Validity.GlobalOpt.verify_global_upper_bound
      #[none, none, none, none, some cfgExpr]
    let newGoals ← goal.apply proof
    setGoals newGoals
    let goals ← getGoals
    for g in goals do
      setGoals [g]
      let gType ← g.getType
      if gType.getAppFn.isConstOf ``ExprSupportedCore then
        proveSupport g
      else
        evalTactic (← `(tactic| native_decide))
    return
  catch _ => pure ()

  -- Try lower bound theorem (for c ≤ f(ρ) goals)
  let goal ← getMainGoal
  try
    let proof ← mkAppOptM ``LeanCert.Validity.GlobalOpt.verify_global_lower_bound
      #[none, none, none, none, some cfgExpr]
    let newGoals ← goal.apply proof
    setGoals newGoals
    let goals ← getGoals
    for g in goals do
      setGoals [g]
      let gType ← g.getType
      if gType.getAppFn.isConstOf ``ExprSupportedCore then
        proveSupport g
      else
        evalTactic (← `(tactic| native_decide))
    return
  catch _ => pure ()

  throwError "opt_bound: Could not apply global bound theorem. Check that goal has form:\n\
              • ∀ ρ, Box.envMem ρ B → (∀ i ≥ B.length, ρ i = 0) → c ≤ Expr.eval ρ e\n\
              • ∀ ρ, Box.envMem ρ B → (∀ i ≥ B.length, ρ i = 0) → Expr.eval ρ e ≤ c"

where
  /-- Prove ExprSupportedCore goal by generating the proof -/
  proveSupport (goal : MVarId) : TacticM Unit := do
    goal.withContext do
      let gType ← goal.getType
      let args := gType.getAppArgs
      if args.size ≥ 1 then
        let expr := args[0]!
        let proof ← mkSupportedCoreProof expr
        goal.assign proof

/-- The opt_bound tactic.

    Automatically proves global bounds on expressions over boxes using
    branch-and-bound optimization.

    Usage:
    - `opt_bound` - uses defaults (1000 iterations, no monotonicity, Taylor depth 10)
    - `opt_bound 2000` - uses 2000 iterations
    - `opt_bound 1000 mono` - enables monotonicity pruning

    Supports goals of the form:
    - `∀ ρ, Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) → c ≤ Expr.eval ρ e`
    - `∀ ρ, Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) → Expr.eval ρ e ≤ c`
-/
elab "opt_bound" iters:(num)? mono:("mono")? : tactic => do
  let maxIters := match iters with
    | some n => n.getNat
    | none => 1000
  let useMonotonicity := mono.isSome
  optBoundCore maxIters useMonotonicity 10

end LeanCert.Tactic.Auto
```
