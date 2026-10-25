# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Varianta28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b727c0a83049c8f629b0ed1b3839fb3208861ba` · SHA-256 `a28ef4b79dd9594955b09e6f8a4d25101783138db1932e82bc26f7733af48672`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Meta.Tactic.Cbv.Main
public import Lean.Meta.Tactic.Cbv.Util
public import Lean.Meta.Tactic.Cbv.CbvEvalExt

public section

namespace Lean

builtin_initialize registerTraceClass `Meta.Tactic.cbv
builtin_initialize registerTraceClass `Meta.Tactic.cbv.rewrite (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.unfold (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.controlFlow (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.cbv.simprocs (inherited := true)
builtin_initialize registerTraceClass `Debug.Meta.Tactic.cbv
builtin_initialize registerTraceClass `Debug.Meta.Tactic.cbv.reduce (inherited := true)

end Lean
```
