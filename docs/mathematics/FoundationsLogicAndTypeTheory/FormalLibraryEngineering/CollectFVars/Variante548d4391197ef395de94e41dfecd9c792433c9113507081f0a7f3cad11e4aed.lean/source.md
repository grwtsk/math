# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFVars.Variante548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3212481ea8ca3cbdf88dcf51622c550647b230f3` · SHA-256 `e548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.LocalContext

public section

namespace Lean.CollectFVars

structure State where
  visitedExpr  : ExprSet  := {}
  fvarSet      : FVarIdSet  := {}
  fvarIds      : Array FVarId := #[]
  deriving Inhabited

def State.add (s : State) (fvarId : FVarId) : State :=
  { s with fvarSet := s.fvarSet.insert fvarId, fvarIds := s.fvarIds.push fvarId }

abbrev Visitor := State → State

mutual
  partial def visit (e : Expr) : Visitor := fun s =>
    if !e.hasFVar || s.visitedExpr.contains e then s
    else main e { s with visitedExpr := s.visitedExpr.insert e }

  partial def main : Expr → Visitor
    | .proj _ _ e      => visit e
    | .forallE _ d b _ => visit b ∘ visit d
    | .lam _ d b _     => visit b ∘ visit d
    | .letE _ t v b _  => visit b ∘ visit v ∘ visit t
    | .app f a         => visit a ∘ visit f
    | .mdata _ b       => visit b
    | .fvar fvarId     => fun s => s.add fvarId
    | _                => id
end

end CollectFVars

def collectFVars (s : CollectFVars.State) (e : Expr) : CollectFVars.State :=
  CollectFVars.main e s

end Lean
```
