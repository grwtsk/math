# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.26.Variant392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `249a36f72362bc5ffd83c5939791010349e9a3f9` · SHA-256 `392c659de980da9f9664d632752fe83d05c9a0d52b1abbe1f9e2e80428f92e40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

attribute [-simp] List.all_cons List.all_nil List.all_eq_true

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case left
α : Type u_1
P : α → Bool
x : α
xs : List α
h : (x :: xs).all P = true
⊢ P x = true

case right
α : Type u_1
P : α → Bool
x : α
xs : List α
h : (x :: xs).all P = true
⊢ xs.all P = true
-/
#guard_msgs in
theorem all_cons (P : α → Bool) (x : α) (xs : List α) (h : (x :: xs).all P)
  : P x ∧ xs.all P := by
  aesop
```
