# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatEval.Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f382bb429f6893147bccb9d9d1c3837d8ba4387` · SHA-256 `49f3eb0900e32f34cb11dc0fa19bca9eceb2d31850355a181dc0be65bf374a55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatEnv.Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FloatEnv.Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/FloatEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.Expr

/-!
# Fast Float Evaluator

This file provides a fast, unverified floating-point evaluator for expressions.
It is used only for heuristics to guide the verified search (e.g., finding good
initial upper bounds for branch-and-bound optimization).

## Main definitions

* `evalFloat` - Evaluate an expression using hardware floats
* `FloatEnv` - Environment mapping variable indices to Float values

## Design notes

This evaluator uses Lean's native `Float` type, which maps to hardware IEEE 754
double precision. The results are NOT verified and should only be used as hints
for the rigorous interval arithmetic algorithms.

Functions not directly available in Lean's Float stdlib are approximated:
- `tanh(x)` via `(exp(2x) - 1) / (exp(2x) + 1)`
- `sinh(x)` via `(exp(x) - exp(-x)) / 2`
- `cosh(x)` via `(exp(x) + exp(-x)) / 2`
- `arsinh(x)` via `log(x + sqrt(x² + 1))`
- `atanh(x)` via `log((1+x)/(1-x)) / 2`
- `sinc(x)` via `sin(x)/x` with special case at 0
- `erf(x)` via polynomial approximation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatEnv.Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74

namespace LeanCert.Engine

open LeanCert.Core

/-- Evaluation environment for Floats -/
abbrev FloatEnv := Nat → Float

/-- Polynomial approximation of erf(x) for |x| ≤ 1.
    Uses Horner's method for the approximation:
    erf(x) ≈ 2x/√π * (1 - x²/3 + x⁴/10 - x⁶/42 + ...)
    For |x| > 1, uses tanh-based approximation which saturates to ±1. -/
private def floatErf (x : Float) : Float :=
  if x.abs ≤ 1.0 then
    -- Taylor series approximation for small x
    let x2 := x * x
    let coeff := 1.0 - x2 * (1.0/3.0 - x2 * (1.0/10.0 - x2 * (1.0/42.0 - x2 * (1.0/216.0))))
    x * coeff * 1.1283791670955126  -- 2/√π
  else
    -- For larger x, use tanh approximation: erf(x) ≈ tanh(1.2x)
    let y := 1.2 * x
    let e2y := Float.exp (2.0 * y)
    (e2y - 1.0) / (e2y + 1.0)

/-- Convert an integer to a Float -/
private def intToFloat (z : ℤ) : Float :=
  if z ≥ 0 then z.toNat.toFloat
  else -((-z).toNat.toFloat)

/-- Convert a rational to a Float (approximate) -/
private def ratToFloat (q : ℚ) : Float :=
  intToFloat q.num / q.den.toFloat

/--
Fast, unverified floating point evaluator.
Used only for heuristics to guide the verified search.
-/
def evalFloat (e : Expr) (ρ : FloatEnv) : Float :=
  match e with
  | Expr.const q => ratToFloat q
  | Expr.var i => ρ i
  | Expr.add a b => evalFloat a ρ + evalFloat b ρ
  | Expr.mul a b => evalFloat a ρ * evalFloat b ρ
  | Expr.neg a => -(evalFloat a ρ)
  | Expr.inv a => 1.0 / (evalFloat a ρ)
  | Expr.exp a => Float.exp (evalFloat a ρ)
  | Expr.log a => Float.log (evalFloat a ρ)
  | Expr.sin a => Float.sin (evalFloat a ρ)
  | Expr.cos a => Float.cos (evalFloat a ρ)
  | Expr.sqrt a => Float.sqrt (evalFloat a ρ)
  | Expr.atan a => Float.atan (evalFloat a ρ)
  | Expr.sinh a =>
      let x := evalFloat a ρ
      (Float.exp x - Float.exp (-x)) / 2.0
  | Expr.cosh a =>
      let x := evalFloat a ρ
      (Float.exp x + Float.exp (-x)) / 2.0
  | Expr.tanh a =>
      let x := evalFloat a ρ
      let e2x := Float.exp (2.0 * x)
      (e2x - 1.0) / (e2x + 1.0)
  | Expr.arsinh a =>
      let x := evalFloat a ρ
      Float.log (x + Float.sqrt (x * x + 1.0))
  | Expr.atanh a =>
      let x := evalFloat a ρ
      Float.log ((1.0 + x) / (1.0 - x)) / 2.0
  | Expr.sinc a =>
      let x := evalFloat a ρ
      if x.abs < 1e-10 then 1.0
      else Float.sin x / x
  | Expr.erf a => floatErf (evalFloat a ρ)
  | Expr.namedConst c => c.toFloat

/-- Evaluate with a list-based environment (for compatibility with Box) -/
def evalFloatList (e : Expr) (vars : List Float) : Float :=
  evalFloat e (fun i => vars.getD i 0.0)

/-- Evaluate with an array-based environment (faster for repeated access) -/
def evalFloatArray (e : Expr) (vars : Array Float) : Float :=
  evalFloat e (fun i => vars.getD i 0.0)

end LeanCert.Engine
```
