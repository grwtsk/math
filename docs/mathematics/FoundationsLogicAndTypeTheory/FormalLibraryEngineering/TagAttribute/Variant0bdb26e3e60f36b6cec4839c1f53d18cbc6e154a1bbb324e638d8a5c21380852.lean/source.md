# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TagAttribute.Variant0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d0c828535b0640d92a926c8588c06b4e632e984` · SHA-256 `0bdb26e3e60f36b6cec4839c1f53d18cbc6e154a1bbb324e638d8a5c21380852`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Lean.Attributes

@[expose] public section

/-- Get the list of declarations tagged with the tag attribute `attr`. -/
def Lean.TagAttribute.getDecls (attr : TagAttribute) (env : Environment) : Array Name :=
  core <| attr.ext.toEnvExtension.getState env
where
  /-- Implementation of `TagAttribute.getDecls`. -/
  core (st : PersistentEnvExtensionState Name NameSet) : Array Name := Id.run do
    let mut decls := st.state.toArray
    for ds in st.importedEntries do
      decls := decls ++ ds
    decls
```
