/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel
import GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation

/-!
# The actual arithmetic coefficient array as a finite joint law

Positive total mass normalizes the ACTUAL three-row coefficient array. Row
and column marginals are derived, not postulated. The existing finite covariance
inequality is then instantiated with the cofactor signs and original Mobius
input. Both the marginal product and the total-mass amplification remain.
Zero mass is a separate zero operator case, not a probability distribution.
No independence, Pinsker theorem, entropy decrement, or small error is proved.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseLaw

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel

def cofactorIndices : Finset ℕ := {1, 2, 3}
def cofactorSign (v : ℕ) : ℝ := if v = 1 then 1 else -1

def totalMass (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  ∑ v ∈ cofactorIndices, ∑ a ∈ sourceIndices j, coefficient width j v a

def jointWeight (width : ℕ → ℕ) (j v a : ℕ) : ℝ :=
  coefficient width j v a / totalMass width j

def rowMarginal (width : ℕ → ℕ) (j v : ℕ) : ℝ :=
  ∑ a ∈ sourceIndices j, jointWeight width j v a

def columnMarginal (width : ℕ → ℕ) (j a : ℕ) : ℝ :=
  ∑ v ∈ cofactorIndices, jointWeight width j v a

def independentReadout (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) : ℝ :=
  totalMass width j *
    ((∑ v ∈ cofactorIndices, rowMarginal width j v * cofactorSign v) *
      ∑ a ∈ sourceIndices j, columnMarginal width j a * f a)

def dependenceCost (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  totalMass width j * jointL1 cofactorIndices (sourceIndices j)
    (jointWeight width j) (rowMarginal width j) (columnMarginal width j)

theorem cofactorSign_abs (v : ℕ) : |cofactorSign v| = 1 := by
  unfold cofactorSign
  split_ifs <;> norm_num

theorem signedReadout_eq_sign_sum (b : ℕ → ℝ) :
    signedReadout b = ∑ v ∈ cofactorIndices, cofactorSign v * b v := by
  norm_num [cofactorIndices, cofactorSign, signedReadout]
  <;> ring

theorem totalMass_nonneg (width : ℕ → ℕ) (j : ℕ) : 0 ≤ totalMass width j :=
  Finset.sum_nonneg (fun v _ => Finset.sum_nonneg (fun a _ => coefficient_nonneg width j v a))

theorem jointWeight_nonneg (width : ℕ → ℕ) (j v a : ℕ) :
    0 ≤ jointWeight width j v a :=
  div_nonneg (coefficient_nonneg width j v a) (totalMass_nonneg width j)

/-- This normalization is claimed only for positive actual mass. -/
theorem jointWeight_total_one (width : ℕ → ℕ) (j : ℕ)
    (hM : 0 < totalMass width j) :
    (∑ v ∈ cofactorIndices, ∑ a ∈ sourceIndices j, jointWeight width j v a) = 1 := by
  unfold jointWeight
  simp_rw [← Finset.sum_div]
  exact div_self (ne_of_gt hM)

theorem rowMarginal_total_one (width : ℕ → ℕ) (j : ℕ)
    (hM : 0 < totalMass width j) :
    (∑ v ∈ cofactorIndices, rowMarginal width j v) = 1 :=
  jointWeight_total_one width j hM

theorem columnMarginal_total_one (width : ℕ → ℕ) (j : ℕ)
    (hM : 0 < totalMass width j) :
    (∑ a ∈ sourceIndices j, columnMarginal width j a) = 1 := by
  unfold columnMarginal
  rw [Finset.sum_comm]
  exact jointWeight_total_one width j hM

/-- Exact source readout, with its actual mass rather than a unit-normalized surrogate. -/
theorem readout_eq_mass_pairing (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hM : 0 < totalMass width j) :
    signedReadout (responseProfile width j f) = totalMass width j *
      ∑ v ∈ cofactorIndices, ∑ a ∈ sourceIndices j,
        jointWeight width j v a * (cofactorSign v * f a) := by
  rw [signedReadout_eq_sign_sum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro v _
  rw [Finset.mul_sum]
  change cofactorSign v * cofactorResponse width j v f = _
  rw [response_eq_coefficients, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  unfold jointWeight
  field_simp [ne_of_gt hM]
  <;> ring

/-- Empty arithmetic incidence has zero readout, without interpreting 0/0 as a law. -/
theorem readout_zero_of_mass_zero (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hM : totalMass width j = 0) : signedReadout (responseProfile width j f) = 0 := by
  have hrow : ∀ v ∈ cofactorIndices,
      (∑ a ∈ sourceIndices j, coefficient width j v a) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun v _ => Finset.sum_nonneg (fun a _ => coefficient_nonneg width j v a))).mp hM
  rw [signedReadout_eq_sign_sum]
  apply Finset.sum_eq_zero
  intro v hv
  have hentry : ∀ a ∈ sourceIndices j, coefficient width j v a = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg (fun a _ => coefficient_nonneg width j v a)).mp (hrow v hv)
  change cofactorSign v * cofactorResponse width j v f = 0
  rw [response_eq_coefficients]
  have hz : (∑ a ∈ sourceIndices j, coefficient width j v a * f a) = 0 :=
    Finset.sum_eq_zero (fun a ha => by rw [hentry a ha, zero_mul])
  rw [hz, mul_zero]

/-- Existing finite joint-law discrepancy now controls this exact arithmetic observable. -/
theorem readout_sub_independent_le (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hM : 0 < totalMass width j)
    (hf : ∀ a ∈ sourceIndices j, |f a| ≤ 1) :
    |signedReadout (responseProfile width j f) - independentReadout width j f| ≤
      dependenceCost width j := by
  have hc := covariance_le_jointL1 cofactorIndices (sourceIndices j)
    (jointWeight width j) (rowMarginal width j) cofactorSign
    (columnMarginal width j) f
    (fun v _ => (cofactorSign_abs v).le) hf
  rw [readout_eq_mass_pairing width j f hM]
  unfold independentReadout dependenceCost
  rw [← mul_sub, abs_mul, abs_of_pos hM]
  exact mul_le_mul_of_nonneg_left hc hM.le

/-- The quantitative inequality extends through the zero-incidence case without a fake law. -/
theorem readout_sub_independent_le_all (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a ∈ sourceIndices j, |f a| ≤ 1) :
    |signedReadout (responseProfile width j f) - independentReadout width j f| ≤
      dependenceCost width j := by
  by_cases hM : totalMass width j = 0
  · rw [readout_zero_of_mass_zero width j f hM]
    simp [independentReadout, dependenceCost, hM]
  · have hpos : 0 < totalMass width j := by
      rcases (totalMass_nonneg width j).eq_or_lt with hz | hp
      · exact (hM hz.symm).elim
      · exact hp
    exact readout_sub_independent_le width j f hpos hf

/-- The marginal term is retained even when the array is almost independent. -/
theorem abs_readout_le_marginal_and_dependence (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ)
    (hM : 0 < totalMass width j) (hf : ∀ a ∈ sourceIndices j, |f a| ≤ 1) :
    |signedReadout (responseProfile width j f)| ≤
      |independentReadout width j f| + dependenceCost width j := by
  have hc := readout_sub_independent_le width j f hM hf
  have ht := abs_add
    (signedReadout (responseProfile width j f) - independentReadout width j f)
    (independentReadout width j f)
  rw [sub_add_cancel] at ht
  linarith

/-- Source-specific finite-law comparison; dependence cost is NOT asserted small. -/
theorem packet_independent_comparison (j : ℕ) (hM : 0 < totalMass sqrtWidth j) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (headPacket sqrtWidth j - independentReadout sqrtWidth j moebiusReal / 6)| ≤
      2 + dependenceCost sqrtWidth j / 6 := by
  have hc := readout_sub_independent_le sqrtWidth j moebiusReal hM
    (fun a _ => moebiusReal_abs_le_one a)
  have hr : signedReadout (recoverProfile (independentReadout sqrtWidth j moebiusReal) 0 0) =
      independentReadout sqrtWidth j moebiusReal := by simp [signedReadout, recoverProfile]
  have he := abs_packet_sub_readout_model_le j
    (recoverProfile (independentReadout sqrtWidth j moebiusReal) 0 0)
    (by simpa only [hr] using hc)
  simpa only [hr] using he

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelResponseLaw
