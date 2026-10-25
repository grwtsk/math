# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EraseUnfold.Variantbf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fc190f33baf6e1136d6a9764576d58dd2142c6f` · SHA-256 `bf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux, Jannis Limperg
-/

-- Thanks to Jireh Loreaux for reporting this MWE.

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[irreducible]
def foo : Nat := 37

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : foo = 37 := by
  aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.rfl)

example : foo = 37 := by
  unfold foo
  rfl

attribute [aesop norm unfold] foo

example : foo = 37 := by aesop (erase Aesop.BuiltinRules.rfl)

attribute [-aesop] foo

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : foo = 37 := by
  aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.rfl)

example : foo = 37 := by
  unfold foo
  rfl
```
