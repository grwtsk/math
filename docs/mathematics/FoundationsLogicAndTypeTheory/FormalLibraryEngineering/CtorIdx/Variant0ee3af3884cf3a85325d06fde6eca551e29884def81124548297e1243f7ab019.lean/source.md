# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorIdx.Variant0ee3af3884cf3a85325d06fde6eca551e29884def81124548297e1243f7ab019

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65e622e1b73078afb671e11a6c6385594f428a1d` · SHA-256 `0ee3af3884cf3a85325d06fde6eca551e29884def81124548297e1243f7ab019`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/

module

prelude
public import Lean.Meta.Basic
import Lean.AddDecl
import Lean.Meta.CompletionName
import Lean.Linter.Deprecated

open Lean Meta

namespace Lean

register_builtin_option genCtorIdx : Bool := {
  defValue := true
  descr    := "generate the `CtorIdx` functions for inductive datatypes"
}

public def mkToCtorIdxName (indName : Name) : Name :=
  Name.mkStr indName "toCtorIdx"

public def mkCtorIdxName (indName : Name) : Name :=
  Name.mkStr indName "ctorIdx"

public def isCtorIdxCore? (env : Environment) (declName : Name) : Option InductiveVal := do
  let .str indName "ctorIdx" := declName | none
  let indInfo ← isInductiveCore? env indName
  return indInfo

public def isCtorIdx? (declName : Name) : MetaM (Option InductiveVal) := do
  return isCtorIdxCore? (← getEnv) declName

/--
For an inductive type `T` with more than one function builds a function `T.ctorIdx : T → Nat` that
returns the constructor index of the given value.
Does nothing if `T` does not eliminate into `Type` or if `T` is unsafe.
Assumes `T.casesOn` to be defined already.
-/
public def mkCtorIdx (indName : Name) : MetaM Unit :=
  withExporting (isExporting := ! isPrivateName indName) do
  prependError m!"failed to construct `T.ctorIdx` for `{.ofConstName indName}`:" do
    unless genCtorIdx.get (← getOptions) do return
    let declName := mkCtorIdxName indName
    if (← hasConst declName) then return
    let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
    if (← isPropFormerType info.type) then return
    let casesOnName := mkCasesOnName indName
    let casesOnInfo ← getConstInfo casesOnName
    unless casesOnInfo.levelParams.length > info.levelParams.length do return

    let us := info.levelParams.map mkLevelParam
    forallBoundedTelescope info.type (info.numParams + info.numIndices) fun xs _ => do
    withImplicitBinderInfos xs do
      let params : Array Expr := xs[:info.numParams]
      let indices : Array Expr := xs[info.numParams:]
      let indType := mkAppN (mkConst indName us) xs
      let natType  := mkConst ``Nat
      let declType ← mkArrow indType natType
      let declType ← mkForallFVars xs declType
      let declValue ← withLocalDeclD `x indType fun x => do
        let value ← if info.numCtors = 1 then
          pure (mkRawNatLit 0)
        else
          let motive ← mkLambdaFVars (indices.push x) natType
          let mut value := mkConst casesOnName (Level.one::us)
          value := mkAppN value params
          value := mkApp value motive
          value := mkAppN value indices
          value := mkApp value x
          for c in info.ctors do
            let cInfo ← getConstInfoCtor c
            let cType ← instantiateForall cInfo.type params
            let alt ← forallBoundedTelescope cType cInfo.numFields fun ys _ =>
              mkLambdaFVars ys <| mkRawNatLit cInfo.cidx
            value := mkApp value alt
          pure value
        mkLambdaFVars (xs.push x) value
      let hints := ReducibilityHints.regular (getMaxHeight (← getEnv) declValue + 1)
      let decl := .defnDecl (← mkDefinitionValInferringUnsafe
        (name        := declName)
        (levelParams := info.levelParams)
        (type        := declType)
        (value       := declValue)
        (hints       := hints)
      )
      addDecl decl
      modifyEnv fun env => addToCompletionBlackList env declName
      modifyEnv fun env => addProtected env declName
      if info.numCtors = 1 then
        setInlineAttribute declName .macroInline
      if isMarkedMeta (← getEnv) indName then
        modifyEnv (markMeta · declName)
      compileDecl decl
      enableRealizationsForConst declName

      -- Deprecated alias for enumeration types (which used to have `toCtorIdx`)
      if (← isEnumType indName) then
        let aliasName := mkToCtorIdxName indName
        addDecl (.defnDecl (← mkDefinitionValInferringUnsafe
          (name        := aliasName)
          (levelParams := info.levelParams)
          (type        := declType)
          (value       := mkConst declName us)
          (hints       := ReducibilityHints.abbrev)
        ))
        if isMarkedMeta (← getEnv) indName then
          modifyEnv (markMeta · aliasName)
        compileDecls #[aliasName]
        modifyEnv fun env => addToCompletionBlackList env aliasName
        modifyEnv fun env => addProtected env aliasName
        setReducibleAttribute aliasName
        Lean.Linter.setDeprecated aliasName { newName? := some declName, since? := "2025-08-25" }

end Lean
```
