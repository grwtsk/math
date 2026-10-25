# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecOn.Variant05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceace9a04b5f940774f3d189df728a6600875ed4` · SHA-256 `05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/
module

prelude
public import Lean.AddDecl
public import Lean.Meta.CompletionName

public section

open Lean Meta

namespace Lean

def mkRecOn (n : Name) : MetaM Unit := do
  let .recInfo recInfo ← getConstInfo (mkRecName n)
    | throwError "{mkRecName n} not a recinfo"
  let decl ← forallTelescope recInfo.type fun xs t => do
    let e := .const recInfo.name (recInfo.levelParams.map (.param ·))
    let e := mkAppN e xs
    -- We reorder the parameters
    -- before: As Cs minor_premises indices major-premise
    -- fow:    As Cs indices major-premise minor-premises
    let AC_size := xs.size - recInfo.numMinors - recInfo.numIndices - 1
    let vs :=
      xs[*...AC_size] ++
      xs[(AC_size + recInfo.numMinors)...(AC_size + recInfo.numMinors + 1 + recInfo.numIndices)] ++
      xs[(AC_size)...(AC_size + recInfo.numMinors)]
    let type ← mkForallFVars vs t
    let value ← mkLambdaFVars vs e
    mkDefinitionValInferringUnsafe (mkRecOnName n) recInfo.levelParams type value .abbrev

  addDecl (.defnDecl decl)
  setReducibleAttribute decl.name
  modifyEnv fun env => markAuxRecursor env decl.name
  modifyEnv fun env => addProtected env decl.name

end Lean
```
