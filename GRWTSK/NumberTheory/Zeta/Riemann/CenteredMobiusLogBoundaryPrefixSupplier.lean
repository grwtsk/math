/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryAbel
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Pointwise uniform prefix control on one dyadic interval. -/
def DyadicPrefixMangoldtBoundAt (X : ℕ) (A : ℝ) : Prop :=
  0 ≤ A ∧ ∀ m ∈ Finset.Icc X (2 * X),
    |centeredGreenDyadicPrefixMangoldtError X m| ≤ A

/-- The positive Abel coefficients, including the endpoint coefficient, have
total mass at most 1/X. -/
theorem greenBoundaryAbelCoefficientMass_le
    {X : ℕ} (hX : 1 ≤ X) :
    1 / (2 * X : ℝ) +
      ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        (1 / (m : ℝ) - 1 / (m + 1 : ℝ))
      ≤ 1 / (X : ℝ) := by
  have htel :
      (∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        (1 / (m : ℝ) - 1 / (m + 1 : ℝ))) =
        1 / (X + 1 : ℝ) - 1 / (2 * X : ℝ) := by
    rw [Finset.sum_Icc_sub_sum_Icc]
    field_simp
    ring
  rw [htel]
  have hXp : (0 : ℝ) < X := by exact_mod_cast hX
  have : (X : ℝ) ≤ X + 1 := by norm_num
  exact one_div_le_one_div_of_le hXp this

theorem abs_mass0_le_of_prefix_bound
    {X : ℕ} (hX : 1 ≤ X) {A : ℝ}
    (hA : DyadicPrefixMangoldtBoundAt X A) :
    |mass0 X| ≤ (1 + A) / (X : ℝ) := by
  rw [harmonicMangoldtDiscrepancy_abel hX]
  have hbase := abs_centeredGreenBaselineHarmonicResidual_le hX
  have hend : |centeredGreenDyadicPrefixMangoldtError X (2 * X)| ≤ A :=
    hA.2 _ (by simp; omega)
  have hweights : ∀ m ∈ Finset.Icc (X + 1) (2 * X - 1),
      0 ≤ 1 / (m : ℝ) - 1 / (m + 1 : ℝ) := by
    intro m hm
    have hmpos : (0 : ℝ) < m := by
      have := (Finset.mem_Icc.mp hm).1
      positivity
    exact sub_nonneg.mpr
      (one_div_le_one_div_of_le hmpos (by norm_num))
  calc
    _ ≤ |centeredGreenBaselineHarmonicResidual X| +
        |centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ)| +
        |∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
          centeredGreenDyadicPrefixMangoldtError X m *
            (1 / (m : ℝ) - 1 / (m + 1 : ℝ))| := by
      exact abs_add_three _ _ _
    _ ≤ 1 / (X : ℝ) +
        A / (2 * X : ℝ) +
        ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
          A * (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
      gcongr
      · exact hbase
      · rw [abs_div, abs_of_nonneg (by positivity : 0 ≤ (2 * X : ℝ))]
        exact div_le_div_of_nonneg_right hend (by positivity)
      · exact abs_sum_le_sum_abs _ _
      · intro m hm
        rw [abs_mul, abs_of_nonneg (hweights m hm)]
        exact mul_le_mul_of_nonneg_right
          (hA.2 m (by
            have hi := Finset.mem_Icc.mp hm
            exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩))
          (hweights m hm)
    _ ≤ (1 + A) / (X : ℝ) := by
      have hmass := greenBoundaryAbelCoefficientMass_le hX
      rw [Finset.mul_sum]
      have hA0 := hA.1
      have hXp : (0 : ℝ) < X := by exact_mod_cast hX
      nlinarith

/-- Uniform prefix square-root bound supplies the harmonic boundary square
rate, with a harmless deterministic X^-2 term absorbed. -/
theorem allDyadicMass0Bound_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicBoundarySquareBound dyadicScale mass0 := by
  intro η hη
  obtain ⟨C, hC, j0, hb⟩ := hprefix η hη
  refine ⟨2 + 2 * C, by positivity, j0, ?_⟩
  intro j hj
  let X := dyadicScale j
  have hX : 2 ≤ X := historicalDyadicScale_ge_two j
  let A : ℝ := Real.sqrt (C * Real.rpow (X : ℝ) (1 + η))
  have hA0 : 0 ≤ A := Real.sqrt_nonneg _
  have hAt : DyadicPrefixMangoldtBoundAt X A := by
    refine ⟨hA0, ?_⟩
    intro m hm
    have hsquare := hb j hj m hm
    have hinside : 0 ≤ C * Real.rpow (X : ℝ) (1 + η) := by positivity
    exact (sq_le_sq₀ (abs_nonneg _) hA0).mp (by
      rw [sq_abs, Real.sq_sqrt hinside]
      exact hsquare)
  have hm := abs_mass0_le_of_prefix_bound (by omega) hAt
  have hA2 : A^2 = C * Real.rpow (X : ℝ) (1 + η) :=
    Real.sq_sqrt (by positivity)
  have hXpos : (0 : ℝ) < X := by exact_mod_cast (by omega : 0 < X)
  have hscale :
      (2 + 2 * A^2) / (X : ℝ)^2 =
        2 / (X : ℝ)^2 +
        2 * C * Real.rpow (X : ℝ) (-1 + η) := by
    rw [hA2]
    rw [← Real.rpow_two]
    rw [← Real.rpow_sub_natCast hXpos.le]
    ring_nf
  calc
    mass0 X ^ 2 = |mass0 X|^2 := by rw [sq_abs]
    _ ≤ ((1 + A) / (X : ℝ))^2 := by nlinarith [abs_nonneg (mass0 X)]
    _ ≤ (2 + 2 * A^2) / (X : ℝ)^2 := by
      field_simp
      nlinarith [sq_nonneg (A - 1)]
    _ = 2 / (X : ℝ)^2 +
        2 * C * Real.rpow (X : ℝ) (-1 + η) := hscale
    _ ≤ (2 + 2 * C) * Real.rpow (X : ℝ) (-1 + η) := by
      have hdom : 1 / (X : ℝ)^2 ≤ Real.rpow (X : ℝ) (-1 + η) := by
        have hXone : (1 : ℝ) ≤ X := by exact_mod_cast (by omega : 1 ≤ X)
        calc
          1 / (X : ℝ)^2 ≤ 1 / (X : ℝ) := one_div_sq_le_one_div hXone
          _ = Real.rpow (X : ℝ) (-1) := by
            rw [Real.rpow_neg_one]
          _ ≤ Real.rpow (X : ℝ) (-1 + η) :=
            Real.rpow_le_rpow_of_exponent_le hXone (by linarith)
      nlinarith [Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ X) (-1 + η)]

end GRWTSK.RiemannHypothesis
