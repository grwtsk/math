# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScriptWithOptions.Variant124874fd4fe7607a753edcafb15287a8a3a778488ddcf6599a686bd6e2b5a2ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e18c0d3bf80efa7ea0c4dc854894afbd074b641` · SHA-256 `124874fd4fe7607a753edcafb15287a8a3a778488ddcf6599a686bd6e2b5a2ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/--
info: Try this:

  [apply]   simp_all (config := { }) only
-/
#guard_msgs in
example : True := by
  aesop? (config := {}) (simp_config := {})
```
