# Complete source: GRWTSK.Topology.GeneralTopology.Prototype.Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `294ed8da1f3cc479b35abd0cc11a297176c5951f` · SHA-256 `ddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# BZ-1 scratch prototype: Bernstein basis and rational segments

This file imports no `Surface` modules and introduces no canonical declarations.
-/

open Set BigOperators

namespace BZ1Scratch

noncomputable section

/-- The `i`th Bernstein basis polynomial of degree `n`. -/
def bernstein (n : ℕ) (i : Fin (n + 1)) (t : ℝ) : ℝ :=
  t ^ (i : ℕ) * (1 - t) ^ (n - (i : ℕ)) * (n.choose (i : ℕ) : ℝ)

theorem bernstein_nonneg {n : ℕ} {i : Fin (n + 1)} {t : ℝ}
    (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    0 ≤ bernstein n i t := by
  exact mul_nonneg
    (mul_nonneg (pow_nonneg ht.1 _) (pow_nonneg (sub_nonneg.mpr ht.2) _))
    (Nat.cast_nonneg _)

theorem bernstein_sum_one {n : ℕ} {t : ℝ}
    (_ht : t ∈ Set.Icc (0 : ℝ) 1) :
    ∑ i : Fin (n + 1), bernstein n i t = 1 := by
  rw [Finset.sum_fin_eq_sum_range]
  have hadd : t + (1 - t) = 1 := by ring
  calc
    (∑ i ∈ Finset.range (n + 1),
        if h : i < n + 1 then bernstein n ⟨i, h⟩ t else 0) =
        ∑ i ∈ Finset.range (n + 1),
          t ^ i * (1 - t) ^ (n - i) * (n.choose i : ℝ) := by
            apply Finset.sum_congr rfl
            intro i hi
            rw [dif_pos (Finset.mem_range.mp hi)]
            rfl
    _ = (t + (1 - t)) ^ n := (add_pow t (1 - t) n).symm
    _ = 1 := by rw [hadd, one_pow]

@[simp]
theorem bernstein_zero (n : ℕ) (i : Fin (n + 1)) :
    bernstein n i 0 = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein]
  · have hival : (i : ℕ) ≠ 0 := by
      intro h
      exact hi (Fin.ext h)
    simp [bernstein, hi, zero_pow hival]

@[simp]
theorem bernstein_one (n : ℕ) (i : Fin (n + 1)) :
    bernstein n i 1 = if i = Fin.last n then 1 else 0 := by
  by_cases hi : i = Fin.last n
  · subst i
    simp [bernstein]
  · have hilt : (i : ℕ) < n := by
      exact Nat.lt_of_le_of_ne i.is_le fun h => hi (Fin.ext h)
    have hsub : n - (i : ℕ) ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hilt)
    simp [bernstein, hi, hsub]

theorem bernstein_rev (n : ℕ) (i : Fin (n + 1)) (t : ℝ) :
    bernstein n i.rev t = bernstein n i (1 - t) := by
  have hi : (i : ℕ) ≤ n := i.is_le
  simp only [bernstein, Fin.val_rev, Nat.succ_sub_succ_eq_sub,
    Nat.choose_symm hi, tsub_tsub_cancel_of_le hi]
  ring

/-- A rational Bézier segment with strictly positive real weights. -/
structure RationalSegment (E : Type*) [AddCommMonoid E] [Module ℝ E] (n : ℕ) where
  point : Fin (n + 1) → E
  weight : Fin (n + 1) → ℝ
  weight_pos : ∀ i, 0 < weight i

namespace RationalSegment

variable {E : Type*} [AddCommMonoid E] [Module ℝ E] {n : ℕ}

def denominator (S : RationalSegment E n) (t : ℝ) : ℝ :=
  ∑ i : Fin (n + 1), S.weight i * bernstein n i t

def numerator (S : RationalSegment E n) (t : ℝ) : E :=
  ∑ i : Fin (n + 1), (S.weight i * bernstein n i t) • S.point i

def eval (S : RationalSegment E n) (t : ℝ) : E :=
  (S.denominator t)⁻¹ • S.numerator t

theorem denominator_pos (S : RationalSegment E n) {t : ℝ}
    (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    0 < S.denominator t := by
  have hnonneg : ∀ i : Fin (n + 1), 0 ≤ bernstein n i t :=
    fun i => bernstein_nonneg ht
  have hex : ∃ i : Fin (n + 1), 0 < bernstein n i t := by
    by_contra h
    push Not at h
    have hz : ∀ i : Fin (n + 1), bernstein n i t = 0 := fun i =>
      le_antisymm (h i) (hnonneg i)
    have hsum : (∑ i : Fin (n + 1), bernstein n i t) = 0 := by
      simp [hz]
    rw [bernstein_sum_one ht] at hsum
    norm_num at hsum
  obtain ⟨i, hi⟩ := hex
  apply Finset.sum_pos'
  · intro j _
    exact mul_nonneg (S.weight_pos j).le (hnonneg j)
  · exact ⟨i, Finset.mem_univ i, mul_pos (S.weight_pos i) hi⟩

@[simp]
theorem eval_zero (S : RationalSegment E n) :
    S.eval 0 = S.point 0 := by
  simp [eval, numerator, denominator, S.weight_pos 0 |>.ne']

@[simp]
theorem eval_one (S : RationalSegment E n) :
    S.eval 1 = S.point (Fin.last n) := by
  simp [eval, numerator, denominator, S.weight_pos (Fin.last n) |>.ne']

theorem continuous_denominator (S : RationalSegment E n) :
    Continuous S.denominator := by
  unfold denominator bernstein
  fun_prop

section Topology

variable [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul ℝ E]

theorem continuous_numerator (S : RationalSegment E n) :
    Continuous S.numerator := by
  unfold numerator bernstein
  fun_prop

theorem continuous_eval (S : RationalSegment E n) :
    ContinuousOn S.eval (Set.Icc (0 : ℝ) 1) := by
  unfold eval
  apply ContinuousOn.smul
  · exact S.continuous_denominator.continuousOn.inv₀ fun t ht =>
      (S.denominator_pos ht).ne'
  · exact S.continuous_numerator.continuousOn

end Topology

/-- Reverse the control points and weights. -/
def reverse (S : RationalSegment E n) : RationalSegment E n where
  point i := S.point i.rev
  weight i := S.weight i.rev
  weight_pos i := S.weight_pos i.rev

@[simp]
theorem reverse_point (S : RationalSegment E n) (i : Fin (n + 1)) :
    S.reverse.point i = S.point i.rev := rfl

@[simp]
theorem reverse_weight (S : RationalSegment E n) (i : Fin (n + 1)) :
    S.reverse.weight i = S.weight i.rev := rfl

@[simp]
theorem reverse_reverse (S : RationalSegment E n) :
    S.reverse.reverse = S := by
  cases S
  simp [reverse, Fin.rev_rev]

theorem denominator_reverse (S : RationalSegment E n) (t : ℝ) :
    S.reverse.denominator t = S.denominator (1 - t) := by
  unfold denominator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => S.reverse.weight i * bernstein n i t)
    (fun i => S.weight i * bernstein n i (1 - t))
  intro i
  simp only [reverse_weight, Fin.revPerm_apply]
  congr 1
  simpa using bernstein_rev n i.rev t

theorem numerator_reverse (S : RationalSegment E n) (t : ℝ) :
    S.reverse.numerator t = S.numerator (1 - t) := by
  unfold numerator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => (S.reverse.weight i * bernstein n i t) • S.reverse.point i)
    (fun i => (S.weight i * bernstein n i (1 - t)) • S.point i)
  intro i
  simp only [reverse_weight, reverse_point, Fin.revPerm_apply]
  congr 2
  simpa using bernstein_rev n i.rev t

theorem eval_reverse (S : RationalSegment E n) (t : ℝ) :
    S.reverse.eval t = S.eval (1 - t) := by
  simp only [eval, denominator_reverse, numerator_reverse]

end RationalSegment

end

end BZ1Scratch
```
