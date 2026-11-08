-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkPowerExpr.Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/TimingBenchmark.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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
# Pure interval-expression examples

The original expression generators, interval fixtures and evaluators are retained
with their existing namespaces and definitions. The historical timing loops,
standalone entry point and performance discussion are in the importing Noe driver.
This source split supplies no comparative performance theorem or fresh checking.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684

namespace LeanCert.Benchmark.Timing

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

def mkDeepMulExpr (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 => Expr.mul (mkDeepMulExpr m) (Expr.var 0)

def mkNestedSin (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 => Expr.sin (mkNestedSin m)

def mkExpandedBinomial (n : Nat) : Expr :=
  match n with
  | 0 => Expr.const 1
  | m + 1 =>
    let xp1 := Expr.add (Expr.var 0) (Expr.const 1)
    Expr.mul xp1 (mkExpandedBinomial m)

def mkHornerPoly (coeffs : List ℚ) : Expr :=
  match coeffs with
  | [] => Expr.const 0
  | [a] => Expr.const a
  | a :: rest => Expr.add (Expr.const a) (Expr.mul (Expr.var 0) (mkHornerPoly rest))

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

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TimingBenchmarkNamespaced.lean
Git blob: 5584caf4b78c80e432f3c3b8fa789df0cc8219fb
Retained exact expression generators, interval fixtures and pure evaluation functions.
Timing loops, output and performance discussion execute only in the Noe driver.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/

end LeanCert.Benchmark.Timing

end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPowerExpr.Variant5b222385d39cf9b1d09a10e930b06bfee6805ead38374103bf0d3f50ea73e684
