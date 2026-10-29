-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPartiallyAppliedCoe.Variant53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabPartiallyAppliedCoe.Variant53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Coe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPartiallyAppliedCoe.Variant53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0

open Lean Elab Term Meta

/-!
Defines notations for coercions.
1. `↑ t` is defined in core.
2. `(↑)` is equivalent to the eta-reduction of `(↑ ·)`
3. `⇑ t` is a coercion to a function type.
4. `(⇑)` is equivalent to the eta-reduction of `(⇑ ·)`
3. `↥ t` is a coercion to a type.
6. `(↥)` is equivalent to the eta-reduction of `(↥ ·)`
-/

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

/-- `⇑ t` coerces `t` to a function. -/
-- We increase the right precedence so this goes above most binary operators.
-- Otherwise `⇑f = g` will parse as `⇑(f = g)`.
elab "⇑" m:term:80 : term => do
  let x ← elabTerm m none
  if let some ty ← coerceToFunction? x then
    return ty
  else
    throwError "cannot coerce to function{indentExpr x}"

/-- Partially applied function coercion.  Equivalent to the η-reduction of `(⇑ ·)` -/
elab "(" "⇑" ")" : term <= expectedType =>
  elabPartiallyAppliedCoe "⇑" expectedType fun b x => do
    if let some ty ← coerceToFunction? x then
      ensureHasType b ty
    else
      throwError "cannot coerce to function{indentExpr x}"

/-- `↥ t` coerces `t` to a type. -/
elab "↥" t:term:80 : term => do
  let x ← elabTerm t none
  if let some ty ← coerceToSort? x then
    return ty
  else
    throwError "cannot coerce to sort{indentExpr x}"

/-- Partially applied type coercion.  Equivalent to the η-reduction of `(↥ ·)` -/
elab "(" "↥" ")" : term <= expectedType =>
  elabPartiallyAppliedCoe "↥" expectedType fun b x => do
    if let some ty ← coerceToSort? x then
      ensureHasType b ty
    else
      throwError "cannot coerce to sort{indentExpr x}"
