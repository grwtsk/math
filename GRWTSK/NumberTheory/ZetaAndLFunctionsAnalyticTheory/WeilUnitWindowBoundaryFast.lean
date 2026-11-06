/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowRationalSignals
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import Mathlib.Analysis.SpecialFunctions.Complex.Arctan

/-!
# Integral tail enclosures for the unit-radius boundary signal

Local attribution is to grwtsk contributors.

After a positive cutoff, compare the rational kernel to its decreasing
integral. The first omitted term pays the upper integral-test error.
The omitted exponential factors differ from one by at most a fixed
rational power of one half. The antiderivative gives an arctangent
tail. Inversion or addition at one reduces that arctangent to a
rational argument of magnitude at most one half, where the power
series remainder is bounded by a geometric series.

The retained weighted terms use the existing outward grid sums.
This gives shorter sums for the boundary signal used by the literal
radius-one entries. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowBoundaryFast

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open OddOutputTrace OddBoundarySignalBounds OddBoundaryObservation UnitWindowRationalSignals
open MeasureTheory Set Filter
open scoped Topology

private def piBounds : Bounds := (3.14159265358979323846, 3.14159265358979323847)

private theorem piBounds_sound : Encloses piBounds Real.pi :=
  ⟨Real.pi_gt_d20.le, Real.pi_lt_d20.le⟩

private def atanCenter (x : ℚ) : ℚ :=
  ∑ j ∈ Finset.range 16, (-1 : ℚ) ^ j * x ^ (2 * j + 1) / ((2 * j + 1 : ℕ) : ℚ)

private def atanSmall (x : ℚ) : Bounds :=
  (atanCenter x - 1 / 10 ^ (9 : ℕ), atanCenter x + 1 / 10 ^ (9 : ℕ))

private theorem atanSmall_sound (x : ℚ) (hx : |x| ≤ 1 / 2) :
    Encloses (atanSmall x) (Real.arctan (x : ℝ)) := by
  have hAbs : |(x : ℝ)| ≤ 1 / 2 := by
    simpa only [Rat.cast_abs, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hx
  let f := fun j : ℕ => (-1 : ℝ) ^ j * (x : ℝ) ^ (2 * j + 1) / ((2 * j + 1 : ℕ) : ℝ)
  have hs : HasSum f (Real.arctan (x : ℝ)) :=
    Real.hasSum_arctan (by rw [Real.norm_eq_abs]; exact hAbs.trans_lt (by norm_num))
  have hPoint (j : ℕ) : ‖f (j + 16)‖ ≤ (1 / 2 : ℝ) ^ 33 * (1 / 4 : ℝ) ^ j := by
    simp only [f, Real.norm_eq_abs, abs_div, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul,
      abs_of_nonneg (Nat.cast_nonneg (α := ℝ) _)]
    have hOne : (1 : ℝ) ≤ ((2 * (j + 16) + 1 : ℕ) : ℝ) := by
      exact_mod_cast (show 1 ≤ 2 * (j + 16) + 1 by omega)
    calc
      _ ≤ |(x : ℝ)| ^ (2 * (j + 16) + 1) := div_le_self (by positivity) hOne
      _ ≤ (1 / 2 : ℝ) ^ (2 * (j + 16) + 1) := pow_le_pow_left₀ (abs_nonneg _) hAbs _
      _ = _ := by
        rw [show 2 * (j + 16) + 1 = 33 + 2 * j by omega, pow_add, pow_mul]
        norm_num
  have hGeo := (summable_geometric_of_lt_one (by norm_num : (0 : ℝ) ≤ 1 / 4)
    (by norm_num : (1 : ℝ) / 4 < 1)).mul_left ((1 / 2 : ℝ) ^ 33)
  have hTail : Summable (fun j => ‖f (j + 16)‖) :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hPoint hGeo
  have hErr : |∑' j, f (j + 16)| ≤ 1 / 10 ^ (9 : ℕ) := by
    rw [← Real.norm_eq_abs]
    refine ((norm_tsum_le_tsum_norm hTail).trans (hTail.tsum_le_tsum hPoint hGeo)).trans ?_
    rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num) (by norm_num)]
    norm_num
  have hPartial : (∑ j ∈ Finset.range 16, f j) = (atanCenter x : ℝ) := by
    simp [atanCenter, f]
  have hSplit := hs.summable.sum_add_tsum_nat_add 16
  rw [hs.tsum_eq, hPartial] at hSplit
  unfold Encloses atanSmall
  push_cast
  rw [abs_le] at hErr
  exact ⟨by linarith [hErr.1], by linarith [hErr.2]⟩

private def atanBounds (x : ℚ) : Bounds :=
  if x ≤ 1 / 2 then atanSmall x
  else if x ≤ 2 then add (scale (1 / 4) piBounds) (atanSmall ((x - 1) / (x + 1)))
  else sub (scale (1 / 2) piBounds) (atanSmall x⁻¹)

private theorem atanBounds_sound (x : ℚ) (hx : 0 ≤ x) :
    Encloses (atanBounds x) (Real.arctan (x : ℝ)) := by
  unfold atanBounds
  by_cases h1 : x ≤ 1 / 2
  · rw [ite_eq_left h1]
    exact atanSmall_sound x (by rwa [abs_of_nonneg hx])
  · rw [ite_eq_right h1]
    by_cases h2 : x ≤ 2
    · rw [ite_eq_left h2]
      let y : ℚ := (x - 1) / (x + 1)
      have hDen : 0 < x + 1 := by positivity
      have hy : |y| ≤ 1 / 2 := by
        change |(x - 1) / (x + 1)| ≤ 1 / 2
        rw [abs_le]
        exact ⟨(le_div_iff₀ hDen).2 (by linarith [lt_of_not_ge h1]),
          (div_le_iff₀ hDen).2 (by linarith)⟩
      have hyR : (y : ℝ) < 1 := by
        have h := (abs_le.mp hy).2
        have h' : (y : ℝ) ≤ 1 / 2 := by
          simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
            (Rat.cast_le (K := ℝ)).2 h
        linarith
      have hArg : ((y : ℝ) + 1) / (1 - (y : ℝ) * 1) = (x : ℝ) := by
        apply (div_eq_iff (by linarith : 1 - (y : ℝ) * 1 ≠ 0)).2
        have hxR : 0 ≤ (x : ℝ) := by exact_mod_cast hx
        unfold y
        push_cast
        field_simp
        ring
      have h := Real.arctan_add (x := (y : ℝ)) (y := 1) (by simpa using hyR)
      rw [hArg, Real.arctan_one] at h
      have hOut := add_sound (scale_sound (1 / 4) piBounds_sound) (atanSmall_sound y hy)
      convert hOut using 1
      push_cast
      linarith only [h]
    · rw [ite_eq_right h2]
      have hx' : (2 : ℚ) < x := lt_of_not_ge h2
      have hxR : 0 < (x : ℝ) := by exact_mod_cast (by linarith : 0 < x)
      have hsmall : |x⁻¹| ≤ 1 / 2 := by
        rw [abs_of_nonneg (by positivity), ← one_div]
        exact one_div_le_one_div_of_le (by norm_num) hx'.le
      have hOut := sub_sound (scale_sound (1 / 2) piBounds_sound) (atanSmall_sound x⁻¹ hsmall)
      convert hOut using 1
      push_cast
      rw [Real.arctan_inv_of_pos hxR]
      ring

private def atanOver (a : Bounds) : Bounds := ((atanBounds a.1).1, (atanBounds a.2).2)

private theorem atanOver_sound {a : Bounds} {x : ℝ} (h : Encloses a x) (ha : 0 ≤ a.1) :
    Encloses (atanOver a) (Real.arctan x) := by
  have h2 : 0 ≤ a.2 := by exact_mod_cast (show 0 ≤ (a.2 : ℝ) from
    ((Rat.cast_nonneg (K := ℝ)).2 ha).trans (h.1.trans h.2))
  exact ⟨(atanBounds_sound a.1 ha).1.trans (Real.arctan_mono h.1),
    (Real.arctan_mono h.2).trans (atanBounds_sound a.2 h2).2⟩

private noncomputable def realRate (x : ℝ) : ℝ := 2 * x + 1 / 2

private theorem rate_pos {x : ℝ} (hx : 0 ≤ x) : 0 < realRate x := by
  unfold realRate
  positivity

private noncomputable def tailKernel (w x : ℝ) : ℝ := 1 / (realRate x ^ 2 + w ^ 2)

private theorem tailKernel_nonneg (w x : ℝ) : 0 ≤ tailKernel w x := by
  unfold tailKernel
  positivity

private theorem tailKernel_antitone (w : ℝ) (K : ℕ) :
    AntitoneOn (tailKernel w) (Ici (K : ℝ)) := by
  intro x hx y _ hxy
  have hx0 : 0 ≤ x := (Nat.cast_nonneg K).trans hx
  have hRate : realRate x ≤ realRate y := by unfold realRate; linarith
  have hDen : 0 < realRate x ^ 2 + w ^ 2 :=
    add_pos_of_pos_of_nonneg (sq_pos_of_pos (rate_pos hx0)) (sq_nonneg _)
  unfold tailKernel
  apply div_le_div_of_nonneg_left (by norm_num) hDen
  exact add_le_add (pow_le_pow_left₀ (rate_pos hx0).le hRate 2) le_rfl

private theorem boundaryTerm_factor (n j : ℕ) :
    boundarySignalTerm 1 n j =
      (1 - Real.exp (-1) ^ (4 * j + 1)) * tailKernel (frequency 1 n) j := by
  have hE : Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 1) = Real.exp (-1) ^ (4 * j + 1) := by
    rw [← Real.exp_nat_mul]
    push_cast
    ring_nf
  change (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 1)) / _ = _
  rw [hE, tailKernel, realRate, frequency, mul_one_div]

private theorem exp_power_le {k j : ℕ} (hkj : k ≤ 4 * j + 1) :
    Real.exp (-1) ^ (4 * j + 1) ≤ (1 / 2 : ℝ) ^ k :=
  (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_neg_one_lt_half.le _).trans
    (pow_le_pow_of_le_one (by norm_num) (by norm_num) hkj)

private theorem tailKernel_summable (n : ℕ) :
    Summable (fun j : ℕ => tailKernel (frequency 1 n) j) := by
  apply Summable.of_nonneg_of_le (fun j : ℕ => tailKernel_nonneg (frequency 1 n) j) _
    ((boundarySignal_summable 1 (by norm_num) n).mul_left 2)
  intro j
  rw [boundaryTerm_factor]
  have hE := exp_power_le (k := 1) (j := j) (by omega)
  calc
    _ = 1 * tailKernel (frequency 1 n) j := by simp
    _ ≤ (2 * (1 - Real.exp (-1) ^ (4 * j + 1))) * tailKernel (frequency 1 n) j :=
      mul_le_mul_of_nonneg_right (by linarith) (tailKernel_nonneg _ _)
    _ = _ := by ring

private noncomputable def tailIntegral (w : ℝ) (K : ℕ) : ℝ := Real.arctan (w / realRate K) / (2 * w)

private theorem integral_tailKernel (w : ℝ) (hw : 0 < w) (K : ℕ)
    (hInt : IntegrableOn (tailKernel w) (Ioi (K : ℝ))) :
    (∫ x in Ioi (K : ℝ), tailKernel w x) = tailIntegral w K := by
  let F := fun x : ℝ => -Real.arctan (w / realRate x) / (2 * w)
  have hD (x : ℝ) (hx : x ∈ Ici (K : ℝ)) : HasDerivAt F (tailKernel w x) x := by
    have hR := rate_pos ((Nat.cast_nonneg K).trans hx)
    have hRate : HasDerivAt realRate 2 x := by
      convert ((hasDerivAt_id x).const_mul (2 : ℝ)).add_const (1 / 2) using 1
      · rfl
      · norm_num
    have hQ := (hasDerivAt_const x w).div hRate hR.ne'
    have hA := (Real.hasDerivAt_arctan (w / realRate x)).comp x hQ
    apply (hA.neg.div_const (2 * w)).congr_deriv
    unfold tailKernel
    have hSum : realRate x ^ 2 + w ^ 2 ≠ 0 := by positivity
    field_simp [hR.ne', hw.ne', hSum]
    ring
  have hRateLim : Tendsto realRate atTop atTop := by
    unfold realRate
    exact tendsto_atTop_add_const_right _ _ (tendsto_id.const_mul_atTop (by norm_num))
  have hQ : Tendsto (fun x => w / realRate x) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop hRateLim
  have hArc : Tendsto (fun x => Real.arctan (w / realRate x)) atTop (𝓝 0) := by
    simpa only [Function.comp_def, Real.arctan_zero] using
      (Real.continuous_arctan.tendsto 0).comp hQ
  have hLim : Tendsto F atTop (𝓝 0) := by simpa [F] using hArc.neg.div_const (2 * w)
  rw [integral_Ioi_of_hasDerivAt_of_tendsto' hD hInt hLim]
  simp [F, tailIntegral, neg_div]

private def tailLoss : ℚ := 1 / 2 ^ (65 : ℕ)

private theorem signalTail_bounds {n K : ℕ} (hn : 0 < n) (hK : 16 ≤ K) :
    (1 - (tailLoss : ℝ)) * tailIntegral (frequency 1 n) K ≤
      (∑' j : ℕ, boundarySignalTerm 1 n (j + K)) ∧
      (∑' j : ℕ, boundarySignalTerm 1 n (j + K)) ≤
        tailIntegral (frequency 1 n) K + tailKernel (frequency 1 n) K := by
  let w := frequency 1 n
  have hN : (0 : ℝ) < n := by exact_mod_cast hn
  have hw : 0 < w := by unfold w frequency; positivity
  let f := fun j : ℕ => tailKernel w (j : ℝ)
  let b := boundarySignalTerm 1 n
  have hAnti := tailKernel_antitone w K
  have hNonneg : ∀ x ∈ Ioi (K : ℝ), 0 ≤ tailKernel w x :=
    fun x _ => tailKernel_nonneg w x
  have hSum : Summable f := tailKernel_summable n
  have hTail := (summable_nat_add_iff (f := f) K).2 hSum
  have hB := (summable_nat_add_iff (f := b) K).2 (boundarySignal_summable 1 (by norm_num) n)
  have hInt := hAnti.integrableOn_Ioi_of_summable_comp_add hTail hNonneg
  have hLower := hAnti.integral_le_tsum_comp_add K hSum hNonneg
  have hUpper := hAnti.tsum_comp_add_le_integral K hInt hNonneg
  rw [integral_tailKernel w hw K hInt] at hLower hUpper
  have hNonnegLoss : 0 ≤ 1 - (tailLoss : ℝ) := by norm_num [tailLoss]
  have hWeightLower : (1 - (tailLoss : ℝ)) * (∑' j, f (j + K)) ≤ ∑' j, b (j + K) := by
    rw [← tsum_mul_left]
    apply (hTail.mul_left _).tsum_le_tsum _ hB
    intro j
    unfold b f
    rw [boundaryTerm_factor]
    exact mul_le_mul_of_nonneg_right (sub_le_sub_left
      (by simpa [tailLoss] using exp_power_le (k := 65) (j := j + K) (by omega)) _)
      (tailKernel_nonneg _ _)
  have hWeightUpper : (∑' j, b (j + K)) ≤ ∑' j, f (j + K) := by
    apply hB.tsum_le_tsum _ hTail
    intro j
    unfold b f
    rw [boundaryTerm_factor]
    exact mul_le_of_le_one_left (tailKernel_nonneg _ _) (sub_le_self _ (by positivity))
  refine ⟨(mul_le_mul_of_nonneg_left hLower hNonnegLoss).trans hWeightLower, hWeightUpper.trans ?_⟩
  rw [hTail.tsum_eq_zero_add]
  simp only [zero_add, f]
  rw [add_comm]
  apply add_le_add _ le_rfl
  simpa only [Nat.add_right_comm _ 1 K] using hUpper

private def rateQ (K : ℕ) : ℚ := 2 * K + 1 / 2

private def omegaBounds (n : ℕ) : Bounds :=
  (piBounds.1 * n, piBounds.2 * n)

private theorem omegaBounds_sound (n : ℕ) : Encloses (omegaBounds n) (frequency 1 n) := by
  simpa only [omegaBounds, Encloses, Rat.cast_mul, Rat.cast_natCast, frequency, div_one] using
    And.intro (mul_le_mul_of_nonneg_right piBounds_sound.1 (Nat.cast_nonneg n))
      (mul_le_mul_of_nonneg_right piBounds_sound.2 (Nat.cast_nonneg n))

private def twiceOmegaBounds (n : ℕ) : Bounds :=
  (2 * (omegaBounds n).1, 2 * (omegaBounds n).2)

private theorem twiceOmegaBounds_sound (n : ℕ) :
    Encloses (twiceOmegaBounds n) (2 * frequency 1 n) := by
  simpa only [twiceOmegaBounds, Encloses, Rat.cast_mul, Rat.cast_ofNat] using
    And.intro (mul_le_mul_of_nonneg_left (omegaBounds_sound n).1 (by norm_num : 0 ≤ (2 : ℝ)))
      (mul_le_mul_of_nonneg_left (omegaBounds_sound n).2 (by norm_num : 0 ≤ (2 : ℝ)))

private def tailIntegralBounds (n K : ℕ) : Bounds :=
  mul (atanOver (scale (rateQ K)⁻¹ (omegaBounds n))) (inv (twiceOmegaBounds n))

private theorem tailIntegralBounds_sound {n : ℕ} (hn : 0 < n) (K : ℕ) :
    Encloses (tailIntegralBounds n K) (tailIntegral (frequency 1 n) K) := by
  have hRate : (rateQ K : ℝ) = realRate K := by simp [rateQ, realRate]
  have hInvPos : (0 : ℝ) < ((twiceOmegaBounds n).1 : ℝ) := by
    have hnR : (0 : ℝ) < n := by exact_mod_cast hn
    unfold twiceOmegaBounds omegaBounds
    push_cast
    exact mul_pos (by norm_num) (mul_pos (by norm_num [piBounds]) hnR)
  have hRatio : Encloses (scale (rateQ K)⁻¹ (omegaBounds n))
      (frequency 1 n / realRate K) := by
    have h := scale_sound (rateQ K)⁻¹ (omegaBounds_sound n)
    rw [Rat.cast_inv, hRate, mul_comm, ← div_eq_mul_inv] at h
    exact h
  have hLo : 0 ≤ (scale (rateQ K)⁻¹ (omegaBounds n)).1 := by
    unfold scale mul point omegaBounds
    have hp : (0 : ℚ) ≤ piBounds.1 := by norm_num [piBounds]
    have hp' : (0 : ℚ) ≤ piBounds.2 := by norm_num [piBounds]
    have hR : (0 : ℚ) ≤ (rateQ K)⁻¹ := by unfold rateQ; positivity
    exact le_min (le_min (by positivity) (by positivity)) (le_min (by positivity) (by positivity))
  simpa only [tailIntegralBounds, tailIntegral, div_eq_mul_inv] using
    mul_sound (atanOver_sound hRatio hLo) (inv_sound (twiceOmegaBounds_sound n) hInvPos)

private def firstKernelUpper (n K : ℕ) : ℚ :=
  1 / (rateQ K ^ 2 + (omegaBounds n).1 ^ 2)

private theorem firstKernelUpper_sound (n K : ℕ) :
    tailKernel (frequency 1 n) K ≤ (firstKernelUpper n K : ℝ) := by
  have hLo : 0 ≤ ((omegaBounds n).1 : ℝ) := by
    unfold omegaBounds
    push_cast
    exact mul_nonneg (by norm_num [piBounds]) (Nat.cast_nonneg n)
  have hRate : (rateQ K : ℝ) = realRate K := by simp [rateQ, realRate]
  unfold firstKernelUpper tailKernel
  push_cast
  rw [hRate]
  have hDen : 0 < realRate K ^ 2 + ((omegaBounds n).1 : ℝ) ^ 2 :=
    add_pos_of_pos_of_nonneg (sq_pos_of_pos (rate_pos (Nat.cast_nonneg K))) (sq_nonneg _)
  apply one_div_le_one_div_of_le hDen
  exact add_le_add le_rfl (pow_le_pow_left₀ hLo (omegaBounds_sound n).1 2)

/-- Rational endpoint pair using only `K` original terms and a short arctangent tail.
At mode zero use the earlier positive-tail enclosure. -/
def fastBounds (bits n K : ℕ) : Bounds :=
  if n = 0 then (boundaryLower bits n K, boundaryUpper bits n K)
  else
    let i := tailIntegralBounds n K
    round bits (boundaryLower bits n K + (1 - tailLoss) * i.1,
      (boundaryUpper bits n K - 1 / (4 * (K : ℚ) - 1)) + i.2 + firstKernelUpper n K)

/-- The shorter interval encloses the exact complete source signal for every mode. -/
theorem fastBounds_sound (bits n : ℕ) {K : ℕ} (hK : 16 ≤ K) :
    Encloses (fastBounds bits n K) (boundarySignal 1 n) := by
  by_cases h : n = 0
  · rw [fastBounds, ite_eq_left h]
    exact boundary_bounds bits n (by omega)
  have hn : 0 < n := Nat.pos_of_ne_zero h
  have hInt := tailIntegralBounds_sound hn K
  have hFirst := firstKernelUpper_sound n K
  have hPartial := boundaryPartial_bounds bits n K
  have hTail := signalTail_bounds hn hK
  have hLoss : 0 ≤ 1 - (tailLoss : ℝ) := by norm_num [tailLoss]
  have hSplit :
      boundarySignal 1 n = OddBoundaryObservation.boundarySignalPartial 1 n K +
        ∑' j : ℕ, boundarySignalTerm 1 n (j + K) := by
    exact ((boundarySignal_summable 1 (by norm_num) n).sum_add_tsum_nat_add K).symm
  rw [hSplit, fastBounds, ite_eq_right h]
  apply round_sound
  unfold Encloses
  push_cast at hPartial ⊢
  exact ⟨add_le_add hPartial.1 ((mul_le_mul_of_nonneg_left hInt.1 hLoss).trans hTail.1),
    (add_le_add hPartial.2 (hTail.2.trans (add_le_add hInt.2 hFirst))).trans_eq (by ring)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowBoundaryFast
