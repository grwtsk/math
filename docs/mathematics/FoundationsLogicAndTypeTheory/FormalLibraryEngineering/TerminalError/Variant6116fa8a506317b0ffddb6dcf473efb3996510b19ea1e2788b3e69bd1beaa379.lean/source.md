# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TerminalError.Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a9a96c0ba98727b77ac6986ed6164437fda592f` · SHA-256 `6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
```
