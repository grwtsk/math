# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecExt.Variant3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0fd1ada98992b7d33e7bb655ad60615f7bf9706` · SHA-256 `3e63561c3a0f22745fb8dbf9f462e494824a18642b5aa65080e8c72d56e8d691`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes

public section

namespace Lean.Meta

/--
Environment extension for storing which declarations are recursive.
This information is populated by the `PreDefinition` module, but the simplifier
uses when unfolding declarations.
-/
builtin_initialize recExt : TagDeclarationExtension ←
  mkTagDeclarationExtension `recExt (asyncMode := .async .asyncEnv)

/--
Marks the given declaration as recursive.
-/
def markAsRecursive (declName : Name) : CoreM Unit :=
  modifyEnv (recExt.tag · declName)

/--
Returns `true` if `declName` was defined using well-founded recursion, or structural recursion.
-/
def isRecursiveDefinition (declName : Name) : CoreM Bool :=
  return recExt.isTagged (← getEnv) declName
```
