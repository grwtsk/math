# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AD.Variant602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02f6dab1763b02a6e9cbcb721384a7b26ad324cf` · SHA-256 `602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.AD.Basic
import LeanCert.Engine.AD.Transcendental
import LeanCert.Engine.AD.Eval
import LeanCert.Engine.AD.Correctness
import LeanCert.Engine.AD.PartialCorrectness
import LeanCert.Engine.AD.Computable

/-!
# Automatic Differentiation via Intervals

This module provides forward-mode automatic differentiation using interval
arithmetic. We compute both the value and derivative of an expression,
with rigorous bounds on both.

## Module Structure

* `AD.Basic` - Core types: `DualInterval`, basic operations (`add`, `mul`, `neg`)
* `AD.Transcendental` - Transcendental functions (`sin`, `cos`, `exp`, etc.)
* `AD.Eval` - Evaluators: `evalDual`, `evalDual?`, `derivInterval`
* `AD.Correctness` - Correctness theorems for supported expressions
* `AD.PartialCorrectness` - Correctness for partial functions (inv, log, sqrt)
* `AD.Computable` - Taylor-based computable evaluators

## Main definitions

* `DualInterval` - A pair of intervals representing (value, derivative)
* `evalDual` - Evaluate expression to get value and derivative intervals
* `evalDual?` - Partial evaluator supporting inv, log, sqrt
* `evalDualCore` - Computable evaluator for native_decide

## Main theorems

* `evalDual_val_correct` - Value component is correct for supported expressions
* `evalDual_der_correct` - Derivative component is correct for supported expressions
* `evalDual?_val_correct`, `evalDual?_der_correct` - Correctness with domain checks
* `evalDualCore_val_correct`, `evalDualCore_der_correct` - Computable correctness

All theorems are FULLY PROVED with no sorry or axioms.
-/
```
