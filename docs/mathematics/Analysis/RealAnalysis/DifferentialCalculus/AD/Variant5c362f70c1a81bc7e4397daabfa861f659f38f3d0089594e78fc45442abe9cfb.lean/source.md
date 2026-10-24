# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AD.Variant5c362f70c1a81bc7e4397daabfa861f659f38f3d0089594e78fc45442abe9cfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11aa219b6868236b659d38262916dc3d3720b307` · SHA-256 `bdb73e06dca2128332b02c4b3395f261b086ac604ac684d03a9042b934561c42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AD.Variant602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.AD.Variant602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18","mathematical_subject":"Analysis.Calculus","original_sha256":"602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/AD.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AD.Variant602109753172def2a910503957f1c15f84497f6f8bd60db1959277c99f920a18

```
