# Complete source: GRWTSK.Analysis.SpecialFunctions.BasicScratch.Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a2abaae9e6f9cff2ed0858fce97fcd4b5ebaf56` · SHA-256 `e7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Fin.Rev

namespace Surface.Core.Bezier.Scratch

open scoped BigOperators unitInterval

abbrev UnitInterval := Set.Icc (0 : ℝ) 1

def bernstein (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) : ℝ :=
  (Nat.choose degree i.1 : ℝ) * t ^ i.1 * (1 - t) ^ (degree - i.1)

@[simp] theorem bernstein_coe (degree : ℕ) (i : Fin (degree + 1)) (t : UnitInterval) :
    bernstein degree i t.1 = _root_.bernstein degree i t := by
  rw [_root_.bernstein_apply]
  rfl

theorem bernstein_nonneg (degree : ℕ) (i : Fin (degree + 1)) (t : UnitInterval) :
    0 ≤ bernstein degree i t.1 := by
  rw [bernstein_coe]
  exact _root_.bernstein_nonneg

@[simp] theorem sum_bernstein (degree : ℕ) (t : UnitInterval) :
    ∑ i : Fin (degree + 1), bernstein degree i t.1 = 1 := by
  simpa only [bernstein_coe] using _root_.bernstein.probability degree t

@[simp] theorem bernstein_zero (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 0 = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ 0 := fun h => hi (Fin.ext h)
    simp [bernstein, hi, hval]

@[simp] theorem bernstein_one (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 1 = if i = Fin.last degree then 1 else 0 := by
  by_cases hi : i = Fin.last degree
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ degree := fun h => hi (Fin.ext h)
    have hlt : i.1 < degree := lt_of_le_of_ne i.is_le hval
    have hsub : degree - i.1 ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hlt)
    simp [bernstein, hi, hsub]

theorem bernstein_rev (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) :
    bernstein degree i.rev t = bernstein degree i (1 - t) := by
  have hsum := i.add_rev_cast
  have hrev : i.rev.1 = degree - i.1 := by omega
  rw [bernstein, bernstein]
  rw [hrev]
  rw [Nat.choose_symm i.is_le]
  rw [Nat.sub_sub_self i.is_le]
  ring

end Surface.Core.Bezier.Scratch
```
