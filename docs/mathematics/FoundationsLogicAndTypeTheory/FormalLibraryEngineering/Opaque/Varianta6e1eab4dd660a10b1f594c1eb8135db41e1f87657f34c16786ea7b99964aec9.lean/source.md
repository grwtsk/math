# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opaque.Varianta6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e73932e6e029d6c58d2ccea893a285dcf7b438ea` · SHA-256 `a6e1eab4dd660a10b1f594c1eb8135db41e1f87657f34c16786ea7b99964aec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.ScopedEnvExtension
public import Lean.ReducibilityAttrs

/-!
# `@[cbv_opaque]` Attribute and Extension

Scoped set of declaration names that `cbv` should not unfold.
Supports `erase` to remove a declaration from the set within a scope.
-/

public section

namespace Lean.Meta.Tactic.Cbv

abbrev CbvOpaqueExtension := SimpleScopedEnvExtension Name (Std.HashSet Name)

builtin_initialize cbvOpaqueExt : CbvOpaqueExtension ←
  registerSimpleScopedEnvExtension {
    name     := `cbvOpaqueExt
    initial  := {}
    addEntry := fun s n => s.insert n
  }

builtin_initialize
  registerBuiltinAttribute {
    ref   := `cbvOpaqueAttr
    name  := `cbv_opaque
    descr := "Mark declarations that should not be unfolded by the `cbv` tactic"
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _ kind => do
      if (← isReducible declName) then
        throwError "`@[cbv_opaque]` cannot be applied to a `@[reducible]` declaration: \
          `{.ofConstName declName}` is reducible, so it is unfolded before `cbv` runs"
      cbvOpaqueExt.add declName kind
    erase := fun declName => do
      let s := cbvOpaqueExt.getState (← getEnv)
      modifyEnv fun env => cbvOpaqueExt.modifyState env fun _ => s.erase declName
  }

def cbvOpaque : CoreM (Std.HashSet Name) := do
  return cbvOpaqueExt.getState (← getEnv)

def isCbvOpaque (name : Name) : CoreM Bool := do
  return cbvOpaqueExt.getState (← getEnv) |>.contains name

end Lean.Meta.Tactic.Cbv
```
