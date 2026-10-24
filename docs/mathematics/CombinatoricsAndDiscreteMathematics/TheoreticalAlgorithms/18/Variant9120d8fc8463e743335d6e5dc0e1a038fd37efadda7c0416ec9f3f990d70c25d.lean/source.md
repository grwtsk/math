# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.18.Variant9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72023c6f6e5ee6d478e53debde4e4c84d0d13ca3` · SHA-256 `9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Asta H. From. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

attribute [aesop safe cases (cases_patterns := [List.Mem _ []])] List.Mem
attribute [aesop unsafe 50% cases (cases_patterns := [List.Mem _ (_ :: _)])] List.Mem

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
theorem Mem.split [DecidableEq α] (xs : List α) (v : α) (h : v ∈ xs)
  : ∃ l r, xs = l ++ v :: r := by
  induction xs
  case nil =>
    aesop
  case cons x xs ih =>
    have dec : Decidable (x = v) := inferInstance
    cases dec
    case isFalse no =>
      aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.ext)
    case isTrue yes =>
      apply Exists.intro []
      apply Exists.intro xs
      rw [yes]
      rfl
```
