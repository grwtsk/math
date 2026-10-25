# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d19a609fcdeda72155236e07e700f0f762356e5` · SHA-256 `5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- Tests the builtin split rules.

@[aesop norm unfold]
def id' (n : Nat) : Nat :=
  match n with
  | .zero => .zero
  | .succ n => .succ n


-- First, the rule for splitting targets.
example : id' n = n := by
  aesop

-- Second, the rule for splitting hypotheses. We introduce a custom equality to
-- make sure that in the following example, Aesop doesn't just substitute the
-- hypothesis during norm simp.
inductive MyEq (x : α) : α → Prop
  | rfl : MyEq x x

@[aesop unsafe]
def MyEq.elim : MyEq x y → x = y
  | rfl => by rfl

example (h : MyEq n (id' m)) : n = m := by
  aesop
```
