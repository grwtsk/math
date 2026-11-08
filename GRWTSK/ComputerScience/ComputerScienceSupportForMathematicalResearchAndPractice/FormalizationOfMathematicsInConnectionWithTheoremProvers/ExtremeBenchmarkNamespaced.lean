-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNestedExp.Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkNestedExp.Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"af95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/ExtremeBenchmark.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNestedExp.Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e

namespace LeanCert.Benchmark.Extreme

open LeanCert.Core
open LeanCert.Engine

/-! ### Extreme Expression Generators -/

/-- Nested exp: exp(exp(exp(...x...))) -/
def mkNestedExp (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 => Expr.exp (mkNestedExp m)

/-- Deep polynomial: high-degree terms -/
def mkDeepPoly (n : Nat) : Expr :=
  match n with
  | 0 => Expr.const 1
  | m + 1 => Expr.add (mkDeepPoly m) (mkPow (m + 1))
where
  mkPow : Nat → Expr
  | 0 => Expr.const 1
  | k + 1 => Expr.mul (Expr.var 0) (mkPow k)

/-- Very deep nesting: sin(cos(exp(sin(cos(...))))) -/
def mkDeepNested (n : Nat) : Expr :=
  match n with
  | 0 => Expr.var 0
  | m + 1 =>
    let inner := mkDeepNested m
    match m % 3 with
    | 0 => Expr.sin inner
    | 1 => Expr.cos inner
    | _ => Expr.exp (Expr.neg inner)  -- exp(-x) to keep bounded

/-! ### Test Intervals -/

def smallIntervalRat : IntervalRat := ⟨1/10, 1/5, by norm_num⟩
def smallIntervalDyadic : IntervalDyadic := IntervalDyadic.ofIntervalRat smallIntervalRat (-53)

/-! ### Benchmark Functions -/

def evalDyadic (e : Expr) (I : IntervalDyadic) (cfg : DyadicConfig := {}) : IntervalDyadic :=
  evalIntervalDyadic e (fun _ => I) cfg

def countDigits (n : Nat) : Nat :=
  if n == 0 then 1 else n.repr.length

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtremeBenchmarkNamespaced.lean
Git blob: c832cc9b4ad71df6f196a765bbc6c93338bd6ded
Retained exact expression generators, interval fixtures and pure evaluation functions.
Timing loops, output and performance discussion execute only in the Noe driver.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/

end LeanCert.Benchmark.Extreme

end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNestedExp.Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e
