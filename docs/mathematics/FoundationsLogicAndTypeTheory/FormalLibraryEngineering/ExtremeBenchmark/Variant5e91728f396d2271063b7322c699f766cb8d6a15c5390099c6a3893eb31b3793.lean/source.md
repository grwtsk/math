# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtremeBenchmark.Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c832cc9b4ad71df6f196a765bbc6c93338bd6ded` · SHA-256 `ea1323e777ef010973354e8aae7897edbd90c5f8c1151c68c8fc51d46a2e0246`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
# Extreme Benchmark: Where Rational Fails and Dyadic Succeeds

This benchmark demonstrates cases where the rational backend either:
1. Produces astronomically large denominators (memory issue)
2. Takes prohibitively long due to GCD operations

These are the cases where the dyadic backend truly shines.
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

/-! ### Main -/

def main : IO Unit := do
  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║          EXTREME BENCHMARK: Where Dyadic Shines                       ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"
  IO.println ""

  -- Test deeply nested expressions with dyadic only
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ DEEPLY NESTED EXPRESSIONS (Dyadic Only - Rational would timeout)     │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [5, 10, 15, 20] do
    let expr := mkDeepNested depth
    let startTime ← IO.monoNanosNow
    let result := evalDyadic expr smallIntervalDyadic
    let endTime ← IO.monoNanosNow
    let timeUs := (endTime - startTime) / 1000
    IO.println s!"  depth={depth}: [{result.lo.toRat.num}/{result.lo.toRat.den}, {result.hi.toRat.num}/{result.hi.toRat.den}] in {timeUs}μs"
  IO.println ""

  -- Test nestedExp at various depths
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ NESTED EXP (exp(exp(exp(...)))) - Extreme denominator explosion      │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [2, 3, 4, 5] do
    let expr := mkNestedExp depth
    let startTime ← IO.monoNanosNow
    let result := evalDyadic expr smallIntervalDyadic
    let endTime ← IO.monoNanosNow
    let timeUs := (endTime - startTime) / 1000
    IO.println s!"  depth={depth}: time={timeUs}μs"
    IO.println s!"           mantissa size: {countDigits result.lo.mantissa.natAbs}-{countDigits result.hi.mantissa.natAbs} digits"
  IO.println ""

  -- Show what happens with rational for comparison (only safe depths)
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ RATIONAL DENOMINATOR GROWTH (showing explosion pattern)              │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [2, 3] do
    let expr := mkNestedExp depth
    let result := evalIntervalCore expr (fun _ => smallIntervalRat)
    IO.println s!"  nestedExp{depth} rational denominators:"
    IO.println s!"    lo.den: {countDigits result.lo.den} digits"
    IO.println s!"    hi.den: {countDigits result.hi.den} digits"
  IO.println ""

  IO.println "  Note: nestedExp4+ would have 10,000+ digit denominators with rational!"
  IO.println "        Dyadic stays at ~17 digits regardless of depth."
  IO.println ""

  -- Precision comparison at different settings
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ DYADIC PRECISION MODES                                               │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  let testExpr := mkNestedExp 3

  let fastResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) DyadicConfig.fast
  let stdResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) {}
  let highResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) DyadicConfig.highPrecision

  let fastWidth := fastResult.hi.toRat - fastResult.lo.toRat
  let stdWidth := stdResult.hi.toRat - stdResult.lo.toRat
  let highWidth := highResult.hi.toRat - highResult.lo.toRat

  IO.println s!"  nestedExp3 interval widths:"
  IO.println s!"    fast (-30 bits):  {fastWidth}"
  IO.println s!"    std  (-53 bits):  {stdWidth}"
  IO.println s!"    high (-100 bits): {highWidth}"
  IO.println ""

  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║                       CONCLUSION                                      ║"
  IO.println "╠═══════════════════════════════════════════════════════════════════════╣"
  IO.println "║ The dyadic backend enables interval evaluation of expressions that    ║"
  IO.println "║ are IMPOSSIBLE with rational arithmetic due to denominator explosion. ║"
  IO.println "║                                                                       ║"
  IO.println "║ • Rational: denominators grow EXPONENTIALLY with expression depth    ║"
  IO.println "║   - nestedExp2: ~200 digits                                           ║"
  IO.println "║   - nestedExp3: ~2000 digits                                          ║"
  IO.println "║   - nestedExp4: ~20,000 digits (estimated)                            ║"
  IO.println "║                                                                       ║"
  IO.println "║ • Dyadic: precision FIXED regardless of depth                         ║"
  IO.println "║   - Standard: 53 bits = ~16 decimal digits                            ║"
  IO.println "║   - High precision: 100 bits = ~30 decimal digits                     ║"
  IO.println "║                                                                       ║"
  IO.println "║ Use cases where dyadic is essential:                                  ║"
  IO.println "║   - Neural network verification (1000s of operations)                 ║"
  IO.println "║   - Optimization (100s of iterations)                                 ║"
  IO.println "║   - Taylor series approximation (many terms)                          ║"
  IO.println "║   - Any deeply nested expression tree                                 ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"

end LeanCert.Benchmark.Extreme

def main : IO Unit := LeanCert.Benchmark.Extreme.main
```
