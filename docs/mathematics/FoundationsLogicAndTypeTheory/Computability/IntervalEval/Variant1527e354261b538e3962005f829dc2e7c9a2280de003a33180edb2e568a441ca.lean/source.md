# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.IntervalEval.Variant1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7796f4b9fb08d7f80aac5c6b93689fced9a49d5` · SHA-256 `1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.Support
import LeanCert.Engine.Eval.Core
import LeanCert.Engine.Eval.Extended
import LeanCert.Tactic.Bound.Lemmas

/-!
# Interval Evaluation of Expressions

This file re-exports the interval evaluation infrastructure for `LeanCert.Core.Expr`.

## Module structure

The implementation is split across several files:

* `LeanCert.Core.Support` - Expression support predicates (`ExprSupportedCore`,
  `ExprSupported`, `ExprSupportedWithInv`)

* `LeanCert.Engine.Eval.Core` - Computable interval evaluator (`evalIntervalCore`)
  and transcendental interval bounds

* `LeanCert.Engine.Eval.Extended` - Noncomputable evaluator (`evalInterval`) and
  partial evaluator with inv/log support (`evalInterval?`)

* `LeanCert.Tactic.Bound.Lemmas` - Tactic-facing lemmas for proving bounds

## Main definitions (re-exported)

### Expression support predicates
* `ExprSupportedCore` - Computable subset (const, var, add, mul, neg, sin, cos, exp, sqrt, sinh, cosh, tanh, pi)
* `ExprSupported` - Noncomputable AD subset (const, var, add, mul, neg, sin, cos, exp)
* `ExprSupportedWithInv` - Syntactic support including inv and log

### Evaluators
* `evalIntervalCore` - Computable interval evaluator (uses Taylor series)
* `evalInterval` - Noncomputable evaluator (uses floor/ceil for exp)
* `evalInterval?` - Partial evaluator with inv/log support

### Correctness theorems
* `evalIntervalCore_correct` - Core evaluator correctness
* `evalInterval_correct` - Extended evaluator correctness
* `evalInterval?_correct` - Partial evaluator correctness

### Tactic lemmas
* `exprCore_le_of_interval_hi` / `exprCore_ge_of_interval_lo` - Core bounds
* `expr_le_of_interval_hi` / `expr_ge_of_interval_lo` - Extended bounds

## Design notes

The evaluators are split by computability:
- `evalIntervalCore` is COMPUTABLE, enabling `native_decide` in tactics
- `evalInterval` is NONCOMPUTABLE, using Real.exp with floor/ceil bounds
- Both are fully verified (no sorry, no axioms)
-/

namespace LeanCert.Engine

-- Re-export all definitions from component modules
-- All imports are transitive, so users can continue to `import LeanCert.Engine.IntervalEval`
-- and have access to all definitions as before.

end LeanCert.Engine
```
