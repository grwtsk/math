/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime

/-!
# Check the actual rough-prefix content of the bilinear extraction

The two rectangular-prefix identities are proved with the frozen outer cutoff.
They expose the squared signed prefix rather than attributing cancellation to
prime extraction. No growth bound for that signed prefix is asserted.
SOURCE_PROOF_CANDIDATE. Compilation/fresh replay/transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughPrefixIdentity

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip

/-- Finite scalar prefixes; the outer N never changes with X or Y. -/
def prefix (f : ℕ → ℝ) (N X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, if n ≤ X then f n else 0

def squarePrefix (f : ℕ → ℝ) (N X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, if n ≤ X then (f n)^2 else 0

def triangle (f : ℕ → ℝ) (N X Y : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if m ≤ X ∧ n ≤ Y ∧ m < n then f m * f n else 0

theorem prefix_product_split (f : ℕ → ℝ) (N X Y : ℕ) :
    prefix f N (min X Y) * prefix f N Y =
      triangle f N X Y + triangle f N (min X Y) (min X Y) +
        squarePrefix f N (min X Y) := by
  let H := min X Y
  have hHX : H ≤ X := Nat.min_le_left _ _
  have hHY : H ≤ Y := Nat.min_le_right _ _
  have hpoint (m n : ℕ) :
      (if m ≤ H then f m else 0) * (if n ≤ Y then f n else 0) =
      (if m ≤ X ∧ n ≤ Y ∧ m < n then f m * f n else 0) +
      (if n ≤ H ∧ m ≤ H ∧ n < m then f n * f m else 0) +
      (if m = n then (if n ≤ H then (f n)^2 else 0) else 0) := by
    rcases lt_trichotomy m n with hmn | rfl | hnm
    · have hnml : ¬n < m := by omega
      have hne : m ≠ n := by omega
      by_cases hnY : n ≤ Y
      · by_cases hmX : m ≤ X
        · have hmH : m ≤ H := le_min hmX (by omega)
          simp [hmH, hnY, hmX, hmn, hnml, hne]
        · have hmH : ¬m ≤ H := fun h => hmX (h.trans hHX)
          simp [hmH, hnY, hmX, hmn, hnml, hne]
      · simp [hnY, hmn, hnml, hne]
    · by_cases hnH : n ≤ H
      · have hnY := hnH.trans hHY
        simp [hnH, hnY, pow_two]
      · simp [hnH]
    · have hmnl : ¬m < n := by omega
      have hne : m ≠ n := by omega
      by_cases hmH : m ≤ H
      · have hnH : n ≤ H := by omega
        have hnY := hnH.trans hHY
        simp [hmH, hnH, hnY, hnm, hmnl, hne, mul_comm]
      · simp [hmH, hnm, hmnl, hne]
  have hrev :
      (∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if n ≤ H ∧ m ≤ H ∧ n < m then f n * f m else 0) = triangle f N H H := by
    rw [Finset.sum_comm]
    rfl
  have hdiag :
      (∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if m = n then (if n ≤ H then (f n)^2 else 0) else 0) = squarePrefix f N H := by
    apply Finset.sum_congr rfl
    intro m hm
    simp [hm, eq_comm]
  unfold prefix
  rw [Finset.sum_mul_sum]
  simp_rw [hpoint, Finset.sum_add_distrib]
  rw [hrev, hdiag]
  rfl

theorem triangle_square (f : ℕ → ℝ) (N X : ℕ) :
    2 * triangle f N X X = (prefix f N X)^2 - squarePrefix f N X := by
  have h := prefix_product_split f N X X
  simp only [min_self] at h
  nlinarith

theorem negative_triangle_formula (f : ℕ → ℝ) (N X Y : ℕ) :
    -triangle f N X Y =
      -(prefix f N (min X Y)) * prefix f N Y +
        ((prefix f N (min X Y))^2 + squarePrefix f N (min X Y)) / 2 := by
  have hp := prefix_product_split f N X Y
  have hs := triangle_square f N (min X Y)
  nlinarith

/-- Original rough coefficient, with the explicit lower core cutoff only. -/
def tailCoefficient (P : List ℕ) (L n : ℕ) : ℝ :=
  if L < n then rough P n / Real.sqrt (n : ℝ) else 0

def roughPrefix (P : List ℕ) (N L X : ℕ) : ℝ := prefix (tailCoefficient P L) N X

def roughDiagonal (P : List ℕ) (N L X : ℕ) : ℝ := squarePrefix (tailCoefficient P L) N X

/-- The literal diagonal is a(n)^2/n, not the earlier block-diagonal allowance. -/
theorem roughDiagonal_eq (P : List ℕ) (N L X : ℕ) :
    roughDiagonal P N L X =
      ∑ n ∈ Finset.Icc 1 N, if L < n ∧ n ≤ X then rough P n^2 / (n : ℝ) else 0 := by
  unfold roughDiagonal squarePrefix
  apply Finset.sum_congr rfl
  intro n _
  by_cases hL : L < n <;> by_cases hX : n ≤ X <;>
    simp [tailCoefficient, hL, hX, div_pow, Real.sq_sqrt (Nat.cast_nonneg n)]

/-- Existing prime-first identity specialized without any new growth assumption. -/
theorem correlation_eq_negative_triangle (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) :
    roughPrefixCorrelation P N L X Y = -triangle (tailCoefficient P L) N X Y := by
  rw [roughPrefixCorrelation_eq P hP]
  congr 1
  unfold triangle
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _
  unfold prefixWeight
  by_cases hnY : n ≤ Y
  · rw [if_pos hnY, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    by_cases hmL : L < m <;> by_cases hmX : m ≤ X <;> by_cases hmn : m < n
    · have hnL : L < n := lt_trans hmL hmn
      simp only [hmL, hmX, hmn, hnY, and_self, if_true, tailCoefficient, hnL,
        div_eq_mul_inv, mul_inv_rev]
      ring
    all_goals simp [hmL, hmX, hmn, hnY, tailCoefficient]
  · simp [hnY]

/-- Unified rectangular identity. No sign cancellation estimate is hidden in it. -/
theorem correlation_formula (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) :
    roughPrefixCorrelation P N L X Y =
      -(roughPrefix P N L (min X Y)) * roughPrefix P N L Y +
        ((roughPrefix P N L (min X Y))^2 + roughDiagonal P N L (min X Y)) / 2 := by
  rw [correlation_eq_negative_triangle P hP]
  exact negative_triangle_formula (tailCoefficient P L) N X Y

/-- X>=Y: the larger prefix is already clipped at Y. -/
theorem correlation_of_Y_le_X (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) (hYX : Y ≤ X) :
    roughPrefixCorrelation P N L X Y =
      (roughDiagonal P N L Y - (roughPrefix P N L Y)^2) / 2 := by
  rw [correlation_formula P hP, min_eq_right hYX]
  ring

/-- X<Y: retain the cross product with the full Y-prefix. -/
theorem correlation_of_X_lt_Y (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) (hXY : X < Y) :
    roughPrefixCorrelation P N L X Y =
      -(roughPrefix P N L X) * roughPrefix P N L Y +
        ((roughPrefix P N L X)^2 + roughDiagonal P N L X) / 2 := by
  rw [correlation_formula P hP, min_eq_left hXY.le]

theorem roughDiagonal_nonnegative (P : List ℕ) (N L X : ℕ) :
    0 ≤ roughDiagonal P N L X := by
  unfold roughDiagonal squarePrefix
  apply Finset.sum_nonneg
  intro n _
  split_ifs <;> positivity

/-- An elementary paid diagonal, uniform in the prefix. The signed S is not bounded here. -/
theorem roughDiagonal_le (P : List ℕ) (N L X : ℕ) :
    roughDiagonal P N L X ≤ (N : ℝ) / ((L : ℝ)+1) := by
  rw [roughDiagonal_eq]
  have hden : (0 : ℝ) < (L : ℝ)+1 := by positivity
  calc
    _ ≤ ∑ _n ∈ Finset.Icc 1 N, (1 / ((L : ℝ)+1) : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      split_ifs with h
      · have hnR : (0 : ℝ) < n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
        have hLn : (L : ℝ)+1 ≤ n := by exact_mod_cast h.1
        have hs : rough P n^2 ≤ 1 := by
          have ha := (sq_le_sq₀ (abs_nonneg (rough P n)) (by norm_num : (0 : ℝ) ≤ 1)).mpr
            (rough_abs_le_one P n)
          simpa only [sq_abs, one_pow] using ha
        calc
          _ ≤ 1 / (n : ℝ) := div_le_div_of_nonneg_right hs hnR.le
          _ ≤ _ := one_div_le_one_div_of_le hden hLn
      · positivity
    _ = _ := by simp [Finset.card_Icc, nsmul_eq_mul]; ring

/-- The diagonal in the prefix identity is independently at most sqrt N. -/
theorem roughDiagonal_sqrt_bound (P : List ℕ) (N X : ℕ) :
    roughDiagonal P N (Nat.sqrt N) X ≤ Real.sqrt (N : ℝ) := by
  have hs := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
  have hupper : (N : ℝ) < ((Nat.sqrt N : ℝ)+1)^2 := by
    exact_mod_cast Nat.lt_succ_sqrt' N
  have hs0 := Real.sqrt_nonneg (N : ℝ)
  have hroot : Real.sqrt (N : ℝ) ≤ (Nat.sqrt N : ℝ)+1 := by
    apply (sq_le_sq₀ hs0 (by positivity)).mp
    rw [Real.sq_sqrt (Nat.cast_nonneg N)]
    exact hupper.le
  apply (roughDiagonal_le P N (Nat.sqrt N) X).trans
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < (Nat.sqrt N : ℝ)+1)).mpr
  nlinarith [mul_le_mul_of_nonneg_left hroot hs0]

end GRWTSK.NumberTheory.Moebius.PickupRoughPrefixIdentity
