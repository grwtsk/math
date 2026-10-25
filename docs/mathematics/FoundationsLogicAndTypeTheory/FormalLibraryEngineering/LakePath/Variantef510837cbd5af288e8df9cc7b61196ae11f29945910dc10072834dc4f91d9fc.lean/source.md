# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakePath.Variantef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9adf149c25c15df499e7baf4e5574cfd23ffe9` · SHA-256 `ef510837cbd5af288e8df9cc7b61196ae11f29945910dc10072834dc4f91d9fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Sebastian Ullrich
-/
module

prelude
public import Init.System.IO

public section

def Lean.determineLakePath : IO System.FilePath := do
  if let some lakePath ← IO.getEnv "LAKE" then
    return System.FilePath.mk lakePath

  let sysroot? ← IO.getEnv "LEAN_SYSROOT"
  match sysroot? with
  | some sysroot => pure <| System.FilePath.mk sysroot / "bin" / "lake"
  | none         => pure <| (← IO.appDir) / "lake"
```
