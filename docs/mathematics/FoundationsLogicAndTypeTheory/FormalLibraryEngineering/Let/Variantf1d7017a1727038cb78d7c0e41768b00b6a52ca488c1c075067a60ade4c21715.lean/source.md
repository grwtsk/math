# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Let.Variantf1d7017a1727038cb78d7c0e41768b00b6a52ca488c1c075067a60ade4c21715

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c0e3496193696f13c8f3ca85ab8b306741d0bbe` · SHA-256 `f1d7017a1727038cb78d7c0e41768b00b6a52ca488c1c075067a60ade4c21715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.AbstractS
import Lean.Meta.Sym.InstantiateS
namespace Lean.Meta.Sym.DSimp

/--
Definitionally simplifies a `let`/`have` expression.
-/
public def dsimpLet : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .letE n t v b nd =>
      -- Instantiate the binder type and value against the already-introduced `fvars` *before*
      -- creating the local declaration. Using the raw `t`/`v` would leave loose bound variables
      -- (referring to earlier binders in this telescope) in the decl, which get misinterpreted
      -- once the decl is zeta-expanded under a different binder.
      let t ← instantiateRevBetaS t fvars
      let v ← instantiateRevBetaS v fvars
      match (← dsimp t), (← dsimp v) with
      | .rfl _, .rfl _ =>
        withLetDecl n t v (nondep := nd) fun x => go b (fvars.push x) modified
      | .step t' _, .rfl _ =>
        withLetDecl n t' v (nondep := nd) fun x => go b (fvars.push x) true
      | .rfl _, .step v' _ =>
        withLetDecl n t v' (nondep := nd) fun x => go b (fvars.push x) true
      | .step t' _, .step v' _ =>
        withLetDecl n t' v' (nondep := nd) fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkLetFVars (generalizeNondepLet := false) (usedLetOnly := false) fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkLetFVars (generalizeNondepLet := false) (usedLetOnly := false) fvars e')

end Lean.Meta.Sym.DSimp
```
