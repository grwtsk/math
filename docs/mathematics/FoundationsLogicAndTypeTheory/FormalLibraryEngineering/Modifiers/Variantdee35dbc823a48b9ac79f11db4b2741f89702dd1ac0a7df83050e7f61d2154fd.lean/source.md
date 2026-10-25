# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Modifiers.Variantdee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2e0c31e3045d50c593b21282905834291d6ca45` · SHA-256 `dee35dbc823a48b9ac79f11db4b2741f89702dd1ac0a7df83050e7f61d2154fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension

public section

namespace Lean

builtin_initialize protectedExt : TagDeclarationExtension ← mkTagDeclarationExtension

def addProtected (env : Environment) (n : Name) : Environment :=
  protectedExt.tag env n

def isProtected (env : Environment) (n : Name) : Bool :=
  protectedExt.isTagged env n

def mkPrivateName (env : Environment) (n : Name) : Name :=
  -- If name is already private, remove previous suffix first. We need to ensure the resulting name
  -- is private to *this* module.
  mkPrivateNameCore env.mainModule <| privateToUserName n

end Lean
```
