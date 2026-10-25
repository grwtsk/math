# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoNormSimp.Variant22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae44e80bb07a82aa0e0e2db9a73583f8a835306e` · SHA-256 `22a925f9d44adde7dab2cd399c68219b5f1393d516efa1292be988e506106f10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : 1 = 2 → False := by
  aesop (config := { enableSimp := false, terminal := true })

example : 1 = 2 → False := by
  aesop
```
