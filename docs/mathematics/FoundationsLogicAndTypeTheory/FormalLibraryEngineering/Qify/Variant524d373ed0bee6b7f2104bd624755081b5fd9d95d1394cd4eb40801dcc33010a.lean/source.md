# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6f7a4f1b4b8dbc6a161e2d53f7a8321138e1e24` · SHA-256 `524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Mario Carneiro, Robert Y. Lewis
-/
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.NNRat.Defs
import Mathlib.Tactic.Basic
import Mathlib.Tactic.Zify

/-!
# `qify` tactic

The `qify` tactic is used to shift propositions from `ℕ` or `ℤ` to `ℚ`.
This is often useful since `ℚ` has well-behaved division.
```
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  qify
  qify at h
  /-
  h : ¬↑x * ↑y * ↑z < 0
  ⊢ ↑c < ↑a + 3 * ↑b
  -/
  sorry
```
-/

namespace Mathlib.Tactic.Qify

open Lean
open Lean.Meta
open Lean.Parser.Tactic
open Lean.Elab.Tactic

/--
The `qify` tactic is used to shift propositions from `ℕ` or `ℤ` to `ℚ`.
This is often useful since `ℚ` has well-behaved division.
```
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  qify
  qify at h
  /-
  h : ¬↑x * ↑y * ↑z < 0
  ⊢ ↑c < ↑a + 3 * ↑b
  -/
  sorry
```
`qify` can be given extra lemmas to use in simplification. This is especially useful in the
presence of nat subtraction: passing `≤` arguments will allow `push_cast` to do more work.
```
example (a b c : ℤ) (h : a / b = c) (hab : b ∣ a) (hb : b ≠ 0) : a = c * b := by
  qify [hab] at h hb ⊢
  exact (div_eq_iff hb).1 h
```
`qify` makes use of the `@[zify_simps]` and `@[qify_simps]` attributes to move propositions,
and the `push_cast` tactic to simplify the `ℚ`-valued expressions. -/
syntax (name := qify) "qify" (simpArgs)? (location)? : tactic

macro_rules
| `(tactic| qify $[[$simpArgs,*]]? $[at $location]?) =>
  let args := simpArgs.map (·.getElems) |>.getD #[]
  `(tactic|
    simp -decide only [zify_simps, qify_simps, push_cast, $args,*]
      $[at $location]?)

@[qify_simps] lemma intCast_eq (a b : ℤ) : a = b ↔ (a : ℚ) = (b : ℚ) := by simp only [Int.cast_inj]
@[qify_simps] lemma intCast_le (a b : ℤ) : a ≤ b ↔ (a : ℚ) ≤ (b : ℚ) := Int.cast_le.symm
@[qify_simps] lemma intCast_lt (a b : ℤ) : a < b ↔ (a : ℚ) < (b : ℚ) := Int.cast_lt.symm
@[qify_simps] lemma intCast_ne (a b : ℤ) : a ≠ b ↔ (a : ℚ) ≠ (b : ℚ) := by
  simp only [ne_eq, Int.cast_inj]

end Qify

end Mathlib.Tactic
````
