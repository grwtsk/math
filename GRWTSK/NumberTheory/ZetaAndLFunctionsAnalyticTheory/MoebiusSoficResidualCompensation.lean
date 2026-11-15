/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficHeatedResidualBridge

/-!
# Exact compensation for the genuine Gaussian pickup residual

At the original cutoff, the square of the signed residual wave gives a
diagonal and an ordered off-diagonal sum. Expanding the latter against
the heated coefficients exposes both mixed orientations. With normalized
path weights and the exact heated first moments, the full residual energy
is the diagonal minus the mixed sum plus the signed path covariance, less
the weighted graph deviation. The same identity gives a pointwise or
eventual criterion for any proposed residual-energy majorant.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set Filter

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficResidualCompensation

open GRWTSK.RiemannHypothesis.CCC
open MoebiusSoficBlockObstruction MoebiusSoficHeatedResidualBridge GaussianSignedResidualLaplace

def heatedResidualCoeff (s : ℝ) (n : ℕ) : ℝ := moebiusReal n - heatedCoeff s n

/-- The part of the residual squared energy on the literal diagonal. -/
def heatedResidualDiagonal (s T : ℝ) : ℝ :=
  ∑ n ∈ pickupIndex T, heatedResidualCoeff s n ^ 2 * pickupResponseGram T n n

/-- The two mixed products on every ordered off-diagonal pair. -/
def heatedResidualMixed (s T : ℝ) : ℝ :=
  pickupPairSum T fun m n => if m ≠ n then
    (heatedCoeff s m * heatedResidualCoeff s n +
      heatedResidualCoeff s m * heatedCoeff s n) * pickupResponseGram T m n else 0

theorem residualEnergy_eq_diagonal_add_ordered (s : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    residualEnergy s T = heatedResidualDiagonal s T +
      pickupPairSum T (pickupPairTerm T (heatedResidualCoeff s)) := by
  unfold residualEnergy
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T,
        (heatedResidualCoeff s m * heatedResidualCoeff s n) *
          (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      have hwave : residualWave s u = ∑ n ∈ pickupIndex T,
          heatedResidualCoeff s n * pickupResponse n u := by
        rw [residualWave_eq_signed_sum s hu.1 hu.2]
        apply Finset.sum_congr rfl
        intro n _
        unfold heatedResidualCoeff heatedCoeff
        ring
      change residualWave s u ^ 2 = _
      rw [hwave, pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = ∑ m ∈ pickupIndex T, ∑ n ∈ pickupIndex T,
        heatedResidualCoeff s m * heatedResidualCoeff s n * pickupResponseGram T m n := by
      have hprod (m : ℕ) (hm : m ∈ pickupIndex T) (n : ℕ) (hn : n ∈ pickupIndex T) :
          Continuous (fun u => (heatedResidualCoeff s m * heatedResidualCoeff s n) *
            (pickupResponse m u * pickupResponse n u)) :=
        continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
          (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum _ (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T
    _ = _ := complete_gram_split (pickupIndex T) (heatedResidualCoeff s) (pickupResponseGram T)

private theorem pickupCross_eq_heated_add_mixed_add_residual (s T : ℝ) :
    pickupCross T = pickupPairSum T (pickupPairTerm T (heatedCoeff s)) +
      heatedResidualMixed s T + pickupPairSum T (pickupPairTerm T (heatedResidualCoeff s)) := by
  change pickupPairSum T (pickupPairTerm T moebiusReal) = _
  unfold heatedResidualMixed pickupPairSum
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : m = n
  · simp [pickupPairTerm, h]
  · simp only [pickupPairTerm, ite_eq_left h, heatedResidualCoeff]
    ring

/-- The signed correction to the negative weighted graph deviation. -/
def heatedResidualCompensation {Path : Type*} (s T : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) : ℝ :=
  heatedResidualDiagonal s T - heatedResidualMixed s T +
    heatedPathCovariance s T paths weight coeff

/-- Retains the genuine full residual, the weighted ordered deviation and
the signed covariance. Normalization and exact heated means suffice. -/
theorem residualEnergy_eq_compensation_sub_deviation {Path : Type*}
    (s : ℝ) {T : ℝ} (hT : 0 ≤ T) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ)
    (hw : ∑ p ∈ paths, weight p = 1)
    (hmean : ∀ n ∈ pickupIndex T, (∑ p ∈ paths, weight p * coeff p n) = heatedCoeff s n) :
    residualEnergy s T = heatedResidualCompensation s T paths weight coeff -
      weightedPickupDeviation T paths weight coeff := by
  unfold heatedResidualCompensation
  rw [residualEnergy_eq_diagonal_add_ordered s hT,
    weightedPickupDeviation_eq_heatedDeviation_add_covariance s T paths weight coeff hw hmean]
  linarith [pickupCross_eq_heated_add_mixed_add_residual s T]

/-- Finite neutralization certifies an error around the signed correction. -/
theorem residualEnergy_sub_compensation_abs_eq {Path : Type*}
    (s : ℝ) {T : ℝ} (hT : 0 ≤ T) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ)
    (hw : ∑ p ∈ paths, weight p = 1)
    (hmean : ∀ n ∈ pickupIndex T, (∑ p ∈ paths, weight p * coeff p n) = heatedCoeff s n) :
    |residualEnergy s T - heatedResidualCompensation s T paths weight coeff| =
      |weightedPickupDeviation T paths weight coeff| := by
  rw [residualEnergy_eq_compensation_sub_deviation s hT paths weight coeff hw hmean,
    sub_right_comm, sub_self, zero_sub, abs_neg]

/-- Exact upper-budget criterion. It applies with any signed graph
deviation and any proposed real upper budget. -/
theorem residualEnergy_le_iff_compensation_le {Path : Type*}
    (s : ℝ) {T : ℝ} (hT : 0 ≤ T) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ)
    (hw : ∑ p ∈ paths, weight p = 1)
    (hmean : ∀ n ∈ pickupIndex T, (∑ p ∈ paths, weight p * coeff p n) = heatedCoeff s n)
    (U : ℝ) : residualEnergy s T ≤ U ↔
      heatedResidualCompensation s T paths weight coeff ≤ U +
        weightedPickupDeviation T paths weight coeff := by
  rw [residualEnergy_eq_compensation_sub_deviation s hT paths weight coeff hw hmean, sub_le_iff_le_add]

/-- The same majorant criterion on the original scale filter, with
path inventory, weights, and coefficients allowed to depend on the horizon. -/
theorem eventually_residualEnergy_le_iff_compensation_le {Path : Type*}
    (s : ℝ) (scales : Filter ℝ) (paths : ℝ → Finset Path) (weight : ℝ → Path → ℝ)
    (coeff : ℝ → Path → ℕ → ℝ) (U : ℝ → ℝ)
    (hT : ∀ᶠ T in scales, 0 ≤ T)
    (hw : ∀ᶠ T in scales, ∑ p ∈ paths T, weight T p = 1)
    (hmean : ∀ᶠ T in scales, ∀ n ∈ pickupIndex T,
      (∑ p ∈ paths T, weight T p * coeff T p n) = heatedCoeff s n) :
    (∀ᶠ T in scales, residualEnergy s T ≤ U T) ↔
      ∀ᶠ T in scales, heatedResidualCompensation s T (paths T) (weight T) (coeff T) ≤
        U T + weightedPickupDeviation T (paths T) (weight T) (coeff T) := by
  apply Filter.eventually_congr
  filter_upwards [hT, hw, hmean] with T hnonneg hnorm hcal
  exact residualEnergy_le_iff_compensation_le s hnonneg (paths T) (weight T) (coeff T)
    hnorm hcal (U T)

end GRWTSK.NumberTheory.Moebius.MoebiusSoficResidualCompensation
