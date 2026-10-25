# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant519477cdc10d70aeb5aebaca1ada08f38eca0a35f7fb6473e7a3e780419cf406

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4484a46afc926ea25976b26d26e64b8fdfd8cbf` · SHA-256 `c68e0797f9beee6fc911d628269bd86098d07b39d076e9bed67beae743c393c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPartiallyAppliedCoe.Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabPartiallyAppliedCoe.Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Coe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init
import Lean.Elab.ElabRules

/-!
# Additional coercion notation

Defines notation for coercions.
1. `↑ t` is defined in core.
2. `(↑)` is equivalent to the eta-reduction of `(↑ ·)`
3. `⇑ t` is a coercion to a function type.
4. `(⇑)` is equivalent to the eta-reduction of `(⇑ ·)`
3. `↥ t` is a coercion to a type.
6. `(↥)` is equivalent to the eta-reduction of `(↥ ·)`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPartiallyAppliedCoe.Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1

open Lean Meta

namespace Lean.Elab.Term.CoeImpl

/-- Elaborator for the `(↑)`, `(⇑)`, and `(↥)` notations. -/
def elabPartiallyAppliedCoe (sym : String) (expectedType : Expr)
    (mkCoe : (expectedType x : Expr) → TermElabM Expr) : TermElabM Expr := do
  let expectedType ← instantiateMVars expectedType
  let Expr.forallE _ a b .. := expectedType | do
    tryPostpone
    throwError "({sym}) must have a function type, not{indentExpr expectedType}"
  if b.hasLooseBVars then
    tryPostpone
    throwError "({sym}) must have a non-dependent function type, not{indentExpr expectedType}"
  if a.hasExprMVar then tryPostpone
  let f ← withLocalDeclD `x a fun x ↦ do
    mkLambdaFVars #[x] (← mkCoe b x)
  return f.etaExpanded?.getD f

/-- Partially applied coercion.  Equivalent to the η-reduction of `(↑ ·)` -/
elab "(" "↑" ")" : term <= expectedType =>
  elabPartiallyAppliedCoe "↑" expectedType fun b x => do
    if b.hasExprMVar then tryPostpone
    if let .some e ← coerce? x b then
      return e
    else
      throwError "cannot coerce{indentExpr x}\nto type{indentExpr b}"

/-- Partially applied function coercion.  Equivalent to the η-reduction of `(⇑ ·)` -/
elab "(" "⇑" ")" : term <= expectedType =>
  elabPartiallyAppliedCoe "⇑" expectedType fun b x => do
    if let some ty ← coerceToFunction? x then
      ensureHasType b ty
    else
      throwError "cannot coerce to function{indentExpr x}"

/-- Partially applied type coercion.  Equivalent to the η-reduction of `(↥ ·)` -/
elab "(" "↥" ")" : term <= expectedType =>
  elabPartiallyAppliedCoe "↥" expectedType fun b x => do
    if let some ty ← coerceToSort? x then
      ensureHasType b ty
    else
      throwError "cannot coerce to sort{indentExpr x}"

end Lean.Elab.Term.CoeImpl
```
