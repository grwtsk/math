# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasAssignableMVar.Variantf087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f89ce72600d6d01cc0d5144a465ad6f111ab84d` · SHA-256 `f087877f4cf6eddd4746913091216ca816a89a152cfdfbcac35a46b94cda28ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic

public section

open Lean

namespace Lean.Meta

def hasAssignableLevelMVar : Level → MetaM Bool
  | .succ lvl       => pure lvl.hasMVar <&&> hasAssignableLevelMVar lvl
  | .max lvl₁ lvl₂  => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .imax lvl₁ lvl₂ => (pure lvl₁.hasMVar <&&> hasAssignableLevelMVar lvl₁) <||> (pure lvl₂.hasMVar <&&> hasAssignableLevelMVar lvl₂)
  | .mvar mvarId    => isLevelMVarAssignable mvarId
  | .zero           => return false
  | .param _        => return false

/-- Return `true` iff expression contains a metavariable that can be assigned. -/
partial def hasAssignableMVar (e : Expr) : MetaM Bool :=
  if !e.hasMVar then
    return false
  else
    go e |>.run' {}
where
  go (e : Expr) : StateRefT ExprSet MetaM Bool :=
    match e with
    | .const _ lvls    => lvls.anyM (liftM <| hasAssignableLevelMVar ·)
    | .sort lvl        => liftM <| hasAssignableLevelMVar lvl
    | .app f a         => do checkSystem "hasAssignableMVar"; visit f <||> visit a
    | .letE _ t v b _  => do checkSystem "hasAssignableMVar"; visit t <||> visit v <||> visit b
    | .forallE _ d b _ => do checkSystem "hasAssignableMVar"; visit d <||> visit b
    | .lam _ d b _     => do checkSystem "hasAssignableMVar"; visit d <||> visit b
    | .fvar _          => return false
    | .bvar _          => return false
    | .lit _           => return false
    | .mdata _ e       => visit e
    | .proj _ _ e      => visit e
    | .mvar mvarId     => mvarId.isAssignable
  visit (e : Expr) : StateRefT ExprSet MetaM Bool := do
    if !e.hasMVar then return false
    if (← get).contains e then return false
    modify fun s => s.insert e
    go e

end Lean.Meta

end
```
