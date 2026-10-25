# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `131a0708db68cc331a8f9d1743f719b37aa68cbd` · SHA-256 `693d845330dd7122565aeb19314a3e3de4b49f9a8a7ac6e1fadbc9ab374b9f88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Lean.Environment

namespace Comparator

def runForUsedConsts [Monad m] (info : Lean.ConstantInfo) (f : Lean.Name → m Unit) : m Unit := do
  info.type.getUsedConstants.forM f
  f info.name
  if let some val := info.value? (allowOpaque := true) then
    val.getUsedConstants.forM f

  match info with
  | .axiomInfo .. | .quotInfo .. | .defnInfo .. | .thmInfo .. | .opaqueInfo .. => return ()
  | .inductInfo info =>
    info.ctors.forM f
    info.all.forM f
  | .ctorInfo info =>
    f info.induct
  | .recInfo info =>
    info.rules.forM fun rule => do
      f rule.ctor
      rule.rhs.getUsedConstants.forM f

end Comparator
```
