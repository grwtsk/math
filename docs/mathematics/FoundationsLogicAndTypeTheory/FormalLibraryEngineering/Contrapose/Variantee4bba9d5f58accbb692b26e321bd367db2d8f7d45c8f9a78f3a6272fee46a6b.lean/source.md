# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Contrapose.Variantee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f016ae64237590ab3f0d0756a612f7ecedb2fd24` · SHA-256 `ee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.Contrapose

example (p q : Prop) (h : ¬q → ¬p) : p → q := by
  contrapose
  guard_target = ¬q → ¬p
  exact h

example (p q : Prop) (h : p) (hpq : ¬q → ¬p) : q := by
  contrapose h
  guard_target = ¬p
  exact hpq h

example (p q : Prop) (h : p) (hpq : ¬q → ¬p) : q := by
  contrapose h with h'
  guard_target = ¬p
  exact hpq h'

example (p q : Prop) (h : q → p) : ¬p → ¬q := by
  contrapose!
  guard_target = q → p
  exact h

example (p q : Prop) (h : ¬p) (hpq : q → p) : ¬q := by
  contrapose! h
  guard_target = p
  exact hpq h

example (p q : Prop) (h : ¬p) (hpq : q → p) : ¬q := by
  contrapose! h with h'
  guard_target = p
  exact hpq h'

example (p : Prop) (h : p) : p := by
  fail_if_success { contrapose }
  exact h

example (p q : Type) (h : p → q) : p → q := by
  fail_if_success { contrapose }
  exact h
```
