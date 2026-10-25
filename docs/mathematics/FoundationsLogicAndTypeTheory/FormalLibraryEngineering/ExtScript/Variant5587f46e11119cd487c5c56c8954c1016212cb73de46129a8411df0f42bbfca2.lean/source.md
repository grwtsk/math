# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtScript.Variant5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c22464d1b817fd2823dad049c641b7e745a8ae0` · SHA-256 `5587f46e11119cd487c5c56c8954c1016212cb73de46129a8411df0f42bbfca2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

@[ext]
structure MyProd (α β : Type _) where
  fst : α
  snd : β

variable {α β γ δ ι: Type}

/--
info: Try this:

  [apply]     ext : 1
    · sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd α β} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · sorry
    · ext : 1
      · sorry
      · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd α (MyProd β γ)} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · ext x : 1
      sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : MyProd (α → β) γ} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     ext : 1
    · ext x : 1
      sorry
    · ext x x_1 : 2
      sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {p q : (α → β) × (γ → δ → ι)} : p = q := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (erase Aesop.BuiltinRules.destructProducts)
    (config := { warnOnNonterminal := false })
  all_goals sorry

-- This test case checks script generation for ext calls which generate subgoals
-- with different numbers of new hypotheses.

axiom T : Type
axiom U : Type
axiom u : U
axiom v : U

@[ext (iff := false)]
axiom T_ext : ∀ x y : T, u = v → (∀ u v : U, u = v) → x = y

/--
info: Try this:

  [apply]     ext u v : 1
    · sorry
    · sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (x y : T) : x = y := by
  aesop? (add safe Aesop.BuiltinRules.ext)
    (config := { warnOnNonterminal := false })
  all_goals sorry
```
