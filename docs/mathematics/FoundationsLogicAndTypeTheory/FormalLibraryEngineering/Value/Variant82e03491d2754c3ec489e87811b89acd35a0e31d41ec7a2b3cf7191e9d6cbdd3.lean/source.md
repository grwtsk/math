# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variant82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0450dffd9e3f59e67350436644c1b27725aeedab` · SHA-256 `82e03491d2754c3ec489e87811b89acd35a0e31d41ec7a2b3cf7191e9d6cbdd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.LitValues

public section

namespace Lean.Meta

/-- Return true is `e` is a term that should be processed by the `match`-compiler using `casesValues` -/
def isMatchValue (e : Expr) : MetaM Bool := do
  let e ← instantiateMVars e
  if (← getNatValue? e).isSome then return true
  if (← getIntValue? e).isSome then return true
  if (← getFinValue? e).isSome then return true
  if (← getBitVecValue? e).isSome then return true
  if (getStringValue? e).isSome then return true
  if (← getCharValue? e).isSome then return true
  if (← getUInt8Value? e).isSome then return true
  if (← getUInt16Value? e).isSome then return true
  if (← getUInt32Value? e).isSome then return true
  if (← getUInt64Value? e).isSome then return true
  if (← getFloatValue? e).isSome then return true
  if (← getFloat32Value? e).isSome then return true
  return false

end Lean.Meta
```
