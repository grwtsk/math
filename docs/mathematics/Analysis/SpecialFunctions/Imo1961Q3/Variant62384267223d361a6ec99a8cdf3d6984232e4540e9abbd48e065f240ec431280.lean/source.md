# Complete source: GRWTSK.Analysis.SpecialFunctions.Imo1961Q3.Variant62384267223d361a6ec99a8cdf3d6984232e4540e9abbd48e065f240ec431280

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0651cf539ec5f85e2efd5671c4504c11048782c5` · SHA-256 `62384267223d361a6ec99a8cdf3d6984232e4540e9abbd48e065f240ec431280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex

/-!
# IMO 1961 Q3

Solve the equation

$\cos^n x - \sin^n x = 1$,

where $n$ is a given positive integer.

The solution is based on the one at the
[Art of Problem Solving](https://artofproblemsolving.com/wiki/index.php/1961_IMO_Problems/Problem_3)
website.
-/

open Real

theorem Imo1961Q3 {n : ℕ} {x : ℝ} (h₀ : n ≠ 0) :
    (cos x) ^ n - (sin x) ^ n = 1 ↔
      (∃ k : ℤ, k * π = x) ∧ Even n ∨ (∃ k : ℤ, k * (2 * π) = x) ∧ Odd n ∨
        (∃ k : ℤ, -(π / 2) + k * (2 * π) = x) ∧ Odd n := by
  constructor
  · intro h
    rcases eq_or_ne (sin x) 0 with hsinx | hsinx
    · rw [hsinx, zero_pow h₀, sub_zero, pow_eq_one_iff_of_ne_zero h₀, cos_eq_one_iff,
        cos_eq_neg_one_iff] at h
      rcases h with ⟨k, rfl⟩ | ⟨⟨k, rfl⟩, hn⟩
      · cases n.even_or_odd with
        | inl hn => refine .inl ⟨⟨k * 2, ?_⟩, hn⟩; simp [mul_assoc]
        | inr hn => exact .inr <| .inl ⟨⟨_, rfl⟩, hn⟩
      · exact .inl ⟨⟨2 * k + 1, by push_cast; ring⟩, hn⟩
    · rcases eq_or_ne (cos x) 0 with hcosx | hcosx
      · right; right
        rw [hcosx, zero_pow h₀, zero_sub, ← neg_inj, neg_neg, pow_eq_neg_one_iff,
          sin_eq_neg_one_iff] at h
        simpa only [eq_comm] using h
      · have hcos1 : |cos x| < 1 := by
          rw [abs_cos_eq_sqrt_one_sub_sin_sq, sqrt_lt' one_pos]
          simp [sq_pos_of_ne_zero hsinx]
        have hsin1 : |sin x| < 1 := by
          rw [abs_sin_eq_sqrt_one_sub_cos_sq, sqrt_lt' one_pos]
          simp [sq_pos_of_ne_zero hcosx]
        match n with
        | 1 =>
          rw [pow_one, pow_one, sub_eq_iff_eq_add] at h
          have : 2 * sin x * cos x = 0 := by
            simpa [h, add_sq, add_assoc, ← two_mul, mul_add, mul_assoc, ← sq]
              using cos_sq_add_sin_sq x
          simp [hsinx, hcosx] at this
        | 2 =>
          rw [← cos_sq_add_sin_sq x, sub_eq_add_neg, add_right_inj, neg_eq_self ℝ] at h
          exact absurd (pow_eq_zero h) hsinx
        | (n + 1 + 2) =>
          set m := n + 1
          refine absurd ?_ h.not_lt
          calc
            (cos x) ^ (m + 2) - (sin x) ^ (m + 2) ≤ |cos x| ^ (m + 2) + |sin x| ^ (m + 2) := by
              simp only [← abs_pow, sub_eq_add_neg]
              gcongr
              exacts [le_abs_self _, neg_le_abs _]
            _ = |cos x| ^ m * cos x ^ 2 + |sin x| ^ m * sin x ^ 2 := by simp [pow_add]
            _ < 1 ^ m * cos x ^ 2 + 1 ^ m * sin x ^ 2 := by gcongr
            _ = 1 := by simp
  · rintro (⟨⟨k, rfl⟩, hn⟩ | ⟨⟨k, rfl⟩, -⟩ | ⟨⟨k, rfl⟩, hn⟩)
    · rw [sin_int_mul_pi, zero_pow h₀, sub_zero, ← hn.pow_abs, abs_cos_int_mul_pi, one_pow]
    · have : sin (k * (2 * π)) = 0 := by simpa [mul_assoc] using sin_int_mul_pi (k * 2)
      simp [h₀, this]
    · simp [hn.neg_pow, h₀]
```
