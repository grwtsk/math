# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtAttr.Variantc734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `025b7c1bba1f05acb923cad7239cac72e234f1bd` · SHA-256 `c734b3903e665a5291e7fbbccfc9e5030dcb8f96750d01ca89610ebad8fac724`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Ext
public import Lean.Meta.Tactic.Grind.Extension
public section
namespace Lean.Meta.Grind
/-! Grind extensionality attribute to mark which `[ext]` theorems should be used. -/

def validateExtAttr (declName : Name) : CoreM Unit := do
  if !(← Ext.isExtTheorem declName) then
  if !(isStructure (← getEnv) declName) then
    throwError "invalid `[grind ext]`, `{.ofConstName declName}` is neither tagged with `[ext]` nor is a structure"

def ExtTheorems.eraseDecl (s : ExtTheorems) (declName : Name) : CoreM ExtTheorems := do
  if s.contains declName then
    return s.erase declName
  else
    throwError "`{.ofConstName declName}` is not marked with the `[grind ext]` attribute"

end Lean.Meta.Grind
```
