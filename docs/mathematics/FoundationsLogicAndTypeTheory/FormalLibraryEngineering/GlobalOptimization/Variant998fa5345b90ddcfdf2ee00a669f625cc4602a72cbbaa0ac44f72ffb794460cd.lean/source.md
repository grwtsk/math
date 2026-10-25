# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalOptimization.Variant998fa5345b90ddcfdf2ee00a669f625cc4602a72cbbaa0ac44f72ffb794460cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17f03904be8cffbf34c4f6c0c2604d84de60c622` · SHA-256 `92140d652b1b73b87d502b77ac2249eb3e1bc957927ea5199ffc2490c0de9801`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprXSq.Variantac84e59b81979b3c504fd97a1d5c7b0bec3e7d62c75af3aadfae0b0f8e1d8886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac84e59b81979b3c504fd97a1d5c7b0bec3e7d62c75af3aadfae0b0f8e1d8886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprXSq.Variantac84e59b81979b3c504fd97a1d5c7b0bec3e7d62c75af3aadfae0b0f8e1d8886","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ac84e59b81979b3c504fd97a1d5c7b0bec3e7d62c75af3aadfae0b0f8e1d8886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Examples/GlobalOptimization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.Optimization.Global

/-!
# Global Optimization Examples

This file demonstrates the branch-and-bound global optimization algorithm
on multivariate expressions over n-dimensional boxes.

## Examples

### Univariate

- Minimize x² over [-1, 1] → global min at x = 0
- Minimize (x - 1/2)² over [0, 1] → global min at x = 1/2

### Multivariate

- Minimize x² + y² over [-1, 1]² → global min at (0, 0)
- Rosenbrock function: (1 - x)² + 100(y - x²)² over [-2, 2]²
- Beale function on a box
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprXSq.Variantac84e59b81979b3c504fd97a1d5c7b0bec3e7d62c75af3aadfae0b0f8e1d8886

namespace LeanCert.Examples.GlobalOptimization

open LeanCert.Core
open LeanCert.Engine
open LeanCert.Engine.Optimization

/-! ### Expression builders -/

/-- The expression x² (variable 0 squared) -/
def exprXSq : Expr := Expr.mul (Expr.var 0) (Expr.var 0)

/-- The expression y² (variable 1 squared) -/
def exprYSq : Expr := Expr.mul (Expr.var 1) (Expr.var 1)

/-- The expression x² + y² -/
def exprSumSq : Expr := Expr.add exprXSq exprYSq

/-- The expression (x - c)² for a constant c -/
def exprShiftedSq (c : ℚ) : Expr :=
  let xMinusC := Expr.add (Expr.var 0) (Expr.neg (Expr.const c))
  Expr.mul xMinusC xMinusC

/-- The expression (1 - x)² -/
def exprOneMinusXSq : Expr :=
  let oneMinusX := Expr.add (Expr.const 1) (Expr.neg (Expr.var 0))
  Expr.mul oneMinusX oneMinusX

/-- The expression (y - x²)² -/
def exprYMinusXSqSq : Expr :=
  let yMinusXSq := Expr.add (Expr.var 1) (Expr.neg exprXSq)
  Expr.mul yMinusXSq yMinusXSq

/-- Rosenbrock function: (1 - x)² + 100(y - x²)² -/
def exprRosenbrock : Expr :=
  Expr.add exprOneMinusXSq (Expr.mul (Expr.const 100) exprYMinusXSqSq)

/-! ### Box construction -/

/-- Unit box [0, 1]² -/
def boxUnit2D : Box := Box.unit 2

/-- Symmetric box [-1, 1]² -/
def boxSym2D : Box := Box.symmetric 2

/-- A larger box [-2, 2]² for Rosenbrock -/
def boxLarge2D : Box :=
  [⟨-2, 2, by norm_num⟩, ⟨-2, 2, by norm_num⟩]

/-! ### Example evaluations -/

-- Minimize x² over [-1, 1]
#eval!
  let B : Box := [⟨-1, 1, by norm_num⟩]
  let result := globalMinimizeCore exprXSq B { maxIterations := 100, tolerance := 1/100 }
  s!"Min x^2 on [-1,1]: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

-- Minimize (x - 1/2)² over [0, 1]
#eval!
  let B : Box := [⟨0, 1, by norm_num⟩]
  let e := exprShiftedSq (1/2)
  let result := globalMinimizeCore e B { maxIterations := 100, tolerance := 1/100 }
  s!"Min (x-1/2)^2 on [0,1]: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

-- Minimize x² + y² over [-1, 1]²
#eval!
  let result := globalMinimizeCore exprSumSq boxSym2D { maxIterations := 500, tolerance := 1/10 }
  s!"Min x^2+y^2 on [-1,1]^2: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

-- Minimize x² + y² over [0, 1]²
#eval!
  let result := globalMinimizeCore exprSumSq boxUnit2D { maxIterations := 500, tolerance := 1/10 }
  s!"Min x^2+y^2 on [0,1]^2: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

-- Maximize x² over [-1, 1] (should give 1 at x = ±1)
#eval!
  let B : Box := [⟨-1, 1, by norm_num⟩]
  let result := globalMaximizeCore exprXSq B { maxIterations := 100, tolerance := 1/100 }
  s!"Max x^2 on [-1,1]: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

-- Rosenbrock function (harder test)
#eval!
  let result := globalMinimizeCore exprRosenbrock boxLarge2D
    { maxIterations := 1000, tolerance := 1/4 }
  s!"Min Rosenbrock on [-2,2]^2: lo={result.bound.lo}, hi={result.bound.hi}, iters={result.bound.iterations}"

/-! ### Box operations demo -/

#eval
  let B := boxSym2D
  s!"Dimension: {B.dim}, Volume: {Box.volume B}, MaxWidth: {Box.maxWidth B}"

#eval
  let B := boxSym2D
  let (B1, B2) := Box.splitWidest B
  s!"After split: B1 maxWidth={Box.maxWidth B1}, B2 maxWidth={Box.maxWidth B2}"

#eval
  let B := Box.unit 3
  s!"Unit box [0,1]^3: dim={B.dim}, maxWidth={Box.maxWidth B}"

end LeanCert.Examples.GlobalOptimization
```
