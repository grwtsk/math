# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce1ded316881f7067dcee9dc8c996fe726620fd` · SHA-256 `71357790533db1e048c9d0a9ff56935ba07d13d06ff6296957ff6bfaf5a3c180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalInfo.Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntervalInfo.Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/IntervalAuto/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import Lean
import LeanCert.Core.IntervalRat.Basic

/-!
# Core Types for Interval Tactics

This module defines the core data structures used by interval arithmetic tactics:
- `IntervalInfo`: Information about an interval source
- `BoundGoal`: Result of analyzing a univariate bound goal
- `VarIntervalInfo`: Information about a quantified variable and its interval
- `MultivariateBoundGoal`: Result of analyzing a multivariate bound goal
- `GlobalBoundGoal`: Result of analyzing a global optimization bound goal
- `RootGoal`: Result of analyzing a root finding goal
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalInfo.Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586

open Lean Meta

namespace LeanCert.Tactic.Auto

-- Debug trace option for interval_decide
initialize registerTraceClass `interval_decide

-- Unified debug option for all interval tactics
register_option leancert.debug : Bool := {
  defValue := false
  descr := "Enable detailed diagnostic output for all LeanCert interval tactics"
}

/-- Check if LeanCert debug mode is enabled -/
def isLeanCertDebugEnabled : CoreM Bool :=
  return (← getOptions).getBool `leancert.debug false

/-- Information about interval source -/
structure IntervalInfo where
  /-- The IntervalRat expression to use in proofs -/
  intervalRat : Lean.Expr
  /-- If converted from Set.Icc, contains (lo, hi, loRatExpr, hiRatExpr, leProof, origLoExpr, origHiExpr) -/
  fromSetIcc : Option (ℚ × ℚ × Lean.Expr × Lean.Expr × Lean.Expr × Lean.Expr × Lean.Expr) := none
  deriving Repr

/-- Result of analyzing a bound goal -/
inductive BoundGoal where
  /-- ∀ x ∈ I, f x ≤ c -/
  | forallLe (varName : Name) (interval : IntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  /-- ∀ x ∈ I, c ≤ f x -/
  | forallGe (varName : Name) (interval : IntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  /-- ∀ x ∈ I, f x < c -/
  | forallLt (varName : Name) (interval : IntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  /-- ∀ x ∈ I, c < f x -/
  | forallGt (varName : Name) (interval : IntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  deriving Repr

/-- Information about a quantified variable and its interval -/
structure VarIntervalInfo where
  /-- Variable name -/
  varName : Name
  /-- Variable type -/
  varType : Lean.Expr
  /-- Extracted interval (lo, hi rationals and their expressions) -/
  intervalRat : Lean.Expr
  /-- Original lower bound expression for Set.Icc -/
  loExpr : Lean.Expr
  /-- Original upper bound expression for Set.Icc -/
  hiExpr : Lean.Expr
  /-- Low bound as rational -/
  lo : ℚ
  /-- High bound as rational -/
  hi : ℚ
  deriving Repr, Inhabited

/-- Result of analyzing a multivariate bound goal -/
inductive MultivariateBoundGoal where
  /-- ∀ x₁ ∈ I₁, ..., ∀ xₙ ∈ Iₙ, f(x₁,...,xₙ) ≤ c -/
  | forallLe (vars : Array VarIntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  /-- ∀ x₁ ∈ I₁, ..., ∀ xₙ ∈ Iₙ, c ≤ f(x₁,...,xₙ) -/
  | forallGe (vars : Array VarIntervalInfo) (func : Lean.Expr) (bound : Lean.Expr)
  deriving Repr

/-- Result of analyzing a global bound goal -/
inductive GlobalBoundGoal where
  /-- ∀ ρ ∈ B, (zero extension) → c ≤ f(ρ) -/
  | globalGe (box : Lean.Expr) (expr : Lean.Expr) (bound : Lean.Expr)
  /-- ∀ ρ ∈ B, (zero extension) → f(ρ) ≤ c -/
  | globalLe (box : Lean.Expr) (expr : Lean.Expr) (bound : Lean.Expr)
  deriving Repr

/-- Result of analyzing a root finding goal -/
inductive RootGoal where
  /-- ∀ x ∈ I, f x ≠ 0 -/
  | forallNeZero (varName : Name) (interval : Lean.Expr) (func : Lean.Expr)
  deriving Repr

end LeanCert.Tactic.Auto
```
