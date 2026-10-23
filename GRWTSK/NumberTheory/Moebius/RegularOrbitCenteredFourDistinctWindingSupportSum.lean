/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #917. Parent: draft PR #914 at 29b7df06090c483645b23849f90c32648cd394f0.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctLagSupport

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Arithmetic-series numerator R(R+1). -/
def windingTriangularNumerator (b d : ℕ) : ℕ :=
  centeredWindingRadius b d * (centeredWindingRadius b d + 1)

/-- Exact integer identity avoiding division by two: twice the sum of the
positive winding indices is R(R+1). -/
theorem two_mul_sum_Icc_one_centeredWindingRadius
    (b d : ℕ) :
    2 * (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z) =
      windingTriangularNumerator b d := by
  let R := centeredWindingRadius b d
  have hset : insert 0 (Finset.Icc 1 R) = Finset.range (R + 1) := by
    ext z
    simp
    omega
  have hsum : (∑ z ∈ Finset.Icc 1 R, z) = ∑ z ∈ Finset.range (R + 1), z := by
    rw [← hset, Finset.sum_insert (by simp)]
    simp
  unfold windingTriangularNumerator
  change 2 * (∑ z ∈ Finset.Icc 1 R, z) = R * (R + 1)
  rw [hsum]
  simpa only [Nat.add_sub_cancel, mul_comm] using Finset.sum_range_id_mul_two (R + 1)

/-- Twice the lag-sensitive winding support ceiling, in exact polynomial form.
The factor two avoids natural-number division. -/
theorem two_mul_centeredFourDistinctWindingRawSupportCeilingSum
    (b d : ℕ) :
    2 * centeredFourDistinctWindingRawSupportCeilingSum b d =
      (2 * centeredWindingRadius b d * (b + 1) -
        (d * d) * windingTriangularNumerator b d) *
          ((b + 1) * (b + 1)) := by
  have hbound : ∀ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      z * (d * d) ≤ b + 1 := by
    intro z hz
    have hzR := (Finset.mem_Icc.mp hz).2
    have hR : centeredWindingRadius b d * (d * d) ≤ b := Nat.div_mul_le_self _ _
    exact (Nat.mul_le_mul_right _ hzR).trans (hR.trans (Nat.le_succ _))
  have hsum :
      (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), ((b + 1) - z * (d * d))) =
      centeredWindingRadius b d * (b + 1) -
        (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z) * (d * d) := by
    rw [Finset.sum_tsub_distrib _ hbound]
    simp [← Finset.sum_mul]
  have hprod :
      2 * ((∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z) * (d * d)) =
      (d * d) * windingTriangularNumerator b d := by
    calc
      _ = (2 * (∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d), z)) * (d * d) := by ring
      _ = windingTriangularNumerator b d * (d * d) := by
        rw [two_mul_sum_Icc_one_centeredWindingRadius]
      _ = _ := mul_comm _ _
  unfold centeredFourDistinctWindingRawSupportCeilingSum centeredFourDistinctWindingRawSupportCeiling
  rw [← Finset.sum_mul, hsum, ← mul_assoc, Nat.mul_sub_left_distrib, hprod]
  simp only [mul_assoc]

/-- Simple d-sensitive upper bound before any cancellation:
the winding sum costs at most R*(b+1)^3. -/
theorem centeredFourDistinctWindingRawSupportCeilingSum_le_radius_mul_cube
    (b d : ℕ) :
    centeredFourDistinctWindingRawSupportCeilingSum b d ≤
      centeredWindingRadius b d *
        ((b + 1) * ((b + 1) * (b + 1))) :=
  centeredFourDistinctWindingRawSupportCeilingSum_le b d

/-- Using R=floor(b/d^2), the raw winding support is bounded by
b*(b+1)^3/d^2 in a division-free natural form. -/
theorem square_mul_windingRawSupport_le_b_mul_cube
    (b d : ℕ) :
    (d * d) * centeredFourDistinctWindingRawSupportCeilingSum b d ≤
      b * ((b + 1) * ((b + 1) * (b + 1))) := by
  calc
    (d * d) * centeredFourDistinctWindingRawSupportCeilingSum b d ≤
      (d * d) * (centeredWindingRadius b d *
        ((b + 1) * ((b + 1) * (b + 1)))) := by
          exact Nat.mul_le_mul_left _ 
            (centeredFourDistinctWindingRawSupportCeilingSum_le b d)
    _ = ((d * d) * centeredWindingRadius b d) *
        ((b + 1) * ((b + 1) * (b + 1))) := by ring
    _ ≤ b * ((b + 1) * ((b + 1) * (b + 1))) := by
          exact Nat.mul_le_mul_right _
            (Nat.mul_div_le b (d * d))

/-- Real-valued form of the deterministic d^{-2} support scaling. -/
theorem windingRawSupport_cast_le_reciprocalSquare
    (b d : ℕ) [NeZero d] :
    (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) ≤
      (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) *
        (((b + 1 : ℕ) : ℝ) ^ 3) := by
  have h := square_mul_windingRawSupport_le_b_mul_cube b d
  have hdR : (d : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne d)
  have hd : (0 : ℝ) < (d : ℝ) ^ 2 := sq_pos_of_ne_zero hdR
  have hcast :
      (d : ℝ)^2 *
          (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) ≤
        (b : ℝ) * (((b + 1 : ℕ) : ℝ) ^ 3) := by
    have hnat : d^2 * centeredFourDistinctWindingRawSupportCeilingSum b d ≤
        b * (b + 1)^3 := by
      simpa only [pow_succ, pow_zero, mul_one, one_mul, mul_assoc] using h
    exact_mod_cast hnat
  calc
    (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ) =
      ((d : ℝ) ^ 2)⁻¹ *
        (((d : ℝ) ^ 2) *
          (centeredFourDistinctWindingRawSupportCeilingSum b d : ℝ)) := by
            field_simp [hdR]
    _ ≤ ((d : ℝ) ^ 2)⁻¹ *
        ((b : ℝ) * (((b + 1 : ℕ) : ℝ) ^ 3)) := by
          exact mul_le_mul_of_nonneg_left hcast (by positivity)
    _ = (b : ℝ) * (((d : ℝ) ^ 2)⁻¹) *
        (((b + 1 : ℕ) : ℝ) ^ 3) := by ring

structure RegularCenteredFourDistinctWindingSupportSumSourceData where
  theoremStatement : Prop
  arithmeticSeriesMatched : Prop
  exactPolynomialFormMatched : Prop
  radiusUpperBoundMatched : Prop
  divisionFreeSquareModulusBoundMatched : Prop
  reciprocalSquareScalingMatched : Prop
  analyticCancellationNotAsserted : Prop

def RegularCenteredFourDistinctWindingSupportSumSource
    (d : RegularCenteredFourDistinctWindingSupportSumSourceData) : Prop :=
  d.theoremStatement ∧
  d.arithmeticSeriesMatched ∧
  d.exactPolynomialFormMatched ∧
  d.radiusUpperBoundMatched ∧
  d.divisionFreeSquareModulusBoundMatched ∧
  d.reciprocalSquareScalingMatched ∧
  d.analyticCancellationNotAsserted

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
