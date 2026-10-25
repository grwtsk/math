# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinImports.Varianta7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70b220bb8b15f6d089cd74e9a220aab0cbe9b988` · SHA-256 `a7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Widget.UserWidget
public meta import ImportGraph.Imports.RequiredModules
public meta import ImportGraph.Imports.Redundant

public meta section

open Lean

/--
Return the names of the modules in which constants used in the current file were defined,
with modules already transitively imported removed.

Note that this will *not* account for tactics and syntax used in the file,
so the results may not suffice as imports.
-/
def Lean.Environment.minimalRequiredModules (env : Environment) : Array Name :=
  let required := env.requiredModules.toArray.erase env.header.mainModule
  let redundant := findRedundantImports env required
  required.filter fun n => ¬ redundant.contains n

/--
Try to compute a minimal set of imports for this file,
by analyzing the declarations.

This must be run at the end of the file,
and is not aware of syntax and tactics,
so the results will likely need to be adjusted by hand.
-/
elab "#min_imports" : command => do
  let imports := (← getEnv).minimalRequiredModules.qsort (·.toString < ·.toString)
    |>.toList.map (fun n => "public import " ++ n.toString)
  logInfo <| Format.joinSep imports "\n"

-- deprecated since 2024-07-06
elab "#minimize_imports" : command => do
  logWarning m!"'#minimize_imports' is deprecated: please use '#min_imports'"
  Elab.Command.elabCommand (← `(command| #min_imports))
```
