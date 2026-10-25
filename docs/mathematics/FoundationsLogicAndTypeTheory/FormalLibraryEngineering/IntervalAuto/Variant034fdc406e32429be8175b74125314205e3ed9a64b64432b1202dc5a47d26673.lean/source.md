# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant034fdc406e32429be8175b74125314205e3ed9a64b64432b1202dc5a47d26673

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64e3dcd19901db54e0ee08a339dd4091a7a39711` · SHA-256 `04ca524c7399ea8b1582bbdcae0d707b58b38da5979209c931a2786510a8ef4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsPointInequality.Variantd065233f3e54b7708be79e2be317aea2015daea696e05a98f9f07754a45b11cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d065233f3e54b7708be79e2be317aea2015daea696e05a98f9f07754a45b11cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsPointInequality.Variantd065233f3e54b7708be79e2be317aea2015daea696e05a98f9f07754a45b11cf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d065233f3e54b7708be79e2be317aea2015daea696e05a98f9f07754a45b11cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/IntervalAuto.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto.Basic
import LeanCert.Tactic.IntervalAuto.Bound
import LeanCert.Tactic.IntervalAuto.Multivariate
import LeanCert.Tactic.IntervalAuto.OptBound
import LeanCert.Tactic.IntervalAuto.RootBound
import LeanCert.Tactic.IntervalAuto.PointIneq
import LeanCert.Tactic.IntervalAuto.Subdiv
import LeanCert.Tactic.IntervalAuto.Adaptive

/-!
# Automated Interval Arithmetic Tactics

This module re-exports the interval arithmetic tactic suite:

* `interval_bound` - Prove bounds using interval arithmetic
* `interval_decide` - Prove point inequalities
* `interval_auto` - Unified entry point (recommended)
* `multivariate_bound` - Prove bounds on multivariate expressions
* `opt_bound` - Prove bounds using global optimization
* `root_bound` - Prove non-existence of roots
* `interval_bound_subdiv` - Prove bounds with subdivision
* `interval_bound_adaptive` - Prove bounds with adaptive precision

The infrastructure (types, parsing, normalization, extraction, diagnostics,
common proving utilities) lives in `LeanCert.Tactic.IntervalAuto.Basic`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsPointInequality.Variantd065233f3e54b7708be79e2be317aea2015daea696e05a98f9f07754a45b11cf

open Lean Meta Elab Tactic

namespace LeanCert.Tactic.Auto

open LeanCert.Tactic.Auto

/-- Check if goal looks like a point inequality or connective of point inequalities (not quantified) -/
private partial def isPointInequality (goal : Lean.Expr) : MetaM Bool := do
  -- A point inequality is ≤, <, ≥, > without a leading ∀
  if goal.isForall then
    return false
  -- Check if it's a conjunction - recursively check both sides
  if goal.isAppOfArity ``And 2 then
    let args := goal.getAppArgs
    let left ← isPointInequality args[0]!
    let right ← isPointInequality args[1]!
    return left && right
  -- Check if it's a disjunction - recursively check both sides
  if goal.isAppOfArity ``Or 2 then
    let args := goal.getAppArgs
    let left ← isPointInequality args[0]!
    let right ← isPointInequality args[1]!
    return left || right  -- For OR, at least one side needs to be provable
  -- Check if it's a comparison
  let some (_, _, _, _) ← parsePointIneq goal
    | return false
  return true

/-- Unified tactic that handles both point inequalities and quantified bounds.
    - `interval_auto` - uses adaptive precision
    - `interval_auto 20` - uses fixed Taylor depth of 20

    This is the recommended entry point for interval arithmetic proofs.
-/
elab "interval_auto" depth:(num)? : tactic => do
  let goal ← getMainGoal
  let goalType ← goal.getType
  let isPoint ← isPointInequality goalType
  if isPoint then
    trace[interval_decide] "interval_auto: detected point inequality, using interval_decide"
    intervalDecideWithConnectives (depth.map (·.getNat))
  else
    trace[interval_decide] "interval_auto: detected quantified goal, using interval_bound"
    match depth with
    | some n => intervalBoundCore n.getNat
    | none =>
      let depths := [10, 15, 20, 25, 30]
      let goalState ← saveState
      let mut lastError : Option Exception := none
      for d in depths do
        try
          restoreState goalState
          trace[interval_decide] "Trying Taylor depth {d}..."
          intervalBoundCore d
          trace[interval_decide] "Success with Taylor depth {d}"
          return
        catch e =>
          lastError := some e
          continue
      match lastError with
      | some e => throw e
      | none => throwError "interval_auto: All precision levels failed"

end LeanCert.Tactic.Auto
```
