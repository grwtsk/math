# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Annotated.Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c3ff668c46525940a6b230d68647e4c36c4b805` · SHA-256 `206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Lean.Elab.Command
import Init.Grind.Annotated
import Std.Time.Format

namespace Lean.Elab.Tactic.Grind
open Command Std.Time

/--
Extension to track modules that have been marked as "grind-annotated".
These modules contain theorems that have been manually reviewed/annotated for grind,
so they should be excluded from premise selection when the caller is "grind".
-/
builtin_initialize grindAnnotatedExt : SimplePersistentEnvExtension Name NameSet ←
  registerSimplePersistentEnvExtension {
    addEntryFn := fun s modName => s.insert modName
    addImportedFn := fun entries => entries.foldl (fun s arr => arr.foldl NameSet.insert s) ∅
    asyncMode := .sync
  }

/-- Check if a module has been marked as grind-annotated. -/
public def isGrindAnnotatedModule (env : Environment) (modIdx : ModuleIdx) : Bool :=
  let state := grindAnnotatedExt.getState env
  let moduleName := env.header.moduleNames[modIdx.toNat]!
  state.contains moduleName

@[builtin_command_elab Lean.Parser.Command.grindAnnotated]
def elabGrindAnnotated : CommandElab := fun stx => do
  let `(grind_annotated $dateStr) := stx | throwUnsupportedSyntax

  -- Extract the date string value
  let dateValue := dateStr.getString

  -- Validate that the date is in YYYY-MM-DD format using Std.Time
  match PlainDate.parse dateValue with
  | .error err =>
    throwError "Invalid date format: {err}\nExpected format: YYYY-MM-DD (e.g., \"2025-01-15\")"
  | .ok _ =>
    -- Date is valid, mark the current module as grind-annotated
    let modName ← getMainModule
    modifyEnv (grindAnnotatedExt.addEntry · modName)

end Lean.Elab.Tactic.Grind
```
