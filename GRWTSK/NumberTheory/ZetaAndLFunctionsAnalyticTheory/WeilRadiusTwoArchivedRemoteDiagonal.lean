/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateScalarComparison
import Mathlib.Algebra.BigOperators.Intervals

/-!
# Archived remote diagonal for the radius-two seed

The complete remote price is a product of the total remainder weight and
the local remainder weight. Each weight is the squared mode number times
an affine function of the scaled boundary signal. Its total therefore uses
the full weighted boundary moment and the exact sum of squared modes.

The proof bounds the prime-mass contribution with rational intervals and
propagates the moment and local errors through the product. It uses the
rational centers of the archived seed formula and the high-floor
normalization `149 / 100`. The moment enclosure and the local boundary
enclosure are explicit premises for the literal seed comparison. This
module supplies the remote-diagonal field of that comparison.
Independent mathematical review is pending.
-/

set_option autoImplicit false
set_option maxHeartbeats 5000000

noncomputable section
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoArchivedRemoteDiagonal

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open LowSchur OddResidualMajorant OddBoundarySignalBounds RadiusTwoRemoteScalars
open RadiusTwoWeightedMiddleStructure
open scoped BigOperators

/-- Exact rational center of the archived weighted boundary moment. -/
def archivedMoment : ℚ := 6004824113260340138842545207688 / 2^49

/-- Full literal boundary moment through the trial cutoff. -/
def literalMoment : ℝ :=
  ∑ n ∈ Finset.Icc (1 : ℕ) 400000, (n : ℝ)^2 * ((n : ℝ) * boundarySignal 2 n)

private theorem rangeSquares (n : ℕ) :
    (∑ i ∈ Finset.range n, (i : ℝ)^2) =
      (n : ℝ) * ((n : ℝ) - 1) * (2 * (n : ℝ) - 1) / 6 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    push_cast
    ring

/-- The exact squared-mode sum used by the archived formula. -/
theorem squareMoment :
    (∑ n ∈ Finset.Icc (1 : ℕ) 400000, (n : ℝ)^2) = 21333413333400000 := by
  rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sub _ (by decide),
    rangeSquares, rangeSquares]
  norm_num

private def fraction : ℚ := 400000 / 1200001

private def boundaryFactor : ℚ := 1 / (1 - fraction^2)

private def piCenter : ℚ := 3141592653589793238465 / 10^21

private def massCenter : ℚ := 2438329183515615 / 10^14

private def bulkCenter : ℚ := (massCenter / piCenter) / (1 - fraction)

private def rho : ℚ :=
  3 * (1 + (1 / 4 : ℚ)⁻¹) / (5 * (1200000 : ℚ)^5 * (149 / 100))

private def archiveTotal : ℚ :=
  boundaryFactor * archivedMoment + bulkCenter * 21333413333400000

private def archiveLocal (b : ℚ) : ℚ := boundaryFactor * b + bulkCenter

/-- The rational formula used by the archived seed's remote diagonal. -/
def archivedRemoteDiagonal (n : ℕ) (b : ℚ) : ℚ :=
  rho * archiveTotal * (n : ℚ)^2 * archiveLocal b

private def bulkActual : ℝ :=
  (1 - (fraction : ℝ))⁻¹ * (primeMass 2 * Real.pi⁻¹)

private def literalTotal : ℝ :=
  (boundaryFactor : ℝ) * literalMoment + bulkActual * 21333413333400000

private def literalLocal (n : ℕ) : ℝ :=
  (boundaryFactor : ℝ) * ((n : ℝ) * boundarySignal 2 n) + bulkActual

private def compactMass : Bounds := (243832 / 10000, 243834 / 10000)

private theorem compactMass_sound : Encloses compactMass (primeMass 2) := by
  have h := primeMassBounds_sound 16
  have hlo : compactMass.1 ≤ (primeMassBounds 16).1 := by decide +kernel
  have hhi : (primeMassBounds 16).2 ≤ compactMass.2 := by decide +kernel
  exact ⟨((Rat.cast_le (K:=ℝ)).mpr hlo).trans h.1,
    h.2.trans ((Rat.cast_le (K:=ℝ)).mpr hhi)⟩

private theorem bulkError : |bulkActual - (bulkCenter : ℝ)| ≤ 1 / 10000 := by
  let b : Bounds := scale (1 - fraction)⁻¹ (mul compactMass piInvBounds)
  have h : Encloses b bulkActual := by
    simpa only [b, bulkActual, Rat.cast_inv, Rat.cast_sub, Rat.cast_one] using
      scale_sound (1 - fraction)⁻¹ (mul_sound compactMass_sound piInvBounds_sound)
  have hL : bulkCenter - 1 / 10000 ≤ b.1 := by decide +kernel
  have hU : b.2 ≤ bulkCenter + 1 / 10000 := by decide +kernel
  have hl := (Rat.cast_le (K:=ℝ)).mpr hL
  have hu := (Rat.cast_le (K:=ℝ)).mpr hU
  push_cast at hl hu
  rw [abs_le]
  exact ⟨by linarith only [hl.trans h.1], by linarith only [h.2.trans hu]⟩

private theorem boundaryFactor_nonneg : 0 ≤ (boundaryFactor : ℝ) := by
  norm_num [boundaryFactor, fraction]

private theorem boundaryFactor_le : (boundaryFactor : ℝ) ≤ 2 := by
  norm_num [boundaryFactor, fraction]

private theorem totalError
    (hMoment : |literalMoment - (archivedMoment : ℝ)| ≤ 13000000000) : |literalTotal - (archiveTotal : ℝ)| ≤ 3000000000000 := by
  have h : literalTotal - (archiveTotal : ℝ) =
      (boundaryFactor : ℝ) * (literalMoment - (archivedMoment : ℝ)) +
      (bulkActual - (bulkCenter : ℝ)) * 21333413333400000 := by
    push_cast [literalTotal, archiveTotal]
    ring
  have h₁ : |(boundaryFactor : ℝ) * (literalMoment - (archivedMoment : ℝ))| ≤ 2 * 13000000000 := by
    rw [abs_mul, abs_of_nonneg boundaryFactor_nonneg]
    exact mul_le_mul boundaryFactor_le hMoment (abs_nonneg _) (by norm_num)
  have h₂ : |(bulkActual - (bulkCenter : ℝ)) * 21333413333400000| ≤
      (1 / 10000) * 21333413333400000 := by
    rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 21333413333400000)]
    exact mul_le_mul_of_nonneg_right bulkError (by norm_num)
  rw [h]
  exact ((abs_add_le _ _).trans (add_le_add h₁ h₂)).trans (by norm_num)

private theorem totalMagnitude
    (hMoment : |literalMoment - (archivedMoment : ℝ)| ≤ 13000000000) : |literalTotal| ≤ 400000000000000000 := by
  have hArchive : |(archiveTotal : ℝ)| ≤ 300000000000000000 := by
    rw [abs_le]
    constructor <;> norm_num [archiveTotal, boundaryFactor, fraction, archivedMoment,
      bulkCenter, massCenter, piCenter]
  have h : |literalTotal| ≤ |literalTotal - (archiveTotal : ℝ)|+|(archiveTotal : ℝ)| := by
    simpa only [sub_zero] using abs_sub_le literalTotal (archiveTotal : ℝ) 0
  exact (h.trans (add_le_add (totalError hMoment) hArchive)).trans (by norm_num)

private theorem scaledBoundaryMagnitude {n : ℕ} (hn : 0 < n) :
    |(n : ℝ) * boundarySignal 2 n| ≤ 3 / 2 := by
  have hn0 : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hn1 : (1 : ℝ) ≤ n := by
    have h : 1 ≤ n := by omega
    exact_mod_cast h
  have hpi : (4 : ℝ) ≤ Real.pi^2 := by nlinarith [Real.pi_gt_three, Real.pi_pos]
  have hfrac : 4 / (Real.pi^2 * (n : ℝ)^2) ≤ 1 / (n : ℝ)^2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (sq_nonneg (n : ℝ))]
  have hg := boundarySignal_le 2 (by norm_num) hn
  have htwo : (2 : ℝ) / (4 * (n : ℝ)) = 1 / (2 * (n : ℝ)) := by
    field_simp [hn0.ne']
    ring
  rw [htwo, show (2 : ℝ)^2 = 4 by norm_num] at hg
  have hg' : boundarySignal 2 n ≤ 1 / (2 * (n : ℝ)) + 1 / (n : ℝ)^2 :=
    hg.trans (add_le_add le_rfl hfrac)
  have hInv : (n : ℝ)⁻¹ ≤ 1 := by
    simpa only [inv_one] using inv_anti₀ (by norm_num : (0 : ℝ) < 1) hn1
  rw [abs_of_nonneg (mul_nonneg hn0.le (boundarySignal_nonneg 2 (by norm_num) n))]
  calc
    _ ≤ (n : ℝ) * (1 / (2 * (n : ℝ)) + 1 / (n : ℝ)^2) := mul_le_mul_of_nonneg_left hg' hn0.le
    _ = 1 / 2 + (n : ℝ)⁻¹ := by field_simp [hn0.ne']
    _ ≤ _ := by linarith

private theorem localMagnitude {n : ℕ} (hn : 0 < n) {b : ℚ}
    (hb : |(n : ℝ) * boundarySignal 2 n - (b : ℝ)| ≤ 6 / 10^7) :
    |(archiveLocal b : ℝ)| ≤ 16 := by
  have hb2 : |(b : ℝ)| ≤ 2 := by
    have h := abs_sub_le (b : ℝ) ((n : ℝ) * boundarySignal 2 n) 0
    simp only [sub_zero] at h
    rw [abs_sub_comm] at h
    exact (h.trans (add_le_add hb (scaledBoundaryMagnitude hn))).trans (by norm_num)
  have hp : |(bulkCenter : ℝ)| ≤ 12 := by
    rw [abs_le]
    constructor <;> norm_num [bulkCenter, massCenter, piCenter, fraction]
  push_cast [archiveLocal]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg boundaryFactor_nonneg]
  have h := mul_le_mul boundaryFactor_le hb2 (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)
  exact (add_le_add h hp).trans (by norm_num)

private theorem localError (n : ℕ) {b : ℚ}
    (hb : |(n : ℝ) * boundarySignal 2 n - (b : ℝ)| ≤ 6 / 10^7) :
    |literalLocal n - (archiveLocal b : ℝ)| ≤ 102 / 1000000 := by
  have he : literalLocal n - (archiveLocal b : ℝ) =
      (boundaryFactor : ℝ) * ((n : ℝ) * boundarySignal 2 n - (b : ℝ)) + (bulkActual - (bulkCenter : ℝ)) := by
    push_cast [literalLocal, archiveLocal]
    ring
  rw [he]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg boundaryFactor_nonneg]
  have h := mul_le_mul boundaryFactor_le hb (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)
  exact (add_le_add h bulkError).trans (by norm_num)

private theorem weightIdentity (n : ℕ) :
    remainderWeight 400000 1200000 2 n = (n : ℝ)^2 * literalLocal n := by
  unfold remainderWeight squaredResidualBuffer residualBuffer literalLocal bulkActual
  push_cast [boundaryFactor, fraction]
  norm_num [div_eq_mul_inv]
  ring

private theorem totalIdentity :
    (∑ n ∈ Finset.Icc (1 : ℕ) 400000, remainderWeight 400000 1200000 2 n) =
      literalTotal := by
  calc
    _ = ∑ n ∈ Finset.Icc (1 : ℕ) 400000,
        ((boundaryFactor : ℝ) * ((n : ℝ)^2 * ((n : ℝ) * boundarySignal 2 n)) + bulkActual * (n : ℝ)^2) := by
      apply Finset.sum_congr rfl
      intro n _
      rw [weightIdentity]
      unfold literalLocal
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum, squareMoment]
      rfl

private theorem priceIdentity (n : ℕ) :
    (149 / 100 : ℝ)⁻¹ * remoteDiag 400000 1200000 (1 / 4) n =
      (rho : ℝ) * (n : ℝ)^2 * (literalTotal * literalLocal n) := by
  unfold remoteDiag
  change (149 / 100 : ℝ)⁻¹ *
    ((3 * (1 + (1 / 4 : ℝ)⁻¹) / (5 * (1200000 : ℝ)^5)) *
       (∑ j ∈ Finset.Icc (1 : ℕ) 400000, remainderWeight 400000 1200000 2 j) *
       remainderWeight 400000 1200000 2 n) = _
  rw [totalIdentity, weightIdentity]
  push_cast [rho]
  norm_num [div_eq_mul_inv]
  ring

/-- Full normalized literal remote diagonal versus the archived rational price. -/
theorem remotePrice_error (n : ℕ) (hn : 0 < n) (hhi : n ≤ 400000) (b : ℚ)
    (hMoment : |literalMoment - (archivedMoment : ℝ)| ≤ 13000000000)
    (hb : |(n : ℝ) * boundarySignal 2 n - (b : ℝ)| ≤ 6 / 10^7) :
    |(149 / 100 : ℝ)⁻¹ * remoteDiag 400000 1200000 (1 / 4) n -
      (archivedRemoteDiagonal n b : ℝ)| ≤ 1 / 50000 := by
  have hObs : (archivedRemoteDiagonal n b : ℝ) =
      (rho : ℝ) * (n : ℝ)^2 * ((archiveTotal : ℝ) * (archiveLocal b : ℝ)) := by
    push_cast [archivedRemoteDiagonal]
    ring
  have he : literalTotal * literalLocal n - (archiveTotal : ℝ) * (archiveLocal b : ℝ) =
      literalTotal * (literalLocal n - (archiveLocal b : ℝ)) +
      (literalTotal - (archiveTotal : ℝ)) * (archiveLocal b : ℝ) := by ring
  have hd : |literalTotal * literalLocal n - (archiveTotal : ℝ) * (archiveLocal b : ℝ)| ≤
      400000000000000000 * (102 / 1000000) + 3000000000000 * 16 := by
    rw [he]
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_mul]
    exact add_le_add
      (mul_le_mul (totalMagnitude hMoment) (localError n hb) (abs_nonneg _) (by norm_num))
      (mul_le_mul (totalError hMoment) (localMagnitude hn hb) (abs_nonneg _) (by norm_num))
  have hρ : 0 ≤ (rho : ℝ) := by norm_num [rho]
  have hn2 : (n : ℝ)^2 ≤ (400000 : ℝ)^2 :=
    pow_le_pow_left₀ (Nat.cast_nonneg _) (by exact_mod_cast hhi) _
  rw [priceIdentity, hObs, ← mul_sub, abs_mul, abs_of_nonneg (mul_nonneg hρ (sq_nonneg _))]
  calc
    _ ≤ (rho : ℝ) * (n : ℝ)^2 * (400000000000000000 * (102 / 1000000) + 3000000000000 * 16) :=
      mul_le_mul_of_nonneg_left hd (mul_nonneg hρ (sq_nonneg _))
    _ ≤ (rho : ℝ) * (400000 : ℝ)^2 * (400000000000000000 * (102 / 1000000) + 3000000000000 * 16) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hn2 hρ) (by norm_num)
    _ ≤ _ := by norm_num [rho]

/-- Supply the exact remote-diagonal error field of the retained seed comparison. -/
theorem seedRow_error (i : Fin 399936) (b : ℚ)
    (hMoment : |literalMoment - (archivedMoment : ℝ)| ≤ 13000000000)
    (hb : let n := RadiusTwoCandidateSeed.mode 400000 i
      |(n : ℝ) * boundarySignal 2 n - (b : ℝ)| ≤ 6 / 10^7) :
    |RadiusTwoCandidateScalarComparison.literal.remoteDiagonal i -
      (archivedRemoteDiagonal (RadiusTwoCandidateSeed.mode 400000 i) b : ℝ)| ≤ 1 / 1000 := by
  have hi := (RadiusTwoWeightedMiddleReturn.middleIndex 400000 i).isLt
  exact (remotePrice_error (RadiusTwoCandidateSeed.mode 400000 i)
    (by
      unfold RadiusTwoCandidateSeed.mode
      omega)
    (by
      unfold RadiusTwoCandidateSeed.mode
      omega) b hMoment hb).trans (by norm_num)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoArchivedRemoteDiagonal
