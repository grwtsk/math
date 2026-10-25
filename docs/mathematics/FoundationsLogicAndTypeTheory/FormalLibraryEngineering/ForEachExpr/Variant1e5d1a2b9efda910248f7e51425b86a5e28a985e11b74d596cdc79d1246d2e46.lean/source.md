# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachExpr.Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8c728018470d7234d3a2a3727add85678683620` · SHA-256 `1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.MonadCache

public section

namespace Lean
/-!
Remark: we cannot use the caching trick used at `FindExpr` and `ReplaceExpr` because they
may visit the same expression multiple times if they are stored in different memory
addresses. Note that the following code is parametric in a monad `m`.
-/

variable {ω : Type} {m : Type → Type} [STWorld ω m] [MonadLiftT (ST ω) m] [Monad m]
namespace ForEachExpr
def visit (g : Expr → m Bool) (e : Expr) : MonadCacheT Expr Unit m Unit :=
  checkCache e fun _ => do
    if (← g e) then
      match e with
      | .forallE _ d b _   => do visit g d; visit g b
      | .lam _ d b _       => do visit g d; visit g b
      | .letE _ t v b _    => do visit g t; visit g v; visit g b
      | .app f a           => do visit g f; visit g a
      | .mdata _ b         => visit g b
      | .proj _ _ b        => visit g b
      | _                  => pure ()

end ForEachExpr

/-- Apply `f` to each sub-expression of `e`. If `f t` returns false, then t's children are not visited. -/
@[inline] def Expr.forEach' (e : Expr) (f : Expr → m Bool) : m Unit :=
  (ForEachExpr.visit f e).run

@[inline] def Expr.forEach (e : Expr) (f : Expr → m Unit) : m Unit :=
  e.forEach' fun e => do f e; pure true

end Lean
```
