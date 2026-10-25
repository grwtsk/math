# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoProgress.Variant6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c82258736ab6f1049a4db9f949b7aab8ebea150` · SHA-256 `6a9c93660a0824e6f96ba92fa05dd663bb2d278f0135c56caf5245c79a3686b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T := by
  aesop

@[aesop norm simp]
def F := False

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : F := by
  aesop

def F' := False

@[aesop safe apply]
theorem F'_def : False → F' := id

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : F' := by
  aesop

attribute [-aesop] F'_def
attribute [aesop 100%] F'_def

-- When an unsafe rule is applied, we don't count this as progress because the
-- remaining goal that the user gets to see is exactly the same as the initial
-- goal.

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : F' := by
  aesop
```
