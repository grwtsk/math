# Complete source: GRWTSK.Topology.GeneralTopology.Filter.Variant5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a38a8027ac187d5822d84cff64f4c152e4e6f2` · SHA-256 `5c31e8352a7145fda8163f668681eca50ba441c451de50bd15801779de785064`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
namespace Lean.Meta.Grind

public inductive Filter where
  | true
  | const (declName : Name)
  | fvar (fvarId : FVarId)
  | gen (pred : Nat → Bool)
  | or (a b : Filter)
  | and (a b : Filter)
  | not (a : Filter)

-- **Note**: facts may not have been internalized if they are equalities.
def getGen (e : Expr) : GoalM Nat := do
  if (← alreadyInternalized e) then
    getGeneration e
  else match_expr e with
   | Eq _ lhs rhs => return max (← getGeneration lhs) (← getGeneration rhs)
   | _ => return 0

public def Filter.eval (filter : Filter) (e : Expr) : GoalM Bool := do
  go filter
where
  go (filter : Filter) : GoalM Bool := do
    match filter with
    | .true => return .true
    | .and a b => go a <&&> go b
    | .or a b => go a <||> go b
    | .not a => return !(← go a)
    | .const declName => return Option.isSome <| e.find? fun e => e.isConstOf declName
    | .fvar fvarId => return Option.isSome <| e.find? fun e => e.isFVar && e.fvarId! == fvarId
    | .gen pred => let gen ← getGen e; return pred gen

end Lean.Meta.Grind
```
