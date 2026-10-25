# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CSimpAttr.Variant13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d60dfaaecec3b0195580a035a22b8e2fa3ebb61` · SHA-256 `13da54e9d33ca9abf7ec91ac3e7fcf9bc424d3e6944f0c879a7bba9521fcedbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.ScopedEnvExtension
public import Lean.Util.Recognizers
import Lean.ExtraModUses

public section

namespace Lean.Compiler
namespace CSimp

structure Entry where
  fromDeclName : Name
  toDeclName   : Name
  thmName      : Name
  deriving Inhabited

structure State where
  /-- Map from `e.fromDeclName` to `e` -/
  map : SMap Name Entry := {}
  thmNames : SSet Name := {}
  deriving Inhabited

def State.switch : State → State
  | { map, thmNames } => { map := map.switch, thmNames := thmNames.switch }

builtin_initialize ext : SimpleScopedEnvExtension Entry State ←
  registerSimpleScopedEnvExtension {
    initial        := {}
    addEntry       := fun { map, thmNames } e => { map := map.insert e.fromDeclName e, thmNames := thmNames.insert e.thmName }
    finalizeImport := fun s => s.switch
  }

private def isConstantReplacement? (declName : Name) : CoreM (Option Entry) := do
  let info ← getConstVal declName
  match info.type.eq? with
  | some (_, Expr.const fromDeclName us, Expr.const toDeclName vs) =>
    let set := Std.HashSet.ofList us
    if set.size == us.length && set.all Level.isParam && us == vs then
      return some { fromDeclName, toDeclName, thmName := declName }
    else
      return none
  | _ => return none

def add (declName : Name) (kind : AttributeKind) : CoreM Unit := do
  if let some entry ← isConstantReplacement? declName then
    ext.add entry kind
  else
    throwError "invalid 'csimp' theorem, only constant replacement theorems (e.g., `@f = @g`) are currently supported."

/--
Tags compiler simplification theorems, which allow one value to be replaced by another equal value
in compiled code. This is typically used to replace a slow function whose definition is convenient
in proofs with a faster equivalent or to make noncomputable functions computable. In particular,
many operations on lists and arrays are replaced by tail-recursive equivalents.

A compiler simplification theorem cannot take any parameters and must prove a statement `@f = @g`
where `f` and `g` may be arbitrary constants. In functions defined after the theorem tagged
`@[csimp]`, any occurrence of `f` is replaced with `g` in compiled code, but not in the type
theory. In this sense, `@[csimp]` is a safer alternative to `@[implemented_by]`.

However it is still possible to register unsound `@[csimp]` lemmas by using `unsafe` or unsound
axioms (like `sorryAx`).
-/
@[builtin_init, builtin_doc]
private def initFn :=
  registerBuiltinAttribute {
    name  := `csimp
    descr := "simplification theorem for the compiler"
    add   := fun declName stx attrKind => do
      Attribute.Builtin.ensureNoArgs stx
      ensureAttrDeclIsPublic `csimp declName attrKind
      discard <| add declName attrKind
  }

/-- If `e` (as a whole) matches a `[csimp]` theorem, returns the replacement expression. -/
def replaceConstant? (env : Environment) (e : Expr) : CoreM (Option Expr) := do
  let s := ext.getState env
  let .const declName _ := e | return none
  if let some ent := s.map.find? declName then
    withoutExporting <| recordExtraModUseFromDecl (isMeta := false) ent.thmName
    return some (mkConst ent.toDeclName e.constLevels!)
  else
    return none

/--
If `e` (as a whole) matches a `[csimp]` theorem, returns the replacement expression, or else `e`.
-/
def replaceConstant (env : Environment) (e : Expr) : CoreM Expr :=
  return (← replaceConstant? env e).getD e

end CSimp

def hasCSimpAttribute (env : Environment) (declName : Name) : Bool :=
  CSimp.ext.getState env |>.thmNames.contains declName

end Lean.Compiler
```
