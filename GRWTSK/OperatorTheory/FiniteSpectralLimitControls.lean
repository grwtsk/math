/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Topology.UniformSpace.LocallyUniformConvergence

/-!
# Finite spectral limit controls

The compressions in `PrimeKnotAlexanderWeightedCompressions` give a source-labelled
finite family. The examples here test implications about such a family which would
require an independent analytic estimate or determinant normalization.

On `ℓ²(ℕ, ℂ)`, let `Pₙ` be the orthogonal projection onto the `n`th coordinate.
For `z ≠ 0, 1`, the inverse of `Pₙ - z` acts by `(1-z)⁻¹` on that coordinate
and by `(-z)⁻¹` on its orthogonal complement. Each fixed vector's `n`th coordinate
tends to zero, yielding strong resolvent convergence to the zero operator. The
`n`th unit vector witnesses a uniform positive lower bound on the resolvent
difference. The eigenvalue `1` can persist in every finite-rank approximation and
disappear in the strong limit.

There is a separate obstruction for norm-resolvent limits of zero-padded
sections. A full-space inverse acts by the constant `(-z)⁻¹` on omitted
coordinates. In the weighted Alexander construction, if a limiting resolvent
sends unit vectors supported on omitted coordinates to zero, those vectors
preclude norm convergence of the full-space inverses. This tests zero-padded
operators. Inverting on the finite space and then extending the inverse by
zero gives a different family on the full space.

The zero sections on `ℂⁿ` extend to the identical zero operator on `ℓ²` and
therefore have identical full-space resolvents. Their unnormalized characteristic
determinants are `zⁿ`. On a closed disk of radius `r < 1`, their sup norm is at
most `rⁿ`, although their values at `2` are unbounded.
-/

set_option autoImplicit false

noncomputable section

open Filter Topology

namespace GRWTSK.Analysis.OperatorTheory.SpectralLimits

/-- The common ambient Hilbert space for the resolvent control. -/
abbrev SequenceHilbert := lp (fun _ : ℕ => ℂ) 2

/-- A rank-one coordinate compression, extended by zero to the ambient space. -/
def coordinateProjection (n : ℕ) : SequenceHilbert →L[ℂ] SequenceHilbert :=
  (lp.singleContinuousLinearMap ℂ (fun _ : ℕ => ℂ) 2 n).comp
    (lp.evalCLM ℂ (fun _ : ℕ => ℂ) 2 n)

@[simp] theorem coordinateProjection_apply (n : ℕ) (x : SequenceHilbert) :
    coordinateProjection n x = lp.single 2 n (x n) := rfl

theorem coordinateProjection_selfAdjoint (n : ℕ) : IsSelfAdjoint (coordinateProjection n) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
  intro x y
  change inner ℂ (coordinateProjection n x) y = inner ℂ x (coordinateProjection n y)
  rw [coordinateProjection_apply, coordinateProjection_apply, lp.inner_single_left,
    lp.inner_single_right]

theorem coordinateProjection_hasUnitEigenvector (n : ℕ) :
    ∃ x : SequenceHilbert, ‖x‖ = 1 ∧ coordinateProjection n x = x := by
  refine ⟨lp.single 2 n 1, ?_, ?_⟩
  · rw [lp.norm_single (by norm_num), norm_one]
  · rw [coordinateProjection_apply, lp.single_apply_self]

/-- Inverse candidate for `Pₙ - z I`, using both eigenspaces of `Pₙ`. -/
def coordinateResolvent (n : ℕ) (z : ℂ) : SequenceHilbert →L[ℂ] SequenceHilbert :=
  (-z)⁻¹ • 1 + ((1 - z)⁻¹ - (-z)⁻¹) • coordinateProjection n

private theorem coordinateResolvent_apply (n : ℕ) (z : ℂ) (x : SequenceHilbert) (j : ℕ) :
    coordinateResolvent n z x j = (if j = n then (1 - z)⁻¹ else (-z)⁻¹) * x j := by
  simp only [coordinateResolvent, add_apply, smul_apply,
    one_apply_eq_self, lp.coeFn_add, Pi.add_apply, lp.coeFn_smul, Pi.smul_apply,
    smul_eq_mul, coordinateProjection_apply, lp.single_apply, Pi.single_apply]
  split_ifs with h
  · subst j
    ring
  · ring

private theorem coordinateShift_apply (n : ℕ) (z : ℂ) (x : SequenceHilbert) (j : ℕ) :
    ((coordinateProjection n - z • 1) x) j = (if j = n then 1 - z else -z) * x j := by
  simp only [sub_apply, smul_apply,
    one_apply_eq_self, lp.coeFn_sub, Pi.sub_apply, lp.coeFn_smul, Pi.smul_apply,
    smul_eq_mul, coordinateProjection_apply, lp.single_apply, Pi.single_apply]
  split_ifs with h
  · subst j
    ring
  · ring

/-- Both inverse identities hold for every parameter outside `{0, 1}`. -/
theorem coordinateResolvent_inverse (n : ℕ) {z : ℂ} (hz₀ : z ≠ 0) (hz₁ : z ≠ 1) :
    (coordinateProjection n - z • 1) * coordinateResolvent n z = 1 ∧
    coordinateResolvent n z * (coordinateProjection n - z • 1) = 1 := by
  have h₀ : -z ≠ 0 := neg_ne_zero.mpr hz₀
  have h₁ : 1 - z ≠ 0 := sub_ne_zero.mpr hz₁.symm
  constructor
  · ext x j
    rw [mul_apply_eq_comp, coordinateShift_apply, coordinateResolvent_apply, one_apply_eq_self]
    split_ifs <;> field_simp
  · ext x j
    rw [mul_apply_eq_comp, coordinateResolvent_apply, coordinateShift_apply, one_apply_eq_self]
    split_ifs <;> field_simp

/-- The limiting family is the two-sided inverse of the shifted zero operator. -/
theorem zeroOperatorResolvent_inverse {z : ℂ} (hz : z ≠ 0) :
    ((-z) • 1 : SequenceHilbert →L[ℂ] SequenceHilbert) * ((-z)⁻¹ • 1) = 1 ∧
    ((-z)⁻¹ • 1 : SequenceHilbert →L[ℂ] SequenceHilbert) * ((-z) • 1) = 1 := by
  have hneg : -z ≠ 0 := neg_ne_zero.mpr hz
  constructor <;> ext x j <;>
    simp only [mul_apply_eq_comp, smul_apply, one_apply_eq_self, lp.coeFn_smul,
      Pi.smul_apply, smul_eq_mul] <;> field_simp

theorem coordinateProjection_tendsto_apply (x : SequenceHilbert) :
    Tendsto (fun n => coordinateProjection n x) atTop (𝓝 0) := by
  have hsum := (lp.memℓp x).summable (by norm_num : 0 < (2 : ENNReal).toReal)
  have hsq : Tendsto (fun n => ‖x n‖ ^ (2 : ℕ)) atTop (𝓝 0) := by
    rw [← Nat.cofinite_eq_atTop]
    simpa [Real.rpow_natCast] using hsum.tendsto_cofinite_zero
  have hnorm : Tendsto (fun n => ‖x n‖) atTop (𝓝 0) := by
    simpa using hsq.sqrt
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  simpa only [coordinateProjection_apply, lp.norm_single (by norm_num : (0 : ENNReal) < 2)]
    using hnorm

/-- Strong convergence to the inverse of `0 - z I`. -/
theorem coordinateResolvent_tendsto_apply (z : ℂ) (x : SequenceHilbert) :
    Tendsto (fun n => coordinateResolvent n z x) atTop (𝓝 ((-z)⁻¹ • x)) := by
  simpa [coordinateResolvent] using
    tendsto_const_nhds.add ((coordinateProjection_tendsto_apply x).const_smul
      ((1 - z)⁻¹ - (-z)⁻¹))

theorem coordinateResolvent_distance_lower_bound (n : ℕ) (z : ℂ) :
    ‖(1 - z)⁻¹ - (-z)⁻¹‖ ≤
      ‖coordinateResolvent n z - ((-z)⁻¹ • 1 : SequenceHilbert →L[ℂ] SequenceHilbert)‖ := by
  obtain ⟨x, hnorm, hx⟩ := coordinateProjection_hasUnitEigenvector n
  have h := ContinuousLinearMap.le_opNorm
    (coordinateResolvent n z - (-z)⁻¹ • 1) x
  simpa [coordinateResolvent, hx, hnorm, norm_smul] using h

/-- For every common resolvent parameter, the resolvents fail to converge in operator norm. -/
theorem coordinateResolvent_not_tendsto_norm (z : ℂ) :
    ¬ Tendsto (fun n => coordinateResolvent n z) atTop
      (𝓝 ((-z)⁻¹ • 1 : SequenceHilbert →L[ℂ] SequenceHilbert)) := by
  intro h
  have hdist : Tendsto (fun n => ‖coordinateResolvent n z - (-z)⁻¹ • 1‖) atTop (𝓝 0) := by
    simpa only [sub_self, norm_zero] using (h.sub (tendsto_const_nhds
      (x := ((-z)⁻¹ • 1 : SequenceHilbert →L[ℂ] SequenceHilbert)))).norm
  have hle : ‖(1 - z)⁻¹ - (-z)⁻¹‖ ≤ 0 :=
    le_of_tendsto_of_tendsto' tendsto_const_nhds hdist
      (fun n => coordinateResolvent_distance_lower_bound n z)
  have heq := inv_injective (sub_eq_zero.mp (norm_le_zero_iff.mp hle))
  exact one_ne_zero (by linear_combination heq)

/-- If the ambient inverse retains a fixed nonzero scalar on omitted unit vectors
whose images under a candidate limit tend to zero, operator-norm convergence fails. -/
theorem not_tendsto_norm_of_omitted_unit_vectors
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (R : ℕ → E →L[ℂ] E) (T : E →L[ℂ] E) (x : ℕ → E) {c : ℂ}
    (hc : c ≠ 0) (hx : ∀ n, ‖x n‖ = 1) (hR : ∀ n, R n (x n) = c • x n)
    (hT : Tendsto (fun n => T (x n)) atTop (𝓝 0)) :
    ¬ Tendsto R atTop (𝓝 T) := by
  intro h
  have hdist : Tendsto (fun n => ‖R n - T‖) atTop (𝓝 0) := by
    simpa only [sub_self, norm_zero] using (h.sub (tendsto_const_nhds (x := T))).norm
  have hleft : Tendsto (fun n => ‖c‖ - ‖T (x n)‖) atTop (𝓝 ‖c‖) := by
    simpa only [sub_zero, norm_zero] using tendsto_const_nhds.sub hT.norm
  have hle : ‖c‖ ≤ 0 := le_of_tendsto_of_tendsto' hleft hdist fun n => by
    calc
      ‖c‖ - ‖T (x n)‖ = ‖R n (x n)‖ - ‖T (x n)‖ := by rw [hR, norm_smul, hx, mul_one]
      _ ≤ ‖(R n - T) (x n)‖ := norm_sub_norm_le _ _
      _ ≤ ‖R n - T‖ := by simpa only [hx, mul_one] using (R n - T).le_opNorm (x n)
  exact (not_le_of_gt (norm_pos_iff.mpr hc)) hle

/-- Raw characteristic determinant of the `n`-dimensional zero section. -/
def zeroSectionDeterminant (n : ℕ) (z : ℂ) : ℂ :=
  ((0 : Matrix (Fin n) (Fin n) ℂ).charpoly).eval z

@[simp] theorem zeroSectionDeterminant_eq (n : ℕ) (z : ℂ) :
    zeroSectionDeterminant n z = z ^ n := by
  simp [zeroSectionDeterminant, Matrix.charpoly_zero]

/-- Raw determinants can converge uniformly to the zero function on a disk. -/
theorem zeroSectionDeterminant_tendstoUniformlyOn {r : ℝ} (hr₀ : 0 ≤ r) (hr₁ : r < 1) :
    TendstoUniformlyOn zeroSectionDeterminant (fun _ => 0) atTop (Metric.closedBall 0 r) := by
  apply Metric.tendstoUniformlyOn_iff.mpr
  intro ε hε
  have hpow := tendsto_pow_atTop_nhds_zero_of_lt_one hr₀ hr₁
  filter_upwards [(Metric.tendsto_nhds.mp hpow) ε hε] with n hn z hz
  have hz' : ‖z‖ ≤ r := by simpa [Metric.mem_closedBall, dist_zero_right] using hz
  have hn' : r ^ n < ε := by simpa [Real.dist_eq, abs_of_nonneg hr₀] using hn
  simpa only [dist_zero_left, dist_zero_right, zeroSectionDeterminant_eq, norm_pow] using
    (pow_le_pow_left₀ (norm_nonneg z) hz' n).trans_lt hn'

/-- Raw determinants can fail even pointwise convergence outside the disk. -/
theorem zeroSectionDeterminant_not_tendsto_at_two (a : ℂ) :
    ¬ Tendsto (fun n => zeroSectionDeterminant n 2) atTop (𝓝 a) := by
  intro h
  have hnorm : Tendsto (fun n : ℕ => (2 : ℝ) ^ n) atTop (𝓝 ‖a‖) := by
    simpa using h.norm
  exact not_tendsto_nhds_of_tendsto_atTop
    (tendsto_pow_atTop_atTop_of_one_lt (by norm_num : (1 : ℝ) < 2)) _ hnorm

/-- There is no locally uniform limit of the raw determinants on the complex plane. -/
theorem zeroSectionDeterminant_not_tendstoLocallyUniformly (f : ℂ → ℂ) :
    ¬ TendstoLocallyUniformlyOn zeroSectionDeterminant f atTop Set.univ := by
  intro h
  exact zeroSectionDeterminant_not_tendsto_at_two (f 2) (h.tendsto_at (Set.mem_univ 2))

end GRWTSK.Analysis.OperatorTheory.SpectralLimits
