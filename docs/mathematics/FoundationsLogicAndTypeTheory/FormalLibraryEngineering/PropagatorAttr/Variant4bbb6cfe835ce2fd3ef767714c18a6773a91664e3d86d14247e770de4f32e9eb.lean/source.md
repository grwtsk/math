# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagatorAttr.Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77e0ab069bf9277ead3008e315199e06addd09d0` · SHA-256 `4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Proof
import Init.Grind
public section
namespace Lean.Meta.Grind

abbrev PropagatorMap := Std.HashMap Name (List Propagator)

def PropagatorMap.insert (m : PropagatorMap) (declName : Name) (p : Propagator) : PropagatorMap :=
  let ps := m[declName]? |>.getD []
  Std.HashMap.insert m declName (p :: ps)

/-- Builtin propagators. -/
structure BuiltinPropagators where
  up   : PropagatorMap := {}
  down : PropagatorMap := {}
  deriving Inhabited

builtin_initialize builtinPropagatorsRef : IO.Ref BuiltinPropagators ← IO.mkRef {}

private def registerBuiltinPropagatorCore (declName : Name) (up : Bool) (proc : Propagator) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError s!"invalid builtin `grind` propagator declaration, it can only be registered during initialization")
  if up then
    builtinPropagatorsRef.modify fun { up, down } => { up := up.insert declName proc, down }
  else
    builtinPropagatorsRef.modify fun { up, down } => { up, down := down.insert declName proc }

def registerBuiltinUpwardPropagator (declName : Name) (proc : Propagator) : IO Unit :=
  registerBuiltinPropagatorCore declName true proc

def registerBuiltinDownwardPropagator (declName : Name) (proc : Propagator) : IO Unit :=
  registerBuiltinPropagatorCore declName false proc

private def addBuiltin (propagatorName : Name) (stx : Syntax) : AttrM Unit := do
  let go : MetaM Unit := withoutExporting do  -- result will be private anyway
    let up := stx[1].getKind == ``Lean.Parser.Tactic.simpPost
    let addDeclName := if up then
      ``registerBuiltinUpwardPropagator
    else
      ``registerBuiltinDownwardPropagator
    let declName ← resolveGlobalConstNoOverload stx[2]
    let val := mkAppN (mkConst addDeclName) #[toExpr declName, mkConst propagatorName]
    let initDeclName ← mkFreshUserName (propagatorName ++ `declare)
    declareBuiltin initDeclName val
  go.run' {}

/-
**Note**: We currently use the same propagators for all `grind` attributes.
-/
builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `grindPropagatorBuiltinAttr
    descr           := "Builtin `grind` propagator procedure"
    applicationTime := AttributeApplicationTime.afterCompilation
    erase           := fun _ => throwError "Not implemented yet, [-builtin_simproc]"
    add             := fun declName stx _ => addBuiltin declName stx
  }

end Lean.Meta.Grind
```
