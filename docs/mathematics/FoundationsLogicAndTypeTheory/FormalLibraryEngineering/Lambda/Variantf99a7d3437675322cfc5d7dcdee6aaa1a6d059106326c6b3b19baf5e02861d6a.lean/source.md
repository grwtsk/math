# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lambda.Variantf99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dd9da8cdec17ec2f335f496ab58978f5edbd510` · SHA-256 `f99a7d3437675322cfc5d7dcdee6aaa1a6d059106326c6b3b19baf5e02861d6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
Definitionally simplifies a lambda expression.

Unlike `Sym.Simp.simpLambda`, it descends into the binder type as well as the
body.
-/
public partial def dsimpLambda : DSimproc := fun e =>
  go e #[] false
where
  go (e : Expr) (fvars : Array Expr) (modified : Bool) : DSimpM Result := do
    match e with
    | .lam n d b c =>
      -- Instantiate the binder domain against the already-introduced `fvars` *before* creating
      -- the local declaration, otherwise the decl retains loose bound variables referring to
      -- earlier binders in this telescope.
      let d ← instantiateRevBetaS d fvars
      match (← dsimp d) with
      | .rfl _ => withLocalDecl n c d fun x => go b (fvars.push x) modified
      | .step d' _ => withLocalDecl n c d' fun x => go b (fvars.push x) true
    | _ =>
      let r ← dsimp (← instantiateRevBetaS e fvars)
      match r with
      | .rfl _ =>
        if modified then
          return .step (← mkLambdaFVarsS fvars e)
        else
          return .rfl
      | .step e' _ =>
        return .step (← mkLambdaFVarsS fvars e')

end Lean.Meta.Sym.DSimp
```
