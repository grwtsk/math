# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Support.Variant44b5a981a7cd6f4ac22b55f230b0e8a9476ebb701c694efea78a3127c279f91d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `863107da5a765923264bc9ee9a5416ba1c296cba` · SHA-256 `03dece7ebd2333ddbb0afbf107e299db736f993fd30187d37e9b4e301d8ebd98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprSupportedCore.Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprSupportedCore.Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Core/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.Expr

/-!
# Expression Support Predicates

This file defines predicates indicating which expressions are supported by
different interval evaluation strategies.

## Main definitions

* `ExprSupportedCore` - Predicate for expressions in the computable subset
  (const, var, add, mul, neg, sin, cos, exp, log, sqrt, sinh, cosh, tanh, erf, pi)

* `ExprSupported` - Predicate for the noncomputable AD subset
  (const, var, add, mul, neg, sin, cos, exp)

* `ExprSupportedWithInv` - Syntactic support predicate for expressions with inv and log

## Design notes

The predicates are ordered by generality:
- `ExprSupported` ⊆ `ExprSupportedCore` (via `ExprSupported.toCore`)
- `ExprSupported` ⊆ `ExprSupportedWithInv` (via `ExprSupported.toWithInv`)

The core subset is kept computable so that tactics can use `native_decide`
for interval bound checking. The extended subset uses `Real.exp` with
floor/ceil bounds, which requires noncomputability.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprSupportedCore.Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3

namespace LeanCert.Core

open LeanCert.Core

/-! ### Core supported expression subset (computable) -/

/-- Predicate indicating an expression is in the computable core subset.
    Supports: const, var, add, mul, neg, sin, cos, exp, log, sqrt, sinh, cosh, tanh, erf, pi

    Note: log requires positive domain for correctness. The correctness theorem
    `evalIntervalCore_correct` has an additional hypothesis `evalDomainValid`
    that ensures log arguments evaluate to positive intervals. -/
inductive ExprSupportedCore : Expr → Prop where
  | const (q : ℚ) : ExprSupportedCore (Expr.const q)
  | var (idx : Nat) : ExprSupportedCore (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupportedCore e₁ → ExprSupportedCore e₂ →
      ExprSupportedCore (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupportedCore e₁ → ExprSupportedCore e₂ →
      ExprSupportedCore (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.neg e)
  | sin {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sin e)
  | cos {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.cos e)
  | exp {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.exp e)
  | log {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.log e)
  | sqrt {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sqrt e)
  | sinh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sinh e)
  | cosh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.cosh e)
  | tanh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.tanh e)
  | erf {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.erf e)
  | namedConst (c : MathConst) : ExprSupportedCore (Expr.namedConst c)

/-! ### Extended supported expression subset (with exp) -/

/-- Predicate indicating an expression is in the fully-verified subset for AD.
    Supports: const, var, add, mul, neg, sin, cos, exp
    Does NOT support:
    - sqrt (not differentiable at 0 - use ExprSupportedCore for interval evaluation only)
    - inv (requires nonzero interval checks)
    - log (requires positive interval checks)
    - atan/arsinh/atanh (derivative proofs incomplete - use ExprSupportedWithInv + evalInterval?) -/
inductive ExprSupported : Expr → Prop where
  | const (q : ℚ) : ExprSupported (Expr.const q)
  | var (idx : Nat) : ExprSupported (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupported e₁ → ExprSupported e₂ → ExprSupported (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupported e₁ → ExprSupported e₂ → ExprSupported (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupported e → ExprSupported (Expr.neg e)
  | sin {e : Expr} : ExprSupported e → ExprSupported (Expr.sin e)
  | cos {e : Expr} : ExprSupported e → ExprSupported (Expr.cos e)
  | exp {e : Expr} : ExprSupported e → ExprSupported (Expr.exp e)

/-- ExprSupported expressions are also in ExprSupportedCore -/
theorem ExprSupported.toCore {e : Expr} (h : ExprSupported e) : ExprSupportedCore e := by
  induction h with
  | const q => exact ExprSupportedCore.const q
  | var idx => exact ExprSupportedCore.var idx
  | add _ _ ih₁ ih₂ => exact ExprSupportedCore.add ih₁ ih₂
  | mul _ _ ih₁ ih₂ => exact ExprSupportedCore.mul ih₁ ih₂
  | neg _ ih => exact ExprSupportedCore.neg ih
  | sin _ ih => exact ExprSupportedCore.sin ih
  | cos _ ih => exact ExprSupportedCore.cos ih
  | exp _ ih => exact ExprSupportedCore.exp ih

/-! ### Syntactic support predicate with inv and log -/

/-- Syntactic support predicate for expressions with inv and log (no semantic conditions).
    This is the most general support predicate, allowing all expression constructors.
    Semantic correctness is handled by evalInterval? returning None when conditions fail. -/
inductive ExprSupportedWithInv : Expr → Prop where
  | const (q : ℚ) : ExprSupportedWithInv (Expr.const q)
  | var (idx : Nat) : ExprSupportedWithInv (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupportedWithInv e₁ → ExprSupportedWithInv e₂ →
      ExprSupportedWithInv (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupportedWithInv e₁ → ExprSupportedWithInv e₂ →
      ExprSupportedWithInv (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.neg e)
  | inv {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.inv e)
  | exp {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.exp e)
  | sin {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sin e)
  | cos {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.cos e)
  | log {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.log e)
  | atan {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.atan e)
  | arsinh {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.arsinh e)
  | atanh {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.atanh e)
  | sinc {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sinc e)
  | erf {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.erf e)
  | sqrt {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sqrt e)
  | namedConst (c : MathConst) : ExprSupportedWithInv (Expr.namedConst c)

/-- ExprSupported implies ExprSupportedWithInv -/
theorem ExprSupported.toWithInv {e : Expr} (h : ExprSupported e) : ExprSupportedWithInv e := by
  induction h with
  | const q => exact ExprSupportedWithInv.const q
  | var idx => exact ExprSupportedWithInv.var idx
  | add _ _ ih₁ ih₂ => exact ExprSupportedWithInv.add ih₁ ih₂
  | mul _ _ ih₁ ih₂ => exact ExprSupportedWithInv.mul ih₁ ih₂
  | neg _ ih => exact ExprSupportedWithInv.neg ih
  | sin _ ih => exact ExprSupportedWithInv.sin ih
  | cos _ ih => exact ExprSupportedWithInv.cos ih
  | exp _ ih => exact ExprSupportedWithInv.exp ih

end LeanCert.Core
```
