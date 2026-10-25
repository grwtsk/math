# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfe38178a1c4dc97ffa82590b42a86dfdda07e9e` · SHA-256 `4c048632f7f7fee02d63ce3bfd1685cda8c0428004edbea09552d26c81debce7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022--2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public meta import Aesop.Util.Unfold
public meta import Lean.Elab.Tactic.Basic
import Lean.Message

public section

open Lean Lean.Meta Lean.Elab.Tactic

namespace Aesop

private meta def mkToUnfold (ids : Array Ident) :
    MetaM (Std.HashMap Name (Option Name)) := do
  let mut toUnfold : Std.HashMap Name (Option Name) := {}
  for id in (ids : Array Ident) do
    let decl ← resolveGlobalConstNoOverload id
    toUnfold := toUnfold.insert decl (← getUnfoldEqnFor? decl)
  return toUnfold

elab "aesop_unfold " ids:ident+ : tactic => do
  let toUnfold ← mkToUnfold ids
  liftMetaTactic λ goal => do
    match ← unfoldManyTarget (toUnfold[·]?) goal with
    | none => throwTacticEx `aesop_unfold goal "could not unfold any of the given constants"
    | some (goal, _) => return [goal]

elab "aesop_unfold " ids:ident+ " at " hyps:ident+ : tactic => do
  let toUnfold ← mkToUnfold ids
  liftMetaTactic λ goal => do
    let mut goal := goal
    for hypId in hyps do
      let fvarId := (← getLocalDeclFromUserName hypId.getId).fvarId
      match ← unfoldManyAt (toUnfold[·]?) goal fvarId with
      | none => throwTacticEx `aesop_unfold goal m!"could not unfold any of the given constants at hypothesis '{hypId}'"
      | some (goal', _) => goal := goal'
    return [goal]

end Aesop
```
