# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindSorry.Variant14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cbbfb99788f5ec968a38c0a76a0212dfd6aa905` · SHA-256 `14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

public import Lean.Environment
import Lean.Util.Sorry
import ImportGraph.Lean.Environment

namespace ImportGraph

open Lean

/--
Array of all constant names which contain a `sorry`.
-/
public def allConstantsWithSorry (env : Environment) : NameSet :=
  env.constants.fold (init := ∅) fun acc name info =>
    match info with
    | .thmInfo val => if val.value.hasSorry then acc.insert name else acc
    | .defnInfo val => if val.value.hasSorry then acc.insert name else acc
    | .opaqueInfo val => if val.value.hasSorry then acc.insert name else acc
    | .axiomInfo _ => acc
    | .quotInfo _ => acc
    | .inductInfo  _ => acc
    | .ctorInfo _ => acc
    | .recInfo _ => acc

/--
Array of all module names of modules containing at least one `sorry`.
-/
public def allModulesWithSorry (env : Environment) : NameSet :=
  (allConstantsWithSorry env).foldl (init := ∅) fun acc n => match env.getModuleFor? n with
    | some module => acc.insert module
    | none => acc -- TODO: should there be a warning/error if module cannot be found?
```
