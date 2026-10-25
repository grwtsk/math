# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variant34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5566c0f9691790d5bbbe59c4334dc3bc4a61101b` · SHA-256 `34e233e809775ee1ec0a8c0c5a342383e0b92839d676e0a2fd12b5d209ee104a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Tomáš Skřivan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomáš Skřivan
-/
import Mathlib.Tactic.FunProp.Decl
import Mathlib.Tactic.FunProp.Theorems

/-!
## `funProp` attribute
-/

namespace Mathlib
open Lean Meta

namespace Meta.FunProp

private def funPropHelpString : String :=
"`fun_prop` tactic to prove function properties like `Continuous`, `Differentiable`, `IsLinearMap`"

/-- Initialization of `funProp` attribute -/
initialize funPropAttr : Unit ←
  registerBuiltinAttribute {
    name  := `fun_prop
    descr := funPropHelpString
    applicationTime := AttributeApplicationTime.afterCompilation
    add   := fun declName _stx attrKind =>
       discard <| MetaM.run do
       let info ← getConstInfo declName
       forallTelescope info.type fun _ b => do
         if b.isProp then
           addFunPropDecl declName
         else
           addTheorem declName attrKind
    erase := fun _declName =>
      throwError "can't remove `funProp` attribute (not implemented yet)"
  }

end Meta.FunProp

end Mathlib
```
