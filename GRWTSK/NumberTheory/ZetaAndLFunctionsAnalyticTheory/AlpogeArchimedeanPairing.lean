/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic

/-! # Block Weyl factors in the archimedean theta norm

The two lists of beads are the shifted partition rows on the two sign blocks.
The gap between them is the size of the zero block in the compact source.
-/

namespace GRWTSK.NumberTheory.AlpogeArchimedeanPairing

/-- Signed differences between two ordered blocks. -/
def cross (xs ys : List ℤ) : ℤ :=
  (xs.map fun x => (ys.map fun y => x - y).prod).prod

/-- Product of differences in the displayed order. -/
def vandermonde : List ℤ → ℤ
  | [] => 1
  | x :: xs => (xs.map fun y => x - y).prod * vandermonde xs

theorem vandermonde_append (xs ys : List ℤ) :
    vandermonde (xs ++ ys) = vandermonde xs * vandermonde ys * cross xs ys := by
  induction xs with
  | nil => simp [vandermonde, cross]
  | cons x xs ih =>
    simp only [List.cons_append, vandermonde, List.map_append, List.prod_append, ih]
    simp [cross]
    ring

/-- All six factors for a compact weight with positive, zero and negative blocks. -/
theorem three_block_weyl (xs mid ys : List ℤ) :
    vandermonde ((xs ++ mid) ++ ys) =
      vandermonde xs * vandermonde mid * vandermonde ys *
      cross xs mid * cross mid ys * cross xs ys := by
  rw [vandermonde_append, vandermonde_append]
  simp [cross]
  ring

/-- The positive-minus-negative gap in both the small Harish-Chandra parameter
and the large compact Weyl numerator. The constants represent twice the shifts. -/
theorem same_cross_gap (a b n p q i j : ℤ) :
    (2 * a + 2 * n - q + (p + 1 - 2 * i)) -
    (-2 * b + p + (q + 1 - 2 * (q + 1 - j))) =
      2 * ((a + n - i) - (-b + j - 1)) := by ring

/-- Shifted Weyl coordinates for the block of zero rows. -/
def zeroBlock : ℕ → List ℤ
  | 0 => []
  | t + 1 => (t : ℤ) :: zeroBlock t

/-- Distance products to the consecutive middle coordinates, on the upper side. -/
theorem upper_middle (x t : ℕ) :
    ((zeroBlock t).map fun z => (x : ℤ) + t - z).prod =
      ((x + 1).ascFactorial t : ℤ) := by
  induction t generalizing x with
  | zero => simp [zeroBlock]
  | succ t ih =>
    have h : (x : ℤ) + (t + 1 : ℕ) = (x + 1 : ℕ) + (t : ℤ) := by push_cast; ring
    simp only [zeroBlock, List.map_cons, List.prod_cons, h]
    rw [ih (x+1)]
    have e : ((x+1 : ℕ) : ℤ) + t - t = (x+1 : ℕ) := by ring
    rw [e]
    rw [Nat.ascFactorial_succ]
    exact_mod_cast Nat.succ_ascFactorial (x+1) t

/-- Distance products to the consecutive middle coordinates, on the lower side. -/
theorem lower_middle (y t : ℕ) :
    ((zeroBlock t).map fun z => z - (-1 - (y : ℤ))).prod =
      ((y + 1).ascFactorial t : ℤ) := by
  induction t with
  | zero => simp [zeroBlock]
  | succ t ih =>
    simp only [zeroBlock, List.map_cons, List.prod_cons, ih, Nat.ascFactorial_succ, Nat.cast_mul]
    push_cast
    ring

/-- Factorials at bead positions shifted by the middle block. -/
def rowFactorials (xs : List ℕ) (t : ℕ) : ℚ :=
  (xs.map fun x => ((x + t).factorial : ℚ)).prod

/-- Weyl factors crossing the consecutive coordinates in the middle block. -/
def middleFactors (xs : List ℕ) (t : ℕ) : ℚ :=
  (xs.map fun x => ((x + 1).ascFactorial t : ℚ)).prod

theorem extend_rows (xs : List ℕ) (t : ℕ) :
    rowFactorials xs 0 * middleFactors xs t = rowFactorials xs t := by
  induction xs with
  | nil => simp [rowFactorials, middleFactors]
  | cons x xs ih =>
    have hx : (x.factorial : ℚ) * (x+1).ascFactorial t = ((x+t).factorial : ℚ) := by
      exact_mod_cast Nat.factorial_mul_ascFactorial x t
    change (((x+0).factorial : ℚ) * rowFactorials xs 0) *
        (((x+1).ascFactorial t : ℚ) * middleFactors xs t) =
      ((x+t).factorial : ℚ) * rowFactorials xs t
    rw [Nat.add_zero, ← hx, ← ih]
    ring

/-- After the compact Weyl, hook and inverse formal-degree products are expanded,
their within-block and extreme-block factors disappear, in every degree.
Here A,B are the two within-block Vandermondes, C is the common extreme-block
product, and Dn,Dp,Dq,Dt are the four consecutive Vandermondes. -/
theorem archimedean_cancellation (xs ys : List ℕ) (t : ℕ)
    (A B C Dn Dp Dq Dt vol : ℚ)
    (ha : A ≠ 0) (hb : B ≠ 0) (hc : C ≠ 0) :
    (A * B * Dt * middleFactors xs t * middleFactors ys t * C / Dn) *
      (A * B / (Dp * Dq)) * (vol / (A * B * C)) *
      (rowFactorials xs 0 / A) * (rowFactorials ys 0 / B) =
      vol * Dt * rowFactorials xs t * rowFactorials ys t / (Dn * Dp * Dq) := by
  rw [← extend_rows xs t, ← extend_rows ys t]
  simp only [div_eq_mul_inv, mul_inv_rev]
  field_simp [ha, hb, hc]

/-- The weight-dependent part of the compact dimension times the inverse formal
degree after removing the common extreme-block factors. Zero-based row indices. -/
def reducedWeight (p t : ℕ) (a : Fin p → ℕ) : ℕ :=
  (∏ i : Fin p, ∏ j ∈ Finset.univ.filter (i < ·), (a i + j.val - (a j + i.val))) *
    ∏ i : Fin p, ∏ k : Fin t, (a i + (p - i.val) + k.val)

/-- For every integral descending partition, the vacuum minimizes the remaining
factor. This yields a lower bound for the archimedean scalar divided by its two
hook products which is independent of the sizes of all rows. -/
theorem vacuum_le_reducedWeight (p t : ℕ) (a : Fin p → ℕ) (ha : Antitone a) :
    reducedWeight p t (fun _ => 0) ≤ reducedWeight p t a := by
  unfold reducedWeight
  apply Nat.mul_le_mul
  · apply Finset.prod_le_prod
    intro i _
    apply Finset.prod_le_prod
    intro j hj
    have h : i < j := (Finset.mem_filter.mp hj).2
    have := ha h.le
    simp only [Nat.zero_add]
    omega
  · apply Finset.prod_le_prod
    intro i _
    apply Finset.prod_le_prod
    intro j _
    simp only [Nat.zero_add]
    omega

end GRWTSK.NumberTheory.AlpogeArchimedeanPairing
