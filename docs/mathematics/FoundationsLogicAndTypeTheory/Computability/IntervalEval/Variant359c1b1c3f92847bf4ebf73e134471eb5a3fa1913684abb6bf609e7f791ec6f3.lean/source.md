# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.IntervalEval.Variant359c1b1c3f92847bf4ebf73e134471eb5a3fa1913684abb6bf609e7f791ec6f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `924146c5f907e74fadd2741f8c2f6289d2371d11` · SHA-256 `64a467f77b9aeecd6f93ebc3d1d2d5553fb9c63dc3c1765b0f68562e083f293a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.Support.Variant1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.Support.Variant1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca","mathematical_subject":"Computation.Computability","original_sha256":"1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/IntervalEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.Support.Variant1527e354261b538e3962005f829dc2e7c9a2280de003a33180edb2e568a441ca

namespace LeanCert.Engine

-- Re-export all definitions from component modules
-- All imports are transitive, so users can continue to `import LeanCert.Engine.IntervalEval`
-- and have access to all definitions as before.

end LeanCert.Engine
```
