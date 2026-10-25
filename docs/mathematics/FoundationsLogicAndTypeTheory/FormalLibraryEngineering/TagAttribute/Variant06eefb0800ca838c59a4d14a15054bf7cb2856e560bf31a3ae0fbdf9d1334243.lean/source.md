# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TagAttribute.Variant06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ee1184463797eb77ab6049e120b93e2de42d0d7` · SHA-256 `06eefb0800ca838c59a4d14a15054bf7cb2856e560bf31a3ae0fbdf9d1334243`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Attributes

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
