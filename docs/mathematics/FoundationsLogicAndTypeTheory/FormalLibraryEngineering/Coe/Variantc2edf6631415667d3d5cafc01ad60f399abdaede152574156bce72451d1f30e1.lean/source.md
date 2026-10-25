# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variantc2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce4de64cb81eba56850b40faab21250d89d56e32` · SHA-256 `c2edf6631415667d3d5cafc01ad60f399abdaede152574156bce72451d1f30e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
