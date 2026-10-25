# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant8464fbf97cc3adce5373b7a4462320080d4865493c0dd1acd6f7a502dd9a325d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ef77aba974b189ff47ba9120392546c94e6e11e` · SHA-256 `8464fbf97cc3adce5373b7a4462320080d4865493c0dd1acd6f7a502dd9a325d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic
public import Aesop.Util.Unfold

public section

open Lean
open Lean.Meta

namespace Aesop.RuleBuilder

-- Somewhat inefficient since `foldConsts` doesn't short-circuit.
def hasConst (c : Name) (e : Expr) : Bool :=
  e.foldConsts (init := false) λ c' acc => acc || c' == c

def checkUnfoldableConst (decl : Name) : MetaM (Option Name) :=
  withoutModifyingState do
    let e ← mkConstWithFreshMVarLevels decl
    let t := (← getConstInfo decl).type
    let unfoldThm? ← getUnfoldEqnFor? decl
    forallTelescope t λ args _ => do
      let testExpr := mkAppN e args
      let unfoldResult ←
        unfoldMany (if · == decl then some unfoldThm? else none) testExpr
      match unfoldResult with
      | none =>
        throwError "Declaration '{decl}' cannot be unfolded."
      | some (e', _) =>
        if hasConst decl e' then
          throwError "Recursive definition '{decl}' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it."
    return unfoldThm?

def unfoldCore (decl : Name) : MetaM LocalRuleSetMember := do
  let unfoldThm? ← checkUnfoldableConst decl
  return .global $ .base $ .unfoldRule { decl, unfoldThm? }

-- TODO support local unfold rules
def unfold : RuleBuilder := λ input => do
  let decl ← elabGlobalRuleIdent .unfold input.term
  unfoldCore decl

end Aesop.RuleBuilder
```
