# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37b09bfa4be40dbc8733a531ee0be6564200bf57` · SHA-256 `53d98c0ad41256817b304833930e78bc1fee91eb678a52e83436faa2ac6345f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean

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
```
