# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorIdx.Variantee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18b57957530c3780e2e6f6e76b27ffba12f1016a` · SHA-256 `ee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module
prelude
public import Lean.Meta.Tactic.Simp.Simproc
import Init.Simproc
import Lean.Meta.Constructions.CtorIdx
import Lean.Meta.CtorRecognizer
open Lean Meta Simp
public section

/--
This simproc reduces `T.ctorIdx (T.con …)` to the constructor index.
It does not take part in simp's discrimination tree index, so can be costly on large goals.
-/
builtin_dsimproc_decl reduceCtorIdx (_) := fun e => e.withApp fun f xs => do
  let some fnName := f.constName? | return .continue
  let some indInfo ← isCtorIdx? fnName | return .continue
  unless xs.size == indInfo.numParams + indInfo.numIndices + 1 do return .continue
  let some conInfo ← isConstructorApp? xs.back! | return .continue
  let e' := mkNatLit conInfo.cidx
  return .done e'

end
```
