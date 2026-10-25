# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonempty.Variant52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3dd8ae31ceb99c60ab11e6ce770a08e3506a2b5` · SHA-256 `52b0305e85cd5b5cbe6512f47f8d5933b81c5e14bb633e8dc3b2f236049ce40c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util

public section

namespace Lean.Elab.Deriving
open Command Meta Parser Term

private def mkNonemptyInstance (declName : Name) : TermElabM Syntax.Command := do
  let indVal ← getConstInfoInduct declName
  forallTelescopeReducing indVal.type fun paramsIndices _ => do
  let mut indArgs := #[]
  let mut binders := #[]
  for x in paramsIndices do
    let arg := mkIdent (← mkFreshUserName (← x.fvarId!.getUserName).eraseMacroScopes)
    indArgs := indArgs.push arg
    binders := binders.push (← `(bracketedBinderF| {$arg}))
    if let .sort u ← whnf (← inferType x) then
      if let .some _ ← decLevel? u then
        binders := binders.push (← `(bracketedBinderF| [Nonempty $arg]))
  let ctorTacs ← indVal.ctors.toArray.mapM fun ctor =>
    `(tactic| apply @$(mkCIdent ctor) <;> exact Classical.ofNonempty)
  `(command| variable $binders* in
    instance : Nonempty (@$(mkCIdent declName) $indArgs*) :=
      by constructor; first $[| $ctorTacs:tactic]*)

def mkNonemptyInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      withoutExposeFromCtors declName do
        elabCommand (← liftTermElabM do mkNonemptyInstance declName)
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler `Nonempty mkNonemptyInstanceHandler
```
