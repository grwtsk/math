# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopeM.Variant555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bc78059af7e9f16d980688c88c3eaeecae3ab1a` · SHA-256 `555ea12e6be42a5e9be8eb3a22dc1d0dbc2ae748fcc7a971da7f63e23b64642a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM

public section

namespace Lean.Compiler.LCNF

/--
A general abstraction for the idea of a scope in the compiler.
-/
abbrev ScopeM := StateRefT FVarIdSet CompilerM

namespace ScopeM

def getScope : ScopeM FVarIdSet := get
def setScope (newScope : FVarIdSet) : ScopeM Unit := set newScope
def clearScope : ScopeM Unit := setScope {}

/--
Execute `x` but recover the previous scope after doing so.
-/
def withBackTrackingScope [MonadLiftT ScopeM m] [Monad m] [MonadFinally m] (x : m α) : m α := do
  let scope ← getScope
  try x finally setScope scope

/--
Clear the current scope for the monadic action `x`, afterwards continuing
with the old one.
-/
def withNewScope [MonadLiftT ScopeM m] [Monad m] [MonadFinally m] (x : m α) : m α := do
  withBackTrackingScope do
    clearScope
    x

/--
Check whether `fvarId` is in the current scope, that is, was declared within
the current `fun` declaration that is being processed.
-/
def isInScope (fvarId : FVarId) : ScopeM Bool := do
  let scope ← getScope
  return scope.contains fvarId

/--
Add a new `FVarId` to the current scope.
-/
def addToScope (fvarId : FVarId) : ScopeM Unit :=
  modify fun scope => scope.insert fvarId

end ScopeM

end Lean.Compiler.LCNF
```
