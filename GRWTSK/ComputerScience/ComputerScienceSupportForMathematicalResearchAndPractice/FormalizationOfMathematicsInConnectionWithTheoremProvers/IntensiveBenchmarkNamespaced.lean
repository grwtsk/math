-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkPowerExpr.Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/IntensiveBenchmark.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.Expr
import LeanCert.Core.IntervalReal
import LeanCert.Core.IntervalDyadic
import LeanCert.Engine.IntervalEval
import LeanCert.Engine.IntervalEvalDyadic

/-!
# Intensive Performance Benchmark: Dyadic vs Rational Backend

This benchmark uses higher iteration counts and more intensive expressions
to measure actual performance differences.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba

namespace LeanCert.Benchmark.Intensive

open LeanCert.Core
open LeanCert.Engine

/-! ### Expression Generators -/

def mkPowerExpr (n : Nat) : Expr :=
  match n with
  | 0 => Expr.const 1
  | n + 1 => Expr.mul (Expr.var 0) (mkPowerExpr n)

def mkPolynomialExpr (n : Nat) : Expr :=
  match n with
  | 0 => Expr.const 1
  | m + 1 => Expr.add (mkPolynomialExpr m) (mkPowerExpr (m + 1))

def mkNestedSin (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 => Expr.sin (mkNestedSin m)

def mkNestedExp (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 => Expr.exp (mkNestedExp m)

def mkExpandedBinomial (n : Nat) : Expr :=
  match n with
  | 0 => Expr.const 1
  | m + 1 =>
    let xp1 := Expr.add (Expr.var 0) (Expr.const 1)
    Expr.mul xp1 (mkExpandedBinomial m)

/-- Create a complex mixed expression: sin(x²) * cos(x) + exp(-x) -/
def mkComplexMixed : Expr :=
  let x := Expr.var 0
  let x2 := Expr.mul x x
  let sinx2 := Expr.sin x2
  let cosx := Expr.cos x
  let negx := Expr.neg x
  let expnegx := Expr.exp negx
  Expr.add (Expr.mul sinx2 cosx) expnegx

/-! ### Test Intervals -/

def testIntervalRat : IntervalRat := ⟨-1, 1, by norm_num⟩
def smallIntervalRat : IntervalRat := ⟨1/10, 1/5, by norm_num⟩
def testIntervalDyadic : IntervalDyadic := IntervalDyadic.ofIntervalRat testIntervalRat (-53)
def smallIntervalDyadic : IntervalDyadic := IntervalDyadic.ofIntervalRat smallIntervalRat (-53)

/-! ### Evaluation Functions -/

def evalRational (e : Expr) (I : IntervalRat) (cfg : EvalConfig := {}) : IntervalRat :=
  evalIntervalCore e (fun _ => I) cfg

def evalDyadic (e : Expr) (I : IntervalDyadic) (cfg : DyadicConfig := {}) : IntervalDyadic :=
  evalIntervalDyadic e (fun _ => I) cfg

end LeanCert.Benchmark.Intensive
end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob 454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntensiveBenchmarkNamespaced.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/
