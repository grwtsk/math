/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds

/-!
# Signed radius-two core on sine modes 65 and 66

The existing rational observations enclose the physical matrix entries,
including the complete signed prime sum and the gamma series remainder.
On the two-dimensional trial space the original core has floor `2` at
shift `-1/2`. After subtracting twice the mass, the diagonal lower bounds
are `8/35` and `14/5`. The absolute mixed coefficient is at most `8/5`,
so completing the square with `(2a ± 7b)^2` bounds the energy from below.
This supplies the first two modes above cutoff 64 for the radius-two
high-floor problem. The rest of the complement and its mixed terms still
need to be controlled in the full high-floor claim.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66

open OddBorderedExpansion OddBorderedFiniteReturn OddHighComplement OddSineForm
open OddResidualSourceComparison OddSchurAccounting RadiusTwoCandidateEntries
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.LinearAlgebra.SchurObserver

private abbrev mode65 : Fin 66 := ⟨64, by decide⟩
private abbrev mode66 : Fin 66 := ⟨65, by decide⟩

private theorem sum_modes {f : Fin 66 → ℝ} (hf : ∀ i : Fin 66, i.val < 64 → f i = 0) :
    (∑ i, f i) = f mode65 + f mode66 := by
  calc
    (∑ i, f i) = ∑ i ∈ ({mode65, mode66} : Finset (Fin 66)), f i := by
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro i _ hi
      apply hf i
      have h65 : i.val ≠ 64 := fun h => hi (by simp [(show i = mode65 from Fin.ext h)])
      have h66 : i.val ≠ 65 := fun h => hi (by simp [(show i = mode66 from Fin.ext h)])
      have hi' := i.isLt
      omega
    _ = f mode65 + f mode66 := by simp [show mode65 ≠ mode66 by decide]

private abbrev bounds (m n : ℕ) : Bounds :=
  physicalBoundsFrom 24 (RadiusTwoCandidateBounds.tables 24 1024) m n

private theorem bounds_sound {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hm' : m ≤ 2048) (hn' : n ≤ 512) :
    Encloses (bounds m n)
      (literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0)) :=
  physicalBoundsFrom_sound 24 (RadiusTwoCandidateBounds.tables_sound 24 (by decide : 1024 ≤ 1024))
    hm hn hm' hn'

private abbrev entry (m n : ℕ) : ℝ :=
  literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0)

private theorem core_eq (x : Fin 66 → ℝ) (hx : ∀ i : Fin 66, i.val < 64 → x i = 0) :
    shiftedOddCoreEnergy 2 (-1 / 2) (finiteSine 2 x) =
      entry 65 65 * x mode65 ^ 2 + entry 66 66 * x mode66 ^ 2 +
        (entry 65 66 + entry 66 65) * (x mode65 * x mode66) := by
  have h := shiftedOddBorderedEnergy_finiteSine_eq_quadratic 2 (by norm_num) (-1 / 2) x 0
  simp only [shiftedOddBorderedEnergy, mul_zero, zero_mul, add_zero,
    zero_pow (by decide : 2 ≠ 0), zero_div] at h
  rw [h]
  simp only [quadratic, dotProduct, Matrix.mulVec, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr,
    zero_mul, mul_zero, Finset.sum_const_zero, add_zero]
  have hrow (i : Fin 66) :
      (∑ j : Fin 66, shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl j) * x j) =
        shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl mode65) * x mode65 +
        shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl mode66) * x mode66 :=
    sum_modes fun j hj => by rw [hx j hj, mul_zero]
  simp_rw [hrow]
  rw [sum_modes (fun i hi => by rw [hx i hi, zero_mul])]
  simp only [shiftedBordered_physicalEntry 2 (by norm_num),
    show mode65.val + 1 = 65 by rfl, show mode66.val + 1 = 66 by rfl,
    ite_eq_right (by decide : mode65 ≠ mode66), ite_eq_right (by decide : mode66 ≠ mode65)]
  simp only [entry, ite_eq_right (by decide : 65 ≠ 66), ite_eq_right (by decide : 66 ≠ 65)]
  ring

set_option maxRecDepth 32768 in
set_option maxHeartbeats 0 in
private theorem rational_bounds :
    78 / 35 ≤ (bounds 65 65).1 ∧ 24 / 5 ≤ (bounds 66 66).1 ∧
      -(4 / 5) ≤ (bounds 65 66).1 ∧ (bounds 65 66).2 ≤ 4 / 5 ∧
      -(4 / 5) ≤ (bounds 66 65).1 ∧ (bounds 66 65).2 ≤ 4 / 5 := by
  decide +kernel

/-- The literal shifted core dominates twice the mass on the real span of
physical sine modes 65 and 66. -/
theorem two_mul_mass_le_shiftedOddCoreEnergy (x : Fin 66 → ℝ)
    (hx : ∀ i : Fin 66, i.val < 64 → x i = 0) :
    2 * (∫ t : ℝ, ‖finiteSine 2 x t‖ ^ 2) ≤ shiftedOddCoreEnergy 2 (-1 / 2) (finiteSine 2 x) := by
  obtain ⟨h65, h66, hlo₁, hhi₁, hlo₂, hhi₂⟩ := rational_bounds
  have hB65 := bounds_sound (m := 65) (n := 65) (by decide) (by decide) (by decide) (by decide)
  have hB66 := bounds_sound (m := 66) (n := 66) (by decide) (by decide) (by decide) (by decide)
  have hB65_66 := bounds_sound (m := 65) (n := 66) (by decide) (by decide) (by decide) (by decide)
  have hB66_65 := bounds_sound (m := 66) (n := 65) (by decide) (by decide) (by decide) (by decide)
  have hdiag₁ := ((Rat.cast_le (K := ℝ)).mpr h65).trans hB65.1
  have hdiag₂ := ((Rat.cast_le (K := ℝ)).mpr h66).trans hB66.1
  have hcross₁lo := ((Rat.cast_le (K := ℝ)).mpr hlo₁).trans hB65_66.1
  have hcross₂lo := ((Rat.cast_le (K := ℝ)).mpr hlo₂).trans hB66_65.1
  have hcross₁hi := hB65_66.2.trans ((Rat.cast_le (K := ℝ)).mpr hhi₁)
  have hcross₂hi := hB66_65.2.trans ((Rat.cast_le (K := ℝ)).mpr hhi₂)
  push_cast at hdiag₁ hdiag₂ hcross₁lo hcross₂lo hcross₁hi hcross₂hi
  have hlo : -(8 / 5 : ℝ) ≤ entry 65 66 + entry 66 65 := calc
    _ = -(4 / 5 : ℝ) + -(4 / 5 : ℝ) := by norm_num
    _ ≤ _ := add_le_add hcross₁lo hcross₂lo
  have hhi : entry 65 66 + entry 66 65 ≤ 8 / 5 := calc
    _ ≤ (4 / 5 : ℝ) + (4 / 5 : ℝ) := add_le_add hcross₁hi hcross₂hi
    _ = _ := by norm_num
  simp only [Real.norm_eq_abs, sq_abs]
  rw [integral_finiteSine_sq 2 (by norm_num), sum_modes (fun i hi => by simp [hx i hi]),
    core_eq x hx]
  let a := x mode65
  let b := x mode66
  change 2 * (a ^ 2 + b ^ 2) ≤
    entry 65 65 * a ^ 2 + entry 66 66 * b ^ 2 + (entry 65 66 + entry 66 65) * (a * b)
  have ha := mul_le_mul_of_nonneg_right hdiag₁ (sq_nonneg a)
  have hb := mul_le_mul_of_nonneg_right hdiag₂ (sq_nonneg b)
  rcases le_total 0 (a * b) with hab | hab
  · calc
      _ ≤ (78 / 35 : ℝ) * a ^ 2 + (24 / 5 : ℝ) * b ^ 2 + (-(8 / 5 : ℝ)) * (a * b) := by
        nlinarith only [sq_nonneg (2 * a - 7 * b)]
      _ ≤ _ := add_le_add (add_le_add ha hb) (mul_le_mul_of_nonneg_right hlo hab)
  · calc
      _ ≤ (78 / 35 : ℝ) * a ^ 2 + (24 / 5 : ℝ) * b ^ 2 + (8 / 5 : ℝ) * (a * b) := by
        nlinarith only [sq_nonneg (2 * a + 7 * b)]
      _ ≤ _ := add_le_add (add_le_add ha hb) (mul_le_mul_of_nonpos_right hhi hab)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66
