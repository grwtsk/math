# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OriginalConstKind.Variant68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16361ea893515cb20b9c6159a9b24053210679cc` · SHA-256 `68222f86a4a8587c5fc1eee11b5870678fe55384f35e460b3358696ed1455bcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Environment
import Lean.EnvExtension

namespace Lean

-- No public mutating interface as this is an implementation detail of `addDecl` and separated only
-- to avoid an import cycle.
private builtin_initialize privateConstKindsExt : MapDeclarationExtension ConstantKind ←
  -- Use `sync` so we can add entries from anywhere without restrictions
  mkMapDeclarationExtension (asyncMode := .sync)

/--
Returns the kind of the declaration as originally declared instead of as exported. This information
is stored by `Lean.addDecl` and may be inaccurate if that function was circumvented. Returns `none`
if the declaration was not found.
-/
public def getOriginalConstKind? (env : Environment) (declName : Name) : Option ConstantKind := do
  -- Use `local` as for asynchronous decls from the current module, `findAsync?` below will yield
  -- the same result but potentially earlier (after `addConstAsync` instead of `addDecl`)
  privateConstKindsExt.find? (asyncMode := .local) env declName <|>
    (env.setExporting false |>.findAsync? declName).map (·.kind)

/--
Checks whether the declaration was originally declared as a definition; see also
`Lean.getOriginalConstKind?`. Returns `false` if the declaration was not found.
-/
public def wasOriginallyDefn (env : Environment) (declName : Name) : Bool :=
  getOriginalConstKind? env declName |>.map (· matches .defn) |>.getD false

/--
Checks whether the declaration was originally declared as a theorem; see also
`Lean.getOriginalConstKind?`. Returns `false` if the declaration was not found.
-/
public def wasOriginallyTheorem (env : Environment) (declName : Name) : Bool :=
  getOriginalConstKind? env declName |>.map (· matches .thm) |>.getD false
```
