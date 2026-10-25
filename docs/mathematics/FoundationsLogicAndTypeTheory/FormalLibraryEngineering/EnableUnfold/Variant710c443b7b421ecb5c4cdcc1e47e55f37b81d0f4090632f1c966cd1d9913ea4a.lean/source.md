# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnableUnfold.Variant710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `becbcba25dbf1ccad3cb849e6abeb4fab3df7453` · SHA-256 `710c443b7b421ecb5c4cdcc1e47e55f37b81d0f4090632f1c966cd1d9913ea4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop norm unfold]
def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { enableUnfold := false, terminal := true })

example : T := by
  aesop
```
