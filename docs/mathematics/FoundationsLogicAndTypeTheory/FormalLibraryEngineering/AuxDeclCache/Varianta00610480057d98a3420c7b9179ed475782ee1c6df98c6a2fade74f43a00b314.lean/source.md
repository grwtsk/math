# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDeclCache.Varianta00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2d21c70ea336744fac352421af984c7148a73a8` · SHA-256 `a00610480057d98a3420c7b9179ed475782ee1c6df98c6a2fade74f43a00b314`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.DeclHash
public import Lean.Compiler.LCNF.Internalize

public section

namespace Lean.Compiler.LCNF

structure  AuxDeclCacheKey where
  pu : Purity
  decl : Decl pu
  deriving BEq, Hashable

builtin_initialize auxDeclCacheExt : CacheExtension AuxDeclCacheKey Name ← CacheExtension.register

inductive CacheAuxDeclResult where
  | new
  | alreadyCached (declName : Name)

def cacheAuxDecl (decl : Decl pu) : CompilerM CacheAuxDeclResult := do
  let key := { decl with name := .anonymous }
  let key ← normalizeFVarIds key
  let key := ⟨pu, key⟩
  match (← auxDeclCacheExt.find? key) with
  | some declName =>
    return .alreadyCached declName
  | none =>
    auxDeclCacheExt.insert key decl.name
    return .new

end Lean.Compiler.LCNF
```
