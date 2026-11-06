/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Complete summation of the odd Weil residual after pole cancellation

The summation step of `odd-weil-pole-displacement-node-cancellation-preserving-remote-certificate.md`,
Sections 4–5, equations (11), (13)–(15). For integer modes above `L`,
Young's inequality charges the signed leading row and the entire remainder
separately. The two components of the leading row remain together under a
single square through `J`, preserving their cross term. Only the modes beyond
`J` are separated by the diagonal bound. Integrating the decreasing
reciprocal powers gives the three tail constants.

When both traces vanish, the leading budget vanishes for every cutoff.
Setting only the first trace to zero leaves the cubic tail scale for the
second. Summability is proved before comparing infinite sums. The actual
operator row expansion, pointwise remainder and trace bounds, Parseval
identification, and source comparison are separate inputs. This is a
standard summation argument. Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualSummation

/-- The two real leading directions share a square in the retained rows. -/
def leadingRow (beta d : ℝ) (signal : ℕ → ℝ) (m : ℕ) : ℝ :=
  beta / (m : ℝ) + signal m * d / (m : ℝ) ^ 2

private theorem reciprocalTail {L p : ℕ} (hL : 0 < L) (hp : 0 < p) :
    Summable (fun n : ℕ => 1 / (((L + 1 + n : ℕ) : ℝ) ^ (p + 1))) ∧
      (∑' n : ℕ, 1 / (((L + 1 + n : ℕ) : ℝ) ^ (p + 1))) ≤
        1 / ((p : ℝ) * (L : ℝ) ^ p) := by
  have hLR : 0 < (L : ℝ) := by exact_mod_cast hL
  have hpR : 0 < (p : ℝ) := by exact_mod_cast hp
  let a : ℝ := -((p + 1 : ℕ) : ℝ)
  have ha : a < -1 := by
    simp only [a, Nat.cast_add, Nat.cast_one]
    linarith
  have hpowers (x : ℝ) (hx : 0 ≤ x) : x ^ a = 1 / x ^ (p + 1) := by
    change x ^ (-((p + 1 : ℕ) : ℝ)) = _
    rw [Real.rpow_neg hx, Real.rpow_natCast, one_div]
  have hAnti : AntitoneOn (fun x : ℝ => x ^ a) (Ici (L : ℝ)) := by
    intro x hx y _ hxy
    exact Real.rpow_le_rpow_of_nonpos (hLR.trans_le hx) hxy (ha.le.trans (by norm_num))
  have hInt := integrableOn_Ioi_rpow_of_lt ha hLR
  have hNonneg (x : ℝ) (hx : x ∈ Ioi (L : ℝ)) : 0 ≤ x ^ a :=
    Real.rpow_nonneg (hLR.trans hx).le _
  have hTail := hAnti.tsum_comp_add_le_integral L hInt hNonneg
  have hCast (n : ℕ) :
      (((n + L + 1 : ℕ) : ℝ) ^ a) =
        1 / (((L + 1 + n : ℕ) : ℝ) ^ (p + 1)) := by
    rw [hpowers _ (by positivity)]
    congr 3
    omega
  refine ⟨?_, ?_⟩
  · have hSeries : Summable (fun n : ℕ => 1 / (n : ℝ) ^ (p + 1)) :=
      Real.summable_one_div_nat_pow.mpr (by omega)
    simpa only [Nat.add_comm (L + 1)] using (summable_nat_add_iff (L + 1)).mpr hSeries
  · simp only [hCast] at hTail
    rw [integral_Ioi_rpow_of_lt ha hLR] at hTail
    have ha' : a + 1 = -(p : ℝ) := by
      simp only [a, Nat.cast_add, Nat.cast_one]
      ring
    rw [ha', Real.rpow_neg hLR.le, Real.rpow_natCast, neg_div_neg_eq] at hTail
    simpa only [← one_div, div_div, mul_comm] using hTail

private theorem leadingRow_sq_le (beta d k₀ : ℝ) (signal : ℕ → ℝ)
    (m : ℕ) (hSignal : |signal m| ≤ k₀) :
    (leadingRow beta d signal m) ^ 2 ≤
      (2 * beta ^ 2) * (1 / (m : ℝ) ^ 2) +
        (2 * k₀ ^ 2 * d ^ 2) * (1 / (m : ℝ) ^ 4) := by
  have hSignalSq : (signal m) ^ 2 ≤ k₀ ^ 2 :=
    sq_le_sq.mpr (hSignal.trans (le_abs_self _))
  unfold leadingRow
  calc
    _ ≤ 2 * (beta / (m : ℝ)) ^ 2 + 2 * (signal m * d / (m : ℝ) ^ 2) ^ 2 := by
      nlinarith only [sq_nonneg (beta / (m : ℝ) - signal m * d / (m : ℝ) ^ 2)]
    _ = (2 * beta ^ 2) * (1 / (m : ℝ) ^ 2) +
          (2 * (signal m) ^ 2 * d ^ 2) * (1 / (m : ℝ) ^ 4) := by
      simp only [div_pow, mul_pow, ← pow_mul]
      ring
    _ ≤ _ := by
      apply add_le_add le_rfl
      have h := mul_le_mul_of_nonneg_right hSignalSq
        (show 0 ≤ 2 * d ^ 2 * (1 / (m : ℝ) ^ 4) by positivity)
      nlinarith only [h]

private theorem leadingRow_tail_bound {L : ℕ} (hL : 0 < L) (beta d k₀ : ℝ)
    (signal : ℕ → ℝ) (hSignal : ∀ m, L < m → |signal m| ≤ k₀) :
    Summable (fun n : ℕ => (leadingRow beta d signal (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (leadingRow beta d signal (L + 1 + n)) ^ 2) ≤
        2 * beta ^ 2 / (L : ℝ) + 2 * k₀ ^ 2 * d ^ 2 / (3 * (L : ℝ) ^ 3) := by
  have h2 := reciprocalTail (p := 1) hL (by norm_num)
  have h4 := reciprocalTail (p := 3) hL (by norm_num)
  let c₂ : ℝ := 2 * beta ^ 2
  let c₄ : ℝ := 2 * k₀ ^ 2 * d ^ 2
  let b₂ : ℕ → ℝ := fun n => 1 / ((L + 1 + n : ℕ) : ℝ) ^ 2
  let b₄ : ℕ → ℝ := fun n => 1 / ((L + 1 + n : ℕ) : ℝ) ^ 4
  have hb₂ : Summable b₂ := h2.1
  have hb₄ : Summable b₄ := h4.1
  have hMajor := (hb₂.mul_left c₂).add (hb₄.mul_left c₄)
  have hPoint (n : ℕ) : (leadingRow beta d signal (L + 1 + n)) ^ 2 ≤
      c₂ * b₂ n + c₄ * b₄ n := leadingRow_sq_le beta d k₀ signal _ (hSignal _ (by omega))
  have hSum := hMajor.of_nonneg_of_le (fun _ => sq_nonneg _) hPoint
  refine ⟨hSum, (hSum.tsum_le_tsum hPoint hMajor).trans ?_⟩
  rw [(hb₂.mul_left c₂).tsum_add (hb₄.mul_left c₄), tsum_mul_left, tsum_mul_left]
  have h₂ : (∑' n, b₂ n) ≤ 1 / (L : ℝ) := by simpa [b₂] using h2.2
  have h₄ : (∑' n, b₄ n) ≤ 1 / (3 * (L : ℝ) ^ 3) := h4.2
  calc
    _ ≤ c₂ * (1 / (L : ℝ)) + c₄ * (1 / (3 * (L : ℝ) ^ 3)) :=
      add_le_add (mul_le_mul_of_nonneg_left h₂ (by positivity))
        (mul_le_mul_of_nonneg_left h₄ (by positivity))
    _ = _ := by dsimp [c₂, c₄]; ring

/-- Split the square-summable leading rows after `J` and retain every square
from `L + 1` through `J` in its original two-trace form. -/
theorem leadingRow_sum_le {L J : ℕ} (hL : 0 < L) (hLJ : L ≤ J)
    (beta d k₀ : ℝ) (signal : ℕ → ℝ) (hSignal : ∀ m, L < m → |signal m| ≤ k₀) :
    Summable (fun n : ℕ => (leadingRow beta d signal (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (leadingRow beta d signal (L + 1 + n)) ^ 2) ≤
        (∑ n ∈ Finset.range (J - L), (leadingRow beta d signal (L + 1 + n)) ^ 2) +
          2 * beta ^ 2 / (J : ℝ) + 2 * k₀ ^ 2 * d ^ 2 / (3 * (J : ℝ) ^ 3) := by
  have hLead := (leadingRow_tail_bound hL beta d k₀ signal hSignal).1
  have hTail := (leadingRow_tail_bound (hL.trans_le hLJ) beta d k₀ signal
    (fun m hm => hSignal m (hLJ.trans_lt hm))).2
  refine ⟨hLead, ?_⟩
  rw [← hLead.sum_add_tsum_nat_add (J - L), add_assoc]
  apply add_le_add le_rfl
  have hIndex (n : ℕ) : L + 1 + (n + (J - L)) = J + 1 + n := by omega
  simpa only [hIndex] using hTail

/-- Square-summability and the whole remote bound, with an independently paid
upper bound `allowance` on the square of the remainder constant. -/
theorem remoteResidual_tail_bound {L J : ℕ} (hL : 0 < L) (hLJ : L ≤ J)
    (row signal error : ℕ → ℝ) (beta d H k₀ allowance s : ℝ) (hs : 0 < s)
    (hSignal : ∀ m, L < m → |signal m| ≤ k₀)
    (hError : ∀ m, L < m → |error m| ≤ H / (m : ℝ) ^ 3)
    (hRow : ∀ m, L < m →
      row m = (-1 : ℝ) ^ m * leadingRow beta d signal m + error m)
    (hBudget : H ^ 2 ≤ allowance) :
    Summable (fun n : ℕ => (row (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (row (L + 1 + n)) ^ 2) ≤
        (1 + s) *
          ((∑ n ∈ Finset.range (J - L), (leadingRow beta d signal (L + 1 + n)) ^ 2) +
            2 * beta ^ 2 / (J : ℝ) + 2 * k₀ ^ 2 * d ^ 2 / (3 * (J : ℝ) ^ 3)) +
          (1 + s⁻¹) * allowance / (5 * (L : ℝ) ^ 5) := by
  have hLead := leadingRow_sum_le hL hLJ beta d k₀ signal hSignal
  have h6 := reciprocalTail (p := 5) hL (by norm_num)
  let c₆ : ℝ := (1 + s⁻¹) * allowance
  let b₆ : ℕ → ℝ := fun n => 1 / ((L + 1 + n : ℕ) : ℝ) ^ 6
  have hb₆ : Summable b₆ := h6.1
  have hMajor := (hLead.1.mul_left (1 + s)).add (hb₆.mul_left c₆)
  have hPoint (n : ℕ) : (row (L + 1 + n)) ^ 2 ≤
      (1 + s) * (leadingRow beta d signal (L + 1 + n)) ^ 2 + c₆ * b₆ n := by
    let m := L + 1 + n
    have hm : L < m := by dsimp [m]; omega
    have hSign : (((-1 : ℝ) ^ m) ^ 2) = 1 := by
      rw [← pow_mul, Nat.mul_comm m 2, pow_mul]
      norm_num
    have hErrSq : (error m) ^ 2 ≤ allowance * b₆ n := by
      calc
        _ ≤ (H / (m : ℝ) ^ 3) ^ 2 :=
          sq_le_sq.mpr ((hError m hm).trans (le_abs_self _))
        _ = H ^ 2 * b₆ n := by
          dsimp [m, b₆]
          simp only [div_pow, ← pow_mul]
          ring
        _ ≤ _ := mul_le_mul_of_nonneg_right hBudget (by dsimp [b₆]; positivity)
    change (row m) ^ 2 ≤ (1 + s) * (leadingRow beta d signal m) ^ 2 + c₆ * b₆ n
    rw [hRow m hm]
    calc
      _ ≤ (1 + s) * ((-1 : ℝ) ^ m * leadingRow beta d signal m) ^ 2 +
            (1 + s⁻¹) * (error m) ^ 2 :=
        GRWTSK.LinearAlgebra.SchurObserver.weighted_square _ _ _ hs
      _ ≤ _ := by
        rw [mul_pow, hSign, one_mul]
        dsimp [c₆]
        rw [mul_assoc]
        exact add_le_add le_rfl (mul_le_mul_of_nonneg_left hErrSq (by positivity))
  have hSum := hMajor.of_nonneg_of_le (fun _ => sq_nonneg _) hPoint
  refine ⟨hSum, (hSum.tsum_le_tsum hPoint hMajor).trans ?_⟩
  rw [(hLead.1.mul_left (1 + s)).tsum_add (hb₆.mul_left c₆), tsum_mul_left, tsum_mul_left]
  have h₆ : (∑' n, b₆ n) ≤ 1 / (5 * (L : ℝ) ^ 5) := h6.2
  have hAllowance : 0 ≤ allowance := (sq_nonneg H).trans hBudget
  calc
    _ ≤ (1 + s) * _ + c₆ * (1 / (5 * (L : ℝ) ^ 5)) :=
      add_le_add (mul_le_mul_of_nonneg_left hLead.2 (by positivity))
        (mul_le_mul_of_nonneg_left h₆ (by positivity))
    _ = _ := by dsimp [c₆]; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualSummation
