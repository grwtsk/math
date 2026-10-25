# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q1.Variant6ef9e8cfbcd3571e8f840f885f325882bda61e677d987ba892822ecdc2764f6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41c1299e43ff0bf894279943e917aad0bdabed66` · SHA-256 `6ef9e8cfbcd3571e8f840f885f325882bda61e677d987ba892822ecdc2764f6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard
-/
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# IMO 2019 Q1

Determine all functions `f : ℤ → ℤ` such that, for all integers `a` and `b`,
`f(2a) + 2f(b) = f(f(a+b))`.

The desired theorem is that either:
  - `f = fun _ ↦ 0`
  - `∃ c, f = fun x ↦ 2 * x + c`

Note that there is a much more compact proof of this fact in Isabelle/HOL
  - http://downthetypehole.de/paste/4YbGgqb4
-/


theorem imo2019_q1 (f : ℤ → ℤ) :
    (∀ a b : ℤ, f (2 * a) + 2 * f b = f (f (a + b))) ↔ f = 0 ∨ ∃ c, f = fun x => 2 * x + c := by
  constructor; swap
  -- easy way: f(x)=0 and f(x)=2x+c work.
  · rintro (rfl | ⟨c, rfl⟩) <;> intros <;> norm_num; ring
  -- hard way.
  intro hf
  -- functional equation
  -- Using `h` for `(0, b)` and `(-1, b + 1)`, we get `f (b + 1) = f b + m`
  obtain ⟨m, H⟩ : ∃ m, ∀ b, f (b + 1) = f b + m := by
    refine ⟨(f 0 - f (-2)) / 2, fun b => ?_⟩
    refine sub_eq_iff_eq_add'.1 (Int.eq_ediv_of_mul_eq_right two_ne_zero ?_)
    have h1 : f 0 + 2 * f b = f (f b) := by simpa using hf 0 b
    have h2 : f (-2) + 2 * f (b + 1) = f (f b) := by simpa using hf (-1) (b + 1)
    linarith
  -- Hence, `f` is an affine map, `f b = f 0 + m * b`
  obtain ⟨c, H⟩ : ∃ c, ∀ b, f b = c + m * b := by
    refine ⟨f 0, fun b => ?_⟩
    induction' b with b ihb b ihb
    · simp
    · simp [H, ihb, mul_add, add_assoc]
    · rw [← sub_eq_of_eq_add (H _)]
      simp [ihb]; ring
  -- Now use `hf 0 0` and `hf 0 1` to show that `m ∈ {0, 2}`
  have H3 : 2 * c = m * c := by simpa [H, mul_add] using hf 0 0
  obtain rfl | rfl : 2 = m ∨ m = 0 := by simpa [H, mul_add, H3] using hf 0 1
  · right; use c; ext b; simp [H, add_comm]
  · left; ext b; simpa [H, two_ne_zero] using H3
```
