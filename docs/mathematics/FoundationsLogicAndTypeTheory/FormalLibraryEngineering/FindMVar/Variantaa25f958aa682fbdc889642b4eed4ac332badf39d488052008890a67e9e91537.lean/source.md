# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindMVar.Variantaa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11df3087a2f5c7110a8ec4955dd3e96a5d5235cb` · SHA-256 `aa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr

public section

namespace Lean

namespace FindMVar

abbrev Visitor := Option MVarId → Option MVarId

mutual
  partial def visit (p : MVarId → Bool) (e : Expr) : Visitor := fun s =>
    if s.isSome || !e.hasExprMVar then s else main p e s

  partial def main (p : MVarId → Bool) : Expr → Visitor
    | Expr.proj _ _ e      => visit p e
    | Expr.forallE _ d b _ => visit p b ∘ visit p d
    | Expr.lam _ d b _     => visit p b ∘ visit p d
    | Expr.letE _ t v b _  => visit p b ∘ visit p v ∘ visit p t
    | Expr.app f a         => visit p a ∘ visit p f
    | Expr.mdata _ b       => visit p b
    | Expr.mvar mvarId     => fun s => if s.isNone && p mvarId then some mvarId else s
    | _                    => id
end

end FindMVar

@[inline] def Expr.findMVar? (e : Expr) (p : MVarId → Bool) : Option MVarId :=
  FindMVar.main p e none

end Lean
```
