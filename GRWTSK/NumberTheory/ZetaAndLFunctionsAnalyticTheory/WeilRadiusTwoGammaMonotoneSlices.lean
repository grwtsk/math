/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations

/-!
# Monotone evaluation of the radius-two gamma slices

For nonnegative ordered intervals the two outer products are exactly the
minimum and maximum of the four corner products. The multiplier and the
positive factors of the image correction satisfy those conditions, including
at mode zero. The image term still negates the interval and reverses its
endpoints. The source rounds each summand before adding it, and this evaluator
keeps that order of operations.

The equality serves the physical residual scalar replay with the same
endpoints and tail allowances. Its proof shares the source summands and
does not add an analytic approximation. Independent mathematical review is
pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaMonotoneSlices

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open RadiusTwoGammaPoleObservations
open private piBounds omega omegaSq rate denominator expOne expInv decay boundaryTerm correctionTerm
  multiplierTermBounds boundsSlice
  from GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations

private def Valid (a : Bounds) : Prop := 0 ≤ a.1 ∧ a.1 ≤ a.2

private def monotoneMul (a b : Bounds) : Bounds := (a.1*b.1, a.2*b.2)

private theorem monotoneMul_valid {a b : Bounds} (ha : Valid a) (hb : Valid b) :
    Valid (monotoneMul a b) :=
  ⟨mul_nonneg ha.1 hb.1, mul_le_mul ha.2 hb.2 hb.1 (ha.1.trans ha.2)⟩

private theorem mul_eq {a b : Bounds} (ha : Valid a) (hb : Valid b) :
    mul a b = monotoneMul a b := by
  have hA₁ := mul_le_mul_of_nonneg_right ha.2 hb.1
  have hA₂ := mul_le_mul_of_nonneg_right ha.2 (hb.1.trans hb.2)
  have hB₁ := mul_le_mul_of_nonneg_left hb.2 ha.1
  have hB₂ := mul_le_mul_of_nonneg_left hb.2 (ha.1.trans ha.2)
  simp [mul, monotoneMul, min_eq_left hA₁, min_eq_left hA₂, min_eq_left hB₁,
    max_eq_right hA₁, max_eq_right hA₂, max_eq_right hB₂]

private theorem omegaSq_valid (n : ℕ) : Valid (omegaSq n) := by
  have hn : 0 ≤ (n : ℚ) := by positivity
  have h₀ : 0 ≤ (omega n).1 := by unfold omega; norm_num [piBounds]; positivity
  have h₁ : (omega n).1 ≤ (omega n).2 := by
    unfold omega
    exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right (by norm_num [piBounds]) hn)
      (by norm_num)
  exact ⟨sq_nonneg _, pow_le_pow_left₀ h₀ h₁ 2⟩

private theorem decay_bounds (j : ℕ) :
    0 ≤ (decay j).1 ∧ (decay j).1 ≤ (decay j).2 ∧ (decay j).2 ≤ 1 := by
  unfold decay
  split_ifs
  · exact ⟨pow_nonneg (by norm_num [expInv, expOne, inv]) _,
      pow_le_pow_left₀ (by norm_num [expInv, expOne, inv])
        (by norm_num [expInv, expOne, inv]) _,
      pow_le_one₀ (by norm_num [expInv, expOne, inv]) (by norm_num [expInv, expOne, inv])⟩
  · norm_num

private theorem factor_valid (j : ℕ) : Valid (sub (point 1) (decay j)) := by
  obtain ⟨_, hlo, hhi⟩ := decay_bounds j
  change 0 ≤ 1 + -(decay j).2 ∧ 1 + -(decay j).2 ≤ 1 + -(decay j).1
  simpa only [← sub_eq_add_neg] using And.intro (sub_nonneg.mpr hhi) (sub_le_sub_left hlo 1)

private theorem denomInv_valid (n j : ℕ) : Valid (inv (denominator n (rate j))) := by
  have hRate : 0 < rate j := by unfold rate; positivity
  have hω := omegaSq_valid n
  have h₀ : 0 < (denominator n (rate j)).1 := by
    change 0 < (rate j)^2 + (omegaSq n).1
    exact add_pos_of_pos_of_nonneg (pow_pos hRate 2) hω.1
  have h₁ : (denominator n (rate j)).1 ≤ (denominator n (rate j)).2 :=
    add_le_add_right hω.2 _
  exact ⟨inv_nonneg.mpr (h₀.le.trans h₁), inv_anti₀ h₀ h₁⟩

private def boundary (n j : ℕ) : Bounds :=
  monotoneMul (sub (point 1) (decay j)) (inv (denominator n (rate j)))

private theorem boundary_eq (n j : ℕ) : boundaryTerm n j = boundary n j :=
  mul_eq (factor_valid j) (denomInv_valid n j)

private def correction (n j : ℕ) : Bounds :=
  let den := inv (denominator n (rate j))
  neg (monotoneMul (omegaSq n) (monotoneMul (boundary n j) den))

private theorem correction_eq (n j : ℕ) : correctionTerm n j = correction n j := by
  have hDen := denomInv_valid n j
  have hBoundary : Valid (boundary n j) := monotoneMul_valid (factor_valid j) hDen
  unfold correctionTerm correction
  rw [boundary_eq, mul_eq hBoundary hDen, mul_eq (omegaSq_valid n) (monotoneMul_valid hBoundary hDen)]

private def multiplier (n j : ℕ) : Bounds :=
  monotoneMul (point (2 / rate j)) (monotoneMul (omegaSq n) (inv (denominator n (rate j))))

private theorem multiplier_eq (n j : ℕ) : multiplierTermBounds n j = multiplier n j := by
  have hRate : 0 < rate j := by unfold rate; positivity
  have hPoint : Valid (point (2 / rate j)) := ⟨by change 0 ≤ 2 / rate j; positivity, le_rfl⟩
  have hω := omegaSq_valid n
  have hDen := denomInv_valid n j
  unfold multiplierTermBounds scale multiplier
  rw [mul_eq hω hDen, mul_eq hPoint (monotoneMul_valid hω hDen)]

/-- Evaluate the exact same gamma slice using the two monotone endpoints. -/
def gammaSlice (bits n start count : ℕ) : Bounds × Bounds :=
  (boundsSlice (fun j => round bits (multiplier n j)) start count,
   boundsSlice (fun j => round bits (correction n j)) start count)

theorem gammaSlice_eq (bits n start count : ℕ) :
    gammaBoundsSlice bits n start count = gammaSlice bits n start count := by
  simp only [gammaBoundsSlice, gammaSlice, multiplier_eq, correction_eq]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaMonotoneSlices
