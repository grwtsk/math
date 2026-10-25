# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncomputableAttr.Variant8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fde13d90de46c7ca83bab47c380483a9eacb66d` · SHA-256 `8d1ba44757e2a2b4d1916ee97b8c0dd54171ff1890db8a1452f0346119d65859`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension

public section

namespace Lean

-- `sync` as it's written to from both main branch and codegen branch
builtin_initialize noncomputableExt : TagDeclarationExtension ← mkTagDeclarationExtension (asyncMode := .sync)

/-- Mark in the environment extension that the given declaration has been declared by the user as `noncomputable`. -/
def addNoncomputable (env : Environment) (declName : Name) : Environment :=
  noncomputableExt.tag env declName

/--
Returns `true` when the given declaration is tagged `noncomputable`.
-/
def isNoncomputable (env : Environment) (declName : Name) (asyncMode := noncomputableExt.toEnvExtension.asyncMode) : Bool :=
  noncomputableExt.isTagged (asyncMode := asyncMode) env declName

end Lean
```
