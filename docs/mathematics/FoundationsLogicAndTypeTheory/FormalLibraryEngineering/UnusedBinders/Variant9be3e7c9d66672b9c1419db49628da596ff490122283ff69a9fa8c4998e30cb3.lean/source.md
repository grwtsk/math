# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedBinders.Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9764bca588a0a855c1f87e1ba23b43a6d1a27a8b` · SHA-256 `9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Thomas Murrils. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Murrils
-/
module

prelude
public import Lean.Expr

public section

namespace Lean.Expr

/--
Tests if any of the binders of `(x₀ : A₀) → (x₁ : A₁) → ⋯ → X` which satisfy `p Aᵢ bi` (with `bi`
the `binderInfo`) are unused in the renainder of the type (i.e. in `(xᵢ₊₁ : Aᵢ₊₁) → ⋯ → X`).

Note that the argument to `p` may have loose bvars. This is a performance optimization.

This function runs `cleanupAnnotations` on each type suffix `(xᵢ₊₁ : Aᵢ₊₁) → ⋯ → X` before
examining it.

We see through `let`s, and do not report if any of them are unused.
-/
@[specialize p]
partial def hasUnusedForallBindersWhere (p : BinderInfo → Expr → Bool) (e : Expr) : Bool :=
  match e.cleanupAnnotations with
  | .forallE _ type body bi =>
    p bi type && !(body.hasLooseBVar 0) || body.hasUnusedForallBindersWhere p
  /- See through `letE` -/
  | .letE _ _ _ body _ => body.hasUnusedForallBindersWhere p
  | _ => false

end Lean.Expr
```
