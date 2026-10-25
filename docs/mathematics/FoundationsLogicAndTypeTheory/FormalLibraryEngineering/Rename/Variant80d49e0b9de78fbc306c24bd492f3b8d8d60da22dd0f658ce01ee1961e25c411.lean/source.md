# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `466251a6e9dc60728bb67049fac27c8e77665a32` · SHA-256 `80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util

public section

namespace Lean.Meta

/--
Rename the user-face naming for the free variable `fvarId` at `mvarId`.
-/
def _root_.Lean.MVarId.rename (mvarId : MVarId) (fvarId : FVarId) (userNameNew : Name) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `rename
  let lctxNew := (← getLCtx).setUserName fvarId userNameNew
  let mvarNew ← mkFreshExprMVarAt lctxNew (← getLocalInstances) (← mvarId.getType) MetavarKind.syntheticOpaque (← mvarId.getTag)
  mvarId.assign mvarNew
  return mvarNew.mvarId!

end Lean.Meta
```
