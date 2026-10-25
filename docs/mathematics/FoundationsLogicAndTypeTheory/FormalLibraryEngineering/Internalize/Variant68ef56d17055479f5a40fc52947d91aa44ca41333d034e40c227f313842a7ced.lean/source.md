# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internalize.Variant68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c48eb336e97ddf961a19a78fc0cc433833283d5` · SHA-256 `68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Util
import Lean.Meta.Tactic.Grind.AC.DenoteExpr
public section
namespace Lean.Meta.Grind.AC

private def isParentSameOpApp (parent? : Option Expr) (op : Expr) : GoalM Bool := do
  let some e := parent? | return false
  unless e.isApp && e.appFn!.isApp do return false
  return isSameExpr e.appFn!.appFn! op

partial def reify (e : Expr) : ACM Grind.AC.Expr := do
  if let some (a, b) ← isOp? e then
    return .op (← reify a) (← reify b)
  else
    return .var (← mkVar e)

def internalize (e : Expr) (parent? : Option Expr) : GoalM Unit := do
  unless (← getConfig).ac do return ()
  unless e.isApp && e.appFn!.isApp do return ()
  let op := e.appFn!.appFn!
  let some id ← getOpId? op | return ()
  if (← isParentSameOpApp parent? op) then return ()
  ACM.run id do
    if (← getStruct).denote.contains { expr := e } then return ()
    let e' ← reify e
    modifyStruct fun s => { s with
      denote := s.denote.insert { expr := e } e'
      denoteEntries := s.denoteEntries.push (e, e')
      recheck := true -- new equalities may be found by normalization
    }
    trace[grind.ac.internalize] "[{id}] {← e'.denoteExpr}"
    addTermOpId e
    acExt.markTerm e

end Lean.Meta.Grind.AC
```
