# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refute.Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f55ae713b9ff6ad700fe6038b4408283e1edbbe5` · SHA-256 `644aaef13792bd3dd3241c9a98e9271dc20ef23db894fdc083839ca73885144a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefuteConfig.Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RefuteConfig.Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/Refute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import Lean
import LeanCert.Tactic.IntervalAuto
import LeanCert.Engine.Search.CounterExample

/-!
# Counter-Example Hunting Tactic

This file provides a tactic for hunting counter-examples to bound claims.
Unlike `interval_bound` which proves bounds, `interval_refute` searches for
violations.

## Main tactics

* `interval_refute` - Search for counter-examples to the current goal

## Usage

```lean
-- A false theorem: x² ≤ 3 on [-2, 2]
example : ∀ x ∈ Set.Icc (-2 : ℝ) 2, x * x ≤ 3 := by
  interval_refute  -- ERROR: Counter-example found at x = 2, value = 4

-- A true theorem (no counter-example found)
example : ∀ x ∈ Set.Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_refute  -- INFO: No counter-example found, theorem appears true!
  interval_bound   -- Actually proves it
```

## How it works

`interval_refute` uses global optimization to search for violations:
- For `f(x) ≤ c`: maximizes `f(x)`, checks if max > c
- For `c ≤ f(x)`: minimizes `f(x)`, checks if min < c

A **Verified** counter-example is a rigorous proof of falsity.
A **Candidate** counter-example might be a precision issue.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefuteConfig.Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da

open Lean Meta Elab Tactic Term
open LeanCert.Tactic.Auto
open LeanCert.Engine.Optimization
open LeanCert.Engine.Search
open LeanCert.Core (IntervalRat)

namespace LeanCert.Tactic

-- Use qualified names to avoid ambiguity with Lean.Expr
abbrev LBExpr := LeanCert.Core.Expr

/-! ## Configuration -/

/-- Configuration for the refute tactic -/
structure RefuteConfig where
  /-- Maximum iterations for optimization -/
  maxIterations : Nat := 2000
  /-- Taylor depth for evaluation -/
  taylorDepth : Nat := 20
  /-- Tolerance for optimization -/
  tolerance : ℚ := 1/10000
  deriving Repr

instance : Inhabited RefuteConfig := ⟨{}⟩

/-! ## Helper functions -/

/-- Extract interval info (lo, hi) from IntervalInfo -/
private def extractIntervalBounds (info : IntervalInfo) : TacticM (ℚ × ℚ) := do
  match info.fromSetIcc with
  | some (lo, hi, _, _, _, _, _) => return (lo, hi)
  | none =>
    try
      let intervalVal ← unsafe evalExpr IntervalRat (mkConst ``IntervalRat) info.intervalRat
      return (intervalVal.lo, intervalVal.hi)
    catch _ =>
      throwError "interval_refute: Only literal Set.Icc or IntervalRat intervals are supported"

/-- Build a Box from interval bounds -/
private def mkBox (lo hi : ℚ) : Box :=
  if hle : lo ≤ hi then
    ({ lo := lo, hi := hi, le := hle } : IntervalRat) :: []
  else
    -- Fallback (should not happen for valid intervals)
    ({ lo := 0, hi := 1, le := by native_decide } : IntervalRat) :: []

/-- Reify a function expression to AST -/
private def reifyFunc (func : Lean.Expr) : TacticM LBExpr := do
  -- func is (fun x => body)
  lambdaTelescope func fun _vars body => do
    let fn := body.getAppFn
    if fn.isConstOf ``LeanCert.Core.Expr.eval then
      let args := body.getAppArgs
      if args.size ≥ 2 then
        -- Already an Expr.eval - extract the AST
        let astExpr := args[1]!
        -- Evaluate to get the actual Expr value
        let astVal ← unsafe evalExpr LBExpr (mkConst ``LeanCert.Core.Expr) astExpr
        return astVal
      else
        throwError "interval_refute: Unexpected Expr.eval structure"
    else
      -- Raw expression - use the reifier
      let astExpr ← LeanCert.Meta.reify func
      let astVal ← unsafe evalExpr LBExpr (mkConst ``LeanCert.Core.Expr) astExpr
      return astVal

/-! ## Main tactic implementation -/

/-- The core refutation logic -/
private def refuteCore (cfg : RefuteConfig) : TacticM Unit := do
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse the goal
  let some boundGoal ← parseBoundGoal goalType
    | throwError "interval_refute: Goal is not a bound.\n\
                  Expected: ∀ x ∈ I, f(x) ≤ c or ∀ x ∈ I, c ≤ f(x)"

  match boundGoal with
  | .forallLe _name interval func bound =>
    -- Goal: ∀ x ∈ I, f(x) ≤ c
    -- To refute: find x where f(x) > c
    refuteUpperBound interval func bound cfg

  | .forallGe _name interval func bound =>
    -- Goal: ∀ x ∈ I, c ≤ f(x)
    -- To refute: find x where f(x) < c
    refuteLowerBound interval func bound cfg

  | .forallLt _name interval func bound =>
    -- Goal: ∀ x ∈ I, f(x) < c
    -- To refute: find x where f(x) ≥ c
    refuteStrictUpperBound interval func bound cfg

  | .forallGt _name interval func bound =>
    -- Goal: ∀ x ∈ I, c < f(x)
    -- To refute: find x where f(x) ≤ c
    refuteStrictLowerBound interval func bound cfg

where
  /-- Refute ∀ x ∈ I, f(x) ≤ c -/
  refuteUpperBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    -- Extract bounds
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    -- Extract the limit value
    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    -- Reify the function
    let ast ← reifyFunc func

    -- Build optimization config
    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    -- Search for violation
    let result := findViolation ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for f(x) ≤ {limit} on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE.\n\
                 Try: interval_bound"

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Lower bound {ce.valueLo} > limit {limit}\n\
                      The theorem is FALSE.\n\
                      Iterations: {ce.iterations}"
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found.\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Upper bound {ce.valueHi} > limit, but lower bound {ce.valueLo} ≤ limit.\n\
                      This might be:\n\
                      • A true violation (precision too low)\n\
                      • A false positive (interval wrapping)\n\
                      Try increasing maxIterations or taylorDepth."

  /-- Refute ∀ x ∈ I, c ≤ f(x) -/
  refuteLowerBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationLower ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for {limit} ≤ f(x) on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE.\n\
                 Try: interval_bound"

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Upper bound {ce.valueHi} < limit {limit}\n\
                      The theorem is FALSE.\n\
                      Iterations: {ce.iterations}"
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found.\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Lower bound {ce.valueLo} < limit, but upper bound {ce.valueHi} ≥ limit.\n\
                      This might be a precision issue."

  /-- Refute ∀ x ∈ I, f(x) < c -/
  refuteStrictUpperBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationStrict ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for f(x) < {limit} on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE."

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Lower bound {ce.valueLo} ≥ limit {limit}\n\
                      The theorem is FALSE."
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found at ({pointStr})."

  /-- Refute ∀ x ∈ I, c < f(x) -/
  refuteStrictLowerBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationStrictLower ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for {limit} < f(x) on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE."

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Upper bound {ce.valueHi} ≤ limit {limit}\n\
                      The theorem is FALSE."
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found at ({pointStr})."

/-! ## Syntax and tactic -/

/-- Syntax for the refute tactic -/
syntax (name := intervalRefute) "interval_refute" (num)? : tactic

@[tactic intervalRefute]
def evalIntervalRefute : Tactic := fun stx => do
  -- Parse optional depth argument
  let depth : Nat := match stx[1].getOptional? with
    | some numStx =>
      match numStx.isNatLit? with
      | some n => n
      | none => 20
    | none => 20

  let cfg : RefuteConfig := {
    maxIterations := 2000
    taylorDepth := depth
    tolerance := 1/10000
  }
  refuteCore cfg

end LeanCert.Tactic
````
