/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficResidualCompensation

/-!
# Exact calibrated pickup by independent thinning of the signed source

On the literal finite pickup cutoff, keep the original signed coefficient
at index `n` with weight `exp (-s * log(n)^2)`, or emit zero. The full
inventory consists of indexed masks, so distinct masks retain their
weights even if their emitted words agree. The product weights normalize,
the first moments give the genuine heated coefficients, and the centered
second moments vanish at distinct indices. The construction uses the
original Möbius coefficients as inputs. The residual majorant remains a
bound on the genuine signed diagonal and mixed comparison.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficIndependentThinning

open GRWTSK.RiemannHypothesis.CCC
open MoebiusSoficBlockObstruction MoebiusSoficHeatedResidualBridge
  MoebiusSoficResidualCompensation GaussianSignedResidualLaplace

private def retained (b : Bool) : ℝ := if b then 1 else 0

private def maskAtom (p : ℝ) (b : Bool) : ℝ := if b then p else 1 - p

private def maskWeight {ι : Type*} [Fintype ι] (q : ι → ℝ) (keep : ι → Bool) : ℝ :=
  ∏ i, maskAtom (q i) (keep i)

/-- Joint moment of retaining every selected index. -/
private theorem weighted_mask_moment {ι : Type*} [Fintype ι] [DecidableEq ι]
    (q : ι → ℝ) (selected : Finset ι) :
    (∑ keep : ι → Bool, maskWeight q keep * ∏ i ∈ selected, retained (keep i)) =
      ∏ i ∈ selected, q i := by
  calc
    _ = ∑ keep : ι → Bool, ∏ i,
        maskAtom (q i) (keep i) * (if i ∈ selected then retained (keep i) else 1) := by
      apply Finset.sum_congr rfl
      intro keep _
      rw [maskWeight, Finset.prod_mul_distrib]
      simp
    _ = ∏ i, ∑ b : Bool, maskAtom (q i) b * (if i ∈ selected then retained b else 1) :=
      (Fintype.prod_sum (fun i (b : Bool) =>
        maskAtom (q i) b * (if i ∈ selected then retained b else 1))).symm
    _ = ∏ i, if i ∈ selected then q i else 1 := by
      apply Finset.prod_congr rfl
      intro i _
      by_cases hi : i ∈ selected <;> simp [maskAtom, retained, hi]
    _ = _ := by simp

/-- Each mask is indexed by the original integer cutoff, before decoding. -/
abbrev PickupMask (T : ℝ) := (pickupIndex T) → Bool

private def keepMultiplier (s : ℝ) (n : ℕ) : ℝ := Real.exp (-s * Real.log (n : ℝ) ^ 2)

def heatMaskWeight (s T : ℝ) (keep : PickupMask T) : ℝ :=
  maskWeight (fun i => keepMultiplier s i.val) keep

/-- A mask keeps the literal source sign when it keeps the index. -/
def heatMaskCoeff (T : ℝ) (keep : PickupMask T) (n : ℕ) : ℝ :=
  if hn : n ∈ pickupIndex T then retained (keep ⟨n, hn⟩) * moebiusReal n else 0

theorem heatMaskCoeff_eq_zero_or_source (T : ℝ) (keep : PickupMask T) (n : ℕ) :
    heatMaskCoeff T keep n = 0 ∨ heatMaskCoeff T keep n = moebiusReal n := by
  by_cases hn : n ∈ pickupIndex T
  · cases hb : keep ⟨n, hn⟩ <;> simp [heatMaskCoeff, hn, retained, hb]
  · simp [heatMaskCoeff, hn]

theorem heatMaskWeight_nonnegative {s : ℝ} (hs : 0 ≤ s) (T : ℝ) (keep : PickupMask T) :
    0 ≤ heatMaskWeight s T keep := by
  unfold heatMaskWeight maskWeight
  apply Finset.prod_nonneg
  intro i _
  have hq : keepMultiplier s i.val ≤ 1 := by
    rw [keepMultiplier, ← Real.exp_zero]
    exact Real.exp_le_exp.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hs) (sq_nonneg _))
  cases hb : keep i
  · simpa [maskAtom, hb] using sub_nonneg.mpr hq
  · simp [maskAtom, keepMultiplier, Real.exp_nonneg]

theorem heatMaskWeight_normalized (s T : ℝ) : (∑ keep : PickupMask T, heatMaskWeight s T keep) = 1 := by
  classical
  simpa [heatMaskWeight] using
    weighted_mask_moment (fun i : pickupIndex T => keepMultiplier s i.val) ∅

theorem heatMaskCoeff_mean (s T : ℝ) {n : ℕ} (hn : n ∈ pickupIndex T) :
    (∑ keep : PickupMask T, heatMaskWeight s T keep * heatMaskCoeff T keep n) = heatedCoeff s n := by
  classical
  let i : pickupIndex T := ⟨n, hn⟩
  have h : (∑ keep : PickupMask T, heatMaskWeight s T keep * retained (keep i)) =
      keepMultiplier s n := by
    simpa [heatMaskWeight, i] using
      weighted_mask_moment (fun j : pickupIndex T => keepMultiplier s j.val) {i}
  calc
    _ = (∑ keep : PickupMask T, heatMaskWeight s T keep * retained (keep i)) * moebiusReal n := by
      simp only [Finset.sum_mul, heatMaskCoeff, dite_eq_left hn, mul_assoc, i]
    _ = _ := by rw [h, keepMultiplier, heatedCoeff, mul_comm]

/-- Exact heated pair moments on distinct original indices, including the
product of the two original signed coefficients. -/
theorem heatMaskCoeff_ordered_product (s T : ℝ) {m n : ℕ}
    (hm : m ∈ pickupIndex T) (hn : n ∈ pickupIndex T) (hmn : m ≠ n) :
    (∑ keep : PickupMask T, heatMaskWeight s T keep * (heatMaskCoeff T keep m * heatMaskCoeff T keep n)) =
      heatedCoeff s m * heatedCoeff s n := by
  classical
  let i : pickupIndex T := ⟨m, hm⟩
  let j : pickupIndex T := ⟨n, hn⟩
  have hij : i ≠ j := fun h => hmn (congrArg Subtype.val h)
  have h : (∑ keep : PickupMask T, heatMaskWeight s T keep * (retained (keep i) * retained (keep j))) =
      keepMultiplier s m * keepMultiplier s n := by
    have hmem : i ∉ ({j} : Finset (pickupIndex T)) := by simpa using hij
    simpa [Finset.prod_insert hmem, heatMaskWeight, i, j] using
      weighted_mask_moment (fun k : pickupIndex T => keepMultiplier s k.val) (insert i {j})
  calc
    _ = (∑ keep : PickupMask T, heatMaskWeight s T keep * (retained (keep i) * retained (keep j))) *
        (moebiusReal m * moebiusReal n) := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro keep _
      simp only [heatMaskCoeff, dite_eq_left hm, dite_eq_left hn, i, j]
      ring
    _ = _ := by rw [h, keepMultiplier, keepMultiplier, heatedCoeff, heatedCoeff]; ring

private theorem heatMaskCoeff_centered_product (s T : ℝ) {m n : ℕ}
    (hm : m ∈ pickupIndex T) (hn : n ∈ pickupIndex T) (hmn : m ≠ n) :
    (∑ keep : PickupMask T, heatMaskWeight s T keep *
      ((heatMaskCoeff T keep m - heatedCoeff s m) * (heatMaskCoeff T keep n - heatedCoeff s n))) = 0 := by
  calc
    _ = ∑ keep : PickupMask T,
        (heatMaskWeight s T keep * (heatMaskCoeff T keep m * heatMaskCoeff T keep n) -
          (heatMaskWeight s T keep * heatMaskCoeff T keep m) * heatedCoeff s n -
          heatedCoeff s m * (heatMaskWeight s T keep * heatMaskCoeff T keep n) +
          heatMaskWeight s T keep * (heatedCoeff s m * heatedCoeff s n)) := by
      apply Finset.sum_congr rfl
      intro keep _
      ring
    _ = 0 := by
      simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.sum_mul, ← Finset.mul_sum,
        heatMaskCoeff_ordered_product s T hm hn hmn, heatMaskCoeff_mean s T hm, heatMaskCoeff_mean s T hn,
        heatMaskWeight_normalized, one_mul]
      ring

/-- The signed ordered covariance cancels entry by entry for the calibrated
product-weight inventory. -/
theorem heatedPathCovariance_heatMask_eq_zero (s T : ℝ) :
    heatedPathCovariance s T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) = 0 := by
  unfold heatedPathCovariance pickupPairSum
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro m hm
  rw [Finset.sum_comm]
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hmn : m = n
  · simp [pickupPairTerm, hmn]
  · simp only [pickupPairTerm, ite_eq_left hmn, ← mul_assoc, ← Finset.sum_mul]
    rw [show (∑ keep : PickupMask T, heatMaskWeight s T keep *
          (heatMaskCoeff T keep m - heatedCoeff s m) * (heatMaskCoeff T keep n - heatedCoeff s n)) = 0 by
      simpa only [mul_assoc] using heatMaskCoeff_centered_product s T hm hn hmn]
    exact zero_mul _

/-- Apply the genuine residual return with the exact calibrated means and
zero ordered covariance. The other signed terms are required at the same
horizon. -/
theorem residualEnergy_eq_diagonal_sub_mixed_sub_heatMaskDeviation
    (s : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    residualEnergy s T = heatedResidualDiagonal s T - heatedResidualMixed s T -
      weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) := by
  rw [residualEnergy_eq_compensation_sub_deviation s hT _ _ _ (heatMaskWeight_normalized s T)
    (fun _ hn => heatMaskCoeff_mean s T hn)]
  simp [heatedResidualCompensation, heatedPathCovariance_heatMask_eq_zero]

end GRWTSK.NumberTheory.Moebius.MoebiusSoficIndependentThinning
