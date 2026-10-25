# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInhabitant.Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fa3388e1d158bcd47e5d268bbc9d89dd3cc652c` · SHA-256 `d3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.AppBuilder
public import Lean.PrettyPrinter
import Init.Omega

public section
namespace Lean.Elab
open Meta

private def withInhabitedInstances (xs : Array Expr) (k : Array Expr → MetaM α) : MetaM α := do
  let rec go (i : Nat) (insts : Array Expr) : MetaM α := do
    if h : i < xs.size then
      let x := xs[i]
      let xTy ← inferType x
      let u ← getLevel xTy
      let instTy := mkApp (.const ``Inhabited [u]) xTy
      let instVal := mkApp2 (.const ``Inhabited.mk [u]) xTy x
      withLetDecl `inst instTy instVal fun inst =>
        go (i + 1) (insts.push inst)
    else
      k insts
  go 0 #[]

private def mkInhabitant? (type : Expr) (useOfNonempty : Bool) : MetaM (Option Expr) := do
  try
    if useOfNonempty then
      return some (← mkOfNonempty type)
    else
      return some (← mkDefault type)
  catch _ =>
    return none

/--
Find an inhabitant while doing delta unfolding.
-/
private partial def mkInhabitantForAux? (xs insts : Array Expr) (type : Expr) (useOfNonempty : Bool) : MetaM (Option Expr) := withIncRecDepth do
  if let some val ← mkInhabitant? type useOfNonempty then
    mkLambdaFVars xs (← mkLetFVars (usedLetOnly := true) insts val)
  else
    let type ← whnfCore type
    if type.isForall then
      forallTelescope type fun xs' type' =>
        withInhabitedInstances xs' fun insts' =>
          mkInhabitantForAux? (xs ++ xs') (insts ++ insts') type' useOfNonempty
    else if let some type' ← unfoldDefinition? type then
      mkInhabitantForAux? xs insts type' useOfNonempty
    else
      return none

/- TODO: add a global IO.Ref to let users customize/extend this procedure -/
def mkInhabitantFor (failedToMessage : MessageData) (xs : Array Expr) (type : Expr) : MetaM Expr :=
  withInhabitedInstances xs fun insts => do
    if let some val ← mkInhabitantForAux? xs insts type false <||> mkInhabitantForAux? xs insts type true then
      return val
    else
      throwError "\
        {failedToMessage}, could not prove that the type\
        {indentExpr (← mkForallFVars xs type)}\n\
        is nonempty.\n\
        \n\
        This process uses multiple strategies:\n\
        - It looks for a parameter that matches the return type.\n\
        - It tries synthesizing '{.ofConstName ``Inhabited}' and '{.ofConstName ``Nonempty}' \
          instances for the return type, while making every parameter into a local '{.ofConstName ``Inhabited}' instance.\n\
        - It tries unfolding the return type.\n\
        \n\
        If the return type is defined using the 'structure' or 'inductive' command, \
        you can try adding a 'deriving Nonempty' clause to it."

end Lean.Elab
```
