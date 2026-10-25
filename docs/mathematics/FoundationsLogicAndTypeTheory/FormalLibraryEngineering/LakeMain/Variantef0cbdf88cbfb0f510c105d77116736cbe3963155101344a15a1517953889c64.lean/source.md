# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeMain.Variantef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `285e6759f32f066233737d7ad72a711f281bc487` · SHA-256 `ef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Sebastian Ullrich, Mac Malone
-/
module

prelude
public import Init.System.IO
import Lake.DSL -- shake: keep (registers builtins)
import Lake.CLI.Main

public def main (args : List String) : IO UInt32 := do
  Lake.cli args
```
