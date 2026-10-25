# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Variant2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a3f57cf173c12e6c099365531f65cf0e0340ba0` · SHA-256 `2ceaf9505e5a5359589f0a51720dc931761986f495d235e2673f648768dba4aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Mario Carneiro, Robert Y. Lewis, Patrick Massot
-/
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Qify

/-!
# `rify` tactic

The `rify` tactic is used to shift propositions from `ℕ`, `ℤ` or `ℚ` to `ℝ`.

Although less useful than its cousins `zify` and `qify`, it can be useful when your
goal or context already involves real numbers.

In the example below, assumption `hn` is about natural numbers, `hk` is about integers
and involves casting a natural number to `ℤ`, and the conclusion is about real numbers.
The proof uses `rify` to lift both assumptions to `ℝ` before calling `linarith`.
```
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Rify

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith
```

TODO: Investigate whether we should generalize this to other fields.
-/

namespace Mathlib.Tactic.Rify

open Lean
open Lean.Meta
open Lean.Parser.Tactic
open Lean.Elab.Tactic

/--
The `rify` tactic is used to shift propositions from `ℕ`, `ℤ` or `ℚ` to `ℝ`.
Although less useful than its cousins `zify` and `qify`, it can be useful when your
goal or context already involves real numbers.

In the example below, assumption `hn` is about natural numbers, `hk` is about integers
and involves casting a natural number to `ℤ`, and the conclusion is about real numbers.
The proof uses `rify` to lift both assumptions to `ℝ` before calling `linarith`.
```
example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk /- Now have hn : 8 ≤ (n : ℝ)   hk : 2 * (k : ℝ) ≤ (n : ℝ) + 2 -/
  linarith
```

`rify` makes use of the `@[zify_simps]`, `@[qify_simps]` and `@[rify_simps]` attributes to move
propositions, and the `push_cast` tactic to simplify the `ℝ`-valued expressions.

`rify` can be given extra lemmas to use in simplification. This is especially useful in the
presence of nat subtraction: passing `≤` arguments will allow `push_cast` to do more work.
```
example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : a < b + c := by
  rify [hab] at h ⊢
  linarith
```
Note that `zify` or `qify` would work just as well in the above example (and `zify` is the natural
choice since it is enough to get rid of the pathological `ℕ` subtraction). -/
syntax (name := rify) "rify" (simpArgs)? (location)? : tactic

macro_rules
| `(tactic| rify $[[$simpArgs,*]]? $[at $location]?) =>
  let args := simpArgs.map (·.getElems) |>.getD #[]
  `(tactic|
    simp -decide only [zify_simps, qify_simps, rify_simps, push_cast, $args,*]
      $[at $location]?)

@[rify_simps] lemma ratCast_eq (a b : ℚ) : a = b ↔ (a : ℝ) = (b : ℝ) := by simp
@[rify_simps] lemma ratCast_le (a b : ℚ) : a ≤ b ↔ (a : ℝ) ≤ (b : ℝ) := by simp
@[rify_simps] lemma ratCast_lt (a b : ℚ) : a < b ↔ (a : ℝ) < (b : ℝ) := by simp
@[rify_simps] lemma ratCast_ne (a b : ℚ) : a ≠ b ↔ (a : ℝ) ≠ (b : ℝ) := by simp

@[rify_simps] lemma ofNat_rat_real (a : ℕ) [a.AtLeastTwo] :
    ((ofNat(a) : ℚ) : ℝ) = (ofNat(a) : ℝ) := rfl

end Mathlib.Tactic.Rify
````
