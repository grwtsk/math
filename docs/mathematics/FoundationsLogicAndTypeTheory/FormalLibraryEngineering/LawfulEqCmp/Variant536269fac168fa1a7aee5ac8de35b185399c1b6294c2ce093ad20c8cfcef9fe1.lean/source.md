# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulEqCmp.Variant536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1f0ec514384bf2f3f5c7c8260a6d68564b16ac1` · SHA-256 `536269fac168fa1a7aee5ac8de35b185399c1b6294c2ce093ad20c8cfcef9fe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Util
import Lean.Meta.Tactic.Grind.SynthInstance
public section
namespace Lean.Meta.Grind
/-!
Support for type class `LawfulEqCmp`.
-/
/-
**Note**: we will have similar support for `Associative` and `Commutative`. In the future, we should have
a mechanism for letting users to install their own handlers.
-/

/--
If `op` implements `LawfulEqCmp`, then returns the proof term for
`∀ a b, op a b = .eq → a = b`
-/
def getLawfulEqCmpThm? (op : Expr) : GrindM (Option Expr) := do
  if let some thm? := (← get).lawfulEqCmpMap.find? { expr := op } then
    return thm?
  let thm? ← go?
  modify fun s => { s with lawfulEqCmpMap := s.lawfulEqCmpMap.insert { expr := op } thm? }
  return thm?
where
  go? : MetaM (Option Expr) := do
    unless (← getEnv).contains ``Std.LawfulEqCmp do return none
    let opType ← whnf (← inferType op)
    let .forallE _ α b _ := opType | return none
    if b.hasLooseBVars then return none
    let .forallE _ α' b _ ← whnf b | return none
    unless b.isConstOf ``Ordering do return none
    unless (← isDefEq α α') do return none
    let u ← getLevel α
    let some u ← decLevel? u | return none
    let lawfulEqCmp := mkApp2 (mkConst ``Std.LawfulEqCmp [u]) α op
    let some lawfulEqCmpInst ← synthInstanceMeta? lawfulEqCmp | return none
    return some <| mkApp3 (mkConst ``Std.LawfulEqCmp.eq_of_compare [u]) α op lawfulEqCmpInst

def propagateLawfulEqCmp (e : Expr) : GoalM Unit := do
  let some op := getBinOp e | return ()
  let some thm ← getLawfulEqCmpThm? op | return ()
  let oeq ← getOrderingEqExpr
  unless (← isEqv e oeq) do return ()
  let a := e.appFn!.appArg!
  let b := e.appArg!
  pushEq a b <| mkApp3 thm a b (← mkEqProof e oeq)

end Lean.Meta.Grind
```
