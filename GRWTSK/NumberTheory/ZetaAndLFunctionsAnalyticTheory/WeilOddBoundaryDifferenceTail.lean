/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryObservation
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The common tail in a divided difference of the literal boundary signal

Subtract the two boundary summands before bounding the omitted terms.
The same exponential weight occurs at both frequencies, so the difference
is the frequency-square difference divided by a product of the two
positive denominators. The inverse fourth-power integral bounds this
common remainder with cubic decay in the truncation length. This is the
signed difference used in the off-diagonal gamma entry, including rows
outside the retained head. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryDifferenceTail

open OddRootProjection OddBoundarySignalBounds OddBoundaryObservation
open OddOutputTrace (frequency)

private theorem inverseFourthTail {K : ℕ} (hK : 1 < K) :
    Summable (fun j : ℕ => ((j + K : ℕ) : ℝ) ^ (-4 : ℝ)) ∧
      (∑' j : ℕ, ((j + K : ℕ) : ℝ) ^ (-4 : ℝ)) ≤
        1 / (3 * ((K : ℝ) - 1) ^ 3) := by
  let f := fun x : ℝ => x ^ (-4 : ℝ)
  have hcut : 0 < ((K - 1 : ℕ) : ℝ) := by exact_mod_cast (show 0 < K - 1 by omega)
  have hcutEq : ((K - 1 : ℕ) : ℝ) = (K : ℝ) - 1 := by
    rw [Nat.cast_sub (show 1 ≤ K by omega), Nat.cast_one]
  have hanti : AntitoneOn f (Ici ((K - 1 : ℕ) : ℝ)) := fun _ hx _ _ hxy =>
    Real.rpow_le_rpow_of_nonpos (hcut.trans_le hx) hxy (by norm_num)
  have hI : IntegrableOn f (Ioi ((K - 1 : ℕ) : ℝ)) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) hcut
  have hnn : ∀ x ∈ Ioi ((K - 1 : ℕ) : ℝ), 0 ≤ f x := fun x hx =>
    Real.rpow_nonneg (hcut.trans hx).le _
  have hCmp := hanti.tsum_comp_add_le_integral (K - 1) hI hnn
  have hIndex (j : ℕ) : j + (K - 1) + 1 = j + K := by omega
  simp_rw [hIndex] at hCmp
  refine ⟨(summable_nat_add_iff (f := fun j : ℕ => f j) K).2
    (hanti.summable_of_integrableOn_Ioi hI hnn), hCmp.trans_eq ?_⟩
  dsimp only [f]
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-4 : ℝ) < -1) hcut, hcutEq]
  norm_num [Real.rpow_neg_ofNat, zpow_neg]
  ring

private theorem abs_termDifference_le (T : ℝ) (hT : 0 ≤ T) (m n : ℕ) {j : ℕ}
    (hj : 0 < j) :
    |boundarySignalTerm T n j - boundarySignalTerm T m j| ≤
      (|frequency T m ^ 2 - frequency T n ^ 2| / 16) * (j : ℝ) ^ (-4 : ℝ) := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let u := frequency T m
  let v := frequency T n
  let w := 1 - Real.exp (-2 * a * T)
  have hj' : 0 < (j : ℝ) := by exact_mod_cast hj
  have ha : 0 < a := by dsimp [a]; positivity
  have hDm : 0 < a ^ 2 + u ^ 2 := by positivity
  have hDn : 0 < a ^ 2 + v ^ 2 := by positivity
  have hw0 : 0 ≤ w := sub_nonneg.mpr (Real.exp_le_one_iff.mpr
    (mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg (by norm_num) ha.le) hT))
  have hw1 : w ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hD : (2 * (j : ℝ)) ^ 4 ≤ (a ^ 2 + v ^ 2) * (a ^ 2 + u ^ 2) := by
    have hBase : (2 * (j : ℝ)) ^ 2 ≤ a ^ 2 :=
      pow_le_pow_left₀ (by positivity) (by dsimp [a]; linarith) 2
    rw [show (2 * (j : ℝ)) ^ 4 = (2 * (j : ℝ)) ^ 2 * (2 * (j : ℝ)) ^ 2 by ring]
    exact mul_le_mul (hBase.trans (le_add_of_nonneg_right (sq_nonneg v)))
      (hBase.trans (le_add_of_nonneg_right (sq_nonneg u))) (sq_nonneg _) hDn.le
  change |w / (a ^ 2 + v ^ 2) - w / (a ^ 2 + u ^ 2)| ≤ _
  rw [show w / (a ^ 2 + v ^ 2) - w / (a ^ 2 + u ^ 2) =
      w * (u ^ 2 - v ^ 2) / ((a ^ 2 + v ^ 2) * (a ^ 2 + u ^ 2)) by
    field_simp [hDm.ne', hDn.ne']; ring]
  rw [abs_div, abs_mul, abs_of_nonneg hw0, abs_of_pos (mul_pos hDn hDm)]
  calc
    _ ≤ |u ^ 2 - v ^ 2| / ((a ^ 2 + v ^ 2) * (a ^ 2 + u ^ 2)) := by
      apply div_le_div_of_nonneg_right _ (mul_pos hDn hDm).le
      exact mul_le_of_le_one_left (abs_nonneg _) hw1
    _ ≤ |u ^ 2 - v ^ 2| / (2 * (j : ℝ)) ^ 4 :=
      div_le_div_of_nonneg_left (abs_nonneg _) (by positivity) hD
    _ = _ := by
      simp only [u, v, Real.rpow_neg_ofNat, zpow_neg]
      field_simp [hj'.ne']
      ring

/-- The two retained partial sums share a tail whose width decays cubically. -/
theorem abs_boundarySignal_sub_partialDifference_le (T : ℝ) (hT : 0 ≤ T)
    (m n : ℕ) {K : ℕ} (hK : 1 < K) :
    |(boundarySignal T n - boundarySignal T m) -
      (boundarySignalPartial T n K - boundarySignalPartial T m K)| ≤
      |frequency T m ^ 2 - frequency T n ^ 2| / (48 * ((K : ℝ) - 1) ^ 3) := by
  let f := fun j : ℕ => boundarySignalTerm T n (j + K) - boundarySignalTerm T m (j + K)
  let C := |frequency T m ^ 2 - frequency T n ^ 2| / 16
  obtain ⟨hs, hsum⟩ := inverseFourthTail hK
  have hDom (j : ℕ) : ‖f j‖ ≤ C * ((j + K : ℕ) : ℝ) ^ (-4 : ℝ) := by
    rw [Real.norm_eq_abs]
    exact abs_termDifference_le T hT m n (by omega : 0 < j + K)
  have hBound := tsum_of_norm_bounded (hs.mul_left C).hasSum hDom
  rw [Real.norm_eq_abs] at hBound
  have hsN := (boundarySignal_summable T hT n).sum_add_tsum_nat_add K
  have hsM := (boundarySignal_summable T hT m).sum_add_tsum_nat_add K
  have hEq : (boundarySignal T n - boundarySignal T m) -
      (boundarySignalPartial T n K - boundarySignalPartial T m K) = ∑' j, f j := by
    dsimp only [f]
    rw [Summable.tsum_sub ((summable_nat_add_iff K).2 (boundarySignal_summable T hT n))
      ((summable_nat_add_iff K).2 (boundarySignal_summable T hT m))]
    simp only [boundarySignal, boundarySignalPartial]
    linarith only [hsN, hsM]
  rw [hEq]
  refine hBound.trans ?_
  rw [tsum_mul_left]
  exact (mul_le_mul_of_nonneg_left hsum (by dsimp [C]; positivity)).trans_eq (by
    have hKreal : (1 : ℝ) < K := by exact_mod_cast hK
    dsimp [C]
    field_simp [sub_ne_zero.mpr hKreal.ne']; ring)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryDifferenceTail
