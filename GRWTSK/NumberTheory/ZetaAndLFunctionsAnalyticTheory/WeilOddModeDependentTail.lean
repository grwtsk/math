/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoHighFloor

/-!
# Mode-dependent lower weights on the literal odd tail

The signed boundary return and periodic Parseval identify the
archimedean part with its full sequence of multipliers and the
boundary form. Adding the constant physical shift and subtracting
the prime and boundary losses uses the same sine Parseval mass.
Every surviving coefficient therefore keeps its own multiplier,
including the coefficients beyond any finite residual cutoff.

The radius-two specialization uses the checked weighted prime norm
and the half-exponential Carleman boundary bound. The weights can
price a later Schur residual by frequency. Their use on a specified
finite middle requires the corresponding residual comparison.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddModeDependentTail

open OddRootProjection OddHighComplement OddWrapEnergy OddWrapPeriodLift
open OddExactPeriodization OddPeriodicDiagonal OddHighFloor OddResidualParseval
open OddSineParseval OddOutputTrace OddMultiplierBounds OddSineForm OddShiftEnergy
open OddConcreteResidual OddResidualSourceComparison OddBorderedExpansion
open OddResidualMajorant UnitWindowOddEntries RadiusTwoHighFloor
open OddLiteralWindow (HighFloor)
open OddGammaOutput (finiteSine_memLp finiteSine_exists_lipschitzWith finiteSine_odd
  finiteSine_eq_zero_off_window)
open OddSineHeadRemoval (sineCoefficient_finiteSine)

/-- The exact mode weight left by two separate whole-window losses. -/
def modeWeight (T β primeLoss boundaryLoss : ℝ) (m : ℕ) : ℝ :=
  (gammaConstant 1 0 - β - primeLoss - boundaryLoss) + periodicMultiplier 0 (frequency T m)

theorem modeWeight_mono (T : ℝ) (hT : 0 < T) (β primeLoss boundaryLoss : ℝ) :
    Monotone (modeWeight T β primeLoss boundaryLoss) := by
  intro m n hmn
  have hn (k : ℕ) : 0 ≤ frequency T k := by unfold frequency; positivity
  unfold modeWeight
  apply add_le_add le_rfl
  apply periodicMultiplier_abs_mono
  rw [abs_of_nonneg (hn m), abs_of_nonneg (hn n)]
  unfold frequency
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left (by exact_mod_cast hmn) Real.pi_pos.le) hT.le

/-- Keep all mode weights in the exact-budget lower estimate. -/
theorem shiftedOddCoreEnergy_ge_weightedTail (T : ℝ) (hT : 0 < T)
    (β primeLoss boundaryLoss : ℝ) {N : ℕ} {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0))
    (hprime : primeEnergy T f ≤ primeLoss * (∫ t : ℝ, ‖f t‖ ^ 2))
    (hboundary : -(boundaryLoss * ∫ t in Ioo 0 T, f t ^ 2) ≤
      ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, OddBoundaryNorm.oddKernel T t s * f t * f s) :
    let weighted : ℕ → ℝ := fun n => modeWeight T β primeLoss boundaryLoss (N + 1 + n) *
      sineCoefficient T f (N + 1 + n) ^ 2
    Summable weighted ∧ (∑' n, weighted n) ≤ shiftedOddCoreEnergy T β f := by
  let D (n : ℕ) := periodicMultiplier 0 (frequency T (n + 1)) * sineCoefficient T f (n + 1) ^ 2
  let c := gammaConstant 1 0 - β - primeLoss - boundaryLoss
  let mass := ∫ t : ℝ, ‖f t‖ ^ 2
  let period := ∫ r in Ioi (0 : ℝ), parityKernel 0 r * periodicJumpEnergy T hT r f
  have hOddAE : ∀ᵐ t : ℝ, f (-t) = -f t := Eventually.of_forall hodd
  have hpI := (periodicWeightedEnergy_integrable_le T hT hf2 hsupport hzero).1
  have hDiag : HasSum D period := hasSum_periodicDiagonal_of_integrable T hT 0 hf2 hOddAE hpI
  have hHeadZero : (∑ n ∈ Finset.range N, D n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp [D, hhead n (Finset.mem_range.mp hn)]
  have hShift : (fun n => D (n + N)) = highDiagonalTerm T N f := by
    funext n
    unfold D highDiagonalTerm
    rw [show n + N + 1 = N + 1 + n by omega]
  have hTail : HasSum (highDiagonalTerm T N f) period := by
    have hs := (summable_nat_add_iff N).2 hDiag.summable
    rw [hShift] at hs
    have hPeriod : period = ∑' n, highDiagonalTerm T N f n := by
      rw [← hDiag.tsum_eq, ← hDiag.summable.sum_add_tsum_nat_add N, hHeadZero, zero_add, hShift]
    rw [hPeriod]
    exact hs.hasSum
  have hMass : HasSum (fun n : ℕ => sineCoefficient T f (N + 1 + n) ^ 2) mass :=
    highSine_sq_hasSum T hT hf2 hOddAE hsupport hhead
  have hWeighted : HasSum (fun n : ℕ => modeWeight T β primeLoss boundaryLoss (N + 1 + n) *
      sineCoefficient T f (N + 1 + n) ^ 2) (c * mass + period) := by
    apply ((hMass.mul_left c).add hTail).congr_fun
    intro n
    simp only [modeWeight, c, highDiagonalTerm, add_mul]
  refine ⟨hWeighted.summable, ?_⟩
  rw [hWeighted.tsum_eq, shiftedOddCoreEnergy,
    oddArchimedeanEnergy_eq_periodic_add_boundary T hT hf hf2 hodd hsupport hzero]
  have hHalfMass := oddMass_eq_twice_positive T hf2.integrable_sq hOddAE hsupport
  unfold c mass period
  linarith only [hprime, hboundary, congrArg (fun x : ℝ => boundaryLoss * x) hHalfMass]

/-- Radius-two weights using the source prime bound and the sharper
Carleman plus half-exponential boundary loss. -/
theorem shiftedOddCoreEnergy_two_ge_weightedTail (β : ℝ) {N : ℕ} {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (hhead : ∀ n < N, sineCoefficient 2 f (n + 1) = 0)
    (hzero : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    let weighted : ℕ → ℝ := fun n =>
      modeWeight 2 β (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2) (N + 1 + n) *
        sineCoefficient 2 f (N + 1 + n) ^ 2
    Summable weighted ∧ (∑' n, weighted n) ≤ shiftedOddCoreEnergy 2 β f := by
  have hPrime := (le_abs_self (primeEnergy 2 f)).trans (RadiusTwoPrimeNorm.abs_primeEnergy_two_le hf2 hsupport)
  exact shiftedOddCoreEnergy_ge_weightedTail 2 (by norm_num) β (47 / 5)
    (OddSharpBoundaryNorm.boundaryLossHalfExp 2) hf hf2 hodd hsupport hhead hzero
    (by simpa only [Real.norm_eq_abs, sq_abs] using hPrime)
    (OddSharpBoundaryNorm.oddKernel_quadratic_ge_half_exp 2 (by norm_num) f hf
      hf2.integrable_sq.integrableOn)

/-- The checked mode thresholds supply a positive first tail weight and
a larger distant residual weight at the high-middle shift. -/
def radiusTwoMiddleWeight : ℕ → ℝ :=
  modeWeight 2 (-3 / 10) (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2)

/-- Positive lower weights at two receiving cutoffs. -/
theorem modeWeight_two_threeTenths_bounds :
    (∀ m ≥ 344065, (1 / 5 : ℝ) ≤ radiusTwoMiddleWeight m) ∧
    (∀ m ≥ 524289, (16 / 25 : ℝ) ≤ radiusTwoMiddleWeight m) := by
  have hExp : (1 / 8 : ℝ) ≤ Real.exp (-2) := by
    have h : Real.exp 2 < 8 := by
      rw [show (2 : ℝ) = (2 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
      exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 2).trans_lt (by norm_num)
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le (Real.exp_pos _) h.le
  have hLoss : OddSharpBoundaryNorm.boundaryLossHalfExp 2 ≤ 201 / 100 := by
    unfold OddSharpBoundaryNorm.boundaryLossHalfExp
    linarith [Real.pi_lt_d4]
  have hMono := modeWeight_mono 2 (by norm_num) (-3 / 10) (47 / 5)
    (OddSharpBoundaryNorm.boundaryLossHalfExp 2)
  constructor
  · intro m hm
    apply le_trans ?_ (hMono hm)
    unfold modeWeight
    linarith [gammaConstant_one_zero_interval.1, periodicMultiplier_radiusTwo_mode344065_gt]
  · intro m hm
    apply le_trans ?_ (hMono hm)
    unfold modeWeight
    linarith [gammaConstant_one_zero_interval.1, periodicMultiplier_radiusTwo_mode524289_gt]

/-- Complete the square in each receiving mode before summing. A positive
floor ensures the weighted price of any square-summable residual exists. -/
theorem weightedCompletion_tsum {weight coefficient residual : ℕ → ℝ} {floor : ℝ}
    (hfloor : 0 < floor) (hweight : ∀ n, floor ≤ weight n)
    (hEnergy : Summable (fun n => weight n * coefficient n ^ 2))
    (hCross : Summable (fun n => residual n * coefficient n))
    (hResidual : Summable (fun n => residual n ^ 2)) :
    Summable (fun n => residual n ^ 2 / weight n) ∧
      -(∑' n, residual n ^ 2 / weight n) ≤
        (∑' n, weight n * coefficient n ^ 2) + 2 * ∑' n, residual n * coefficient n := by
  have hpos (n : ℕ) : 0 < weight n := hfloor.trans_le (hweight n)
  have hPrice : Summable (fun n => residual n ^ 2 / weight n) :=
    Summable.of_nonneg_of_le (fun n => div_nonneg (sq_nonneg _) (hpos n).le)
      (fun n => div_le_div_of_nonneg_left (sq_nonneg _) hfloor (hweight n))
      (hResidual.div_const floor)
  refine ⟨hPrice, ?_⟩
  have hTerm (n : ℕ) : 0 ≤ weight n * coefficient n ^ 2 +
      2 * (residual n * coefficient n) + residual n ^ 2 / weight n := by
    calc
      _ = weight n * (coefficient n + residual n / weight n) ^ 2 := by
        field_simp [(hpos n).ne']
        ring
      _ ≥ 0 := mul_nonneg (hpos n).le (sq_nonneg _)
  have hSum : 0 ≤ ∑' n : ℕ, (weight n * coefficient n ^ 2 +
      2 * (residual n * coefficient n) + residual n ^ 2 / weight n) := tsum_nonneg hTerm
  rw [Summable.tsum_add (hEnergy.add (hCross.mul_left 2)) hPrice,
    Summable.tsum_add hEnergy (hCross.mul_left 2), tsum_mul_left] at hSum
  linarith only [hSum]

/-- Polarize the literal sine Parseval identity and remove the vanishing
head from one factor. -/
theorem highSine_pair_hasSum (T : ℝ) (hT : 0 < T) {N : ℕ} {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (hfo : Function.Odd f) (hgo : Function.Odd g)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n + 1) = 0) :
    HasSum (fun n : ℕ => sineCoefficient T f (N + 1 + n) * sineCoefficient T g (N + 1 + n))
      (∫ t : ℝ, f t * g t) := by
  have ho : Function.Odd (f + g) := by
    intro t
    simp only [Pi.add_apply, hfo t, hgo t]
    ring
  have hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → (f + g) t = 0 := by
    filter_upwards [hfs, hgs] with t ht ht' hOutside
    simp only [Pi.add_apply, ht hOutside, ht' hOutside, add_zero]
  have hc (n : ℕ) :
      sineCoefficient T (f + g) n = sineCoefficient T f n + sineCoefficient T g n := by
    have hb := memLp_zeroExtendedSine T n
    simpa only [sineCoefficient, Pi.add_apply, Pi.mul_apply, mul_add] using
      integral_add (hb.integrable_mul hf) (hb.integrable_mul hg)
  have hm : (∫ t : ℝ, ‖(f + g) t‖ ^ 2) - (∫ t : ℝ, ‖f t‖ ^ 2) -
      (∫ t : ℝ, ‖g t‖ ^ 2) = 2 * ∫ t : ℝ, f t * g t := by
    simp only [Real.norm_eq_abs, sq_abs]
    calc
      _ = ∫ t : ℝ, (f + g) t ^ 2 - f t ^ 2 - g t ^ 2 := by
        have hsub := integral_sub ((hf.add hg).integrable_sq.sub hf.integrable_sq) hg.integrable_sq
        simp only [Pi.sub_apply] at hsub
        rw [integral_sub (hf.add hg).integrable_sq hf.integrable_sq] at hsub
        exact hsub.symm
      _ = _ := by
        rw [← integral_const_mul]
        exact integral_congr_ae (Eventually.of_forall (fun t => by simp only [Pi.add_apply]; ring))
  have hA := hasSum_source_sineCoefficient_sq_ae T hT (hf.add hg) (Eventually.of_forall ho) hs
  have hF := hasSum_source_sineCoefficient_sq_ae T hT hf (Eventually.of_forall hfo) hfs
  have hG := hasSum_source_sineCoefficient_sq_ae T hT hg (Eventually.of_forall hgo) hgs
  let pair (n : ℕ) := sineCoefficient T f (n + 1) * sineCoefficient T g (n + 1)
  have hPair : HasSum pair (∫ t : ℝ, f t * g t) := by
    have h := ((hA.sub hF).sub hG).div_const 2
    rw [hm, mul_div_cancel_left₀ _ (by norm_num : (2 : ℝ) ≠ 0)] at h
    apply h.congr_fun
    intro n
    rw [hc]
    unfold pair
    ring
  have hZero : (∑ n ∈ Finset.range N, pair n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp [pair, hhead n (Finset.mem_range.mp hn)]
  have hTail := (summable_nat_add_iff N).2 hPair.summable
  have hValue : (∫ t : ℝ, f t * g t) = ∑' n, pair (n + N) := by
    rw [← hPair.tsum_eq, ← hPair.summable.sum_add_tsum_nat_add N, hZero, zero_add]
  rw [hValue]
  apply hTail.hasSum.congr_fun
  intro n
  unfold pair
  rw [show n + N + 1 = N + 1 + n by omega]

/-- Price the complete radius-two bordered trial residual using the
mode-dependent receiving floor and the literal output coefficients. -/
theorem shiftedOddBorderedEnergy_two_lower_weighted {M N : ℕ} (β : ℝ) (x : ℕ → ℝ) (a : ℝ)
    {floor : ℝ} (hFloor : 0 < floor)
    (hWeight : ∀ n : ℕ, floor ≤
      modeWeight 2 β (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2) (N + 1 + n))
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hhead : ∀ n < N, sineCoefficient 2 g (n + 1) = 0)
    (hEnergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    let trial : Fin M → ℝ := fun i => x (i.val + 1)
    let price := fun n : ℕ => (literalAugmentedRow M 2 x a β (N + 1 + n)) ^ 2 /
      modeWeight 2 β (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2) (N + 1 + n)
    Summable price ∧
      shiftedOddBorderedEnergy 2 β (finiteSine 2 trial) a - (∑' n, price n) ≤
        shiftedOddBorderedEnergy 2 β (finiteSine 2 trial + g) a := by
  let trial : Fin M → ℝ := fun i => x (i.val + 1)
  let F := borderedTrialOutput 2 β trial a
  have hF := borderedTrialOutput_memLp 2 (by norm_num) β trial a
  have hFo := borderedTrialOutput_odd 2 β trial a
  have hFs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → F t = 0 :=
    Eventually.of_forall (fun _ ht => borderedTrialOutput_support 2 β trial a ht)
  have hCross := highSine_pair_hasSum 2 (by norm_num) hF hg hFo hgo hFs hgs hhead
  have hResid : ∀ n : ℕ, sineCoefficient 2 F (N + 1 + n) =
      literalAugmentedRow M 2 x a β (N + 1 + n) := fun n => by
    rw [show N + 1 + n = N + n + 1 by omega]
    exact sineCoefficient_borderedTrialOutput 2 (by norm_num) β x a (N + n)
  have hFMass := hasSum_source_sineCoefficient_sq_ae 2 (by norm_num) hF (Eventually.of_forall hFo) hFs
  have hFSq : Summable (fun n : ℕ => sineCoefficient 2 F (N + 1 + n) ^ 2) := by
    simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
      (summable_nat_add_iff N).2 hFMass.summable
  dsimp only [F] at hResid hFSq
  simp_rw [hResid] at hCross hFSq
  obtain ⟨hTailSum, hTail⟩ :=
    shiftedOddCoreEnergy_two_ge_weightedTail β hgm hg hgo hgs hhead hEnergy
  obtain ⟨hPrice, hComplete⟩ := weightedCompletion_tsum hFloor hWeight hTailSum hCross.summable hFSq
  refine ⟨hPrice, ?_⟩
  rw [hCross.tsum_eq] at hComplete
  rw [shiftedOddBorderedEnergy_add_finiteSine 2 (by norm_num) β trial a hg hgm hgs hEnergy]
  have hPair : (∫ t : ℝ, F t * g t) = ∫ t : ℝ, g t * F t := by simp only [mul_comm]
  dsimp only [F] at hPair
  rw [hPair] at hComplete
  linarith only [hComplete, hTail]

/-- Keep all exact weighted finite rows and price the remote allowance
with a floor valid only at its distant cutoff. -/
theorem weightedLiteralResidual_le_finite_add_remote {N M L J : ℕ}
    (hNL : N ≤ L) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s : ℝ) (hs : 0 < s)
    (weight : ℕ → ℝ) (distantFloor : ℝ) (hdistant : 0 < distantFloor)
    (hWeight : ∀ m > L, distantFloor ≤ weight m)
    (hPrice : Summable (fun n : ℕ => (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2 /
      weight (N + 1 + n))) :
    (∑' n : ℕ, (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2 / weight (N + 1 + n)) ≤
      (∑ n ∈ Finset.range (L - N),
        (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2 / weight (N + 1 + n)) +
      completeRemoteAllowance M L J T x a s / distantFloor := by
  let price := fun n : ℕ => (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2 / weight (N + 1 + n)
  have hIndex (n : ℕ) : N + 1 + (n + (L - N)) = L + 1 + n := by omega
  have hTail := literalAugmentedRow_tail_bound hML hL hLJ T hT x a β s hs
  have hShift : Summable (fun n : ℕ => price (n + (L - N))) :=
    (summable_nat_add_iff (L - N)).2 hPrice
  have hCompare := hShift.tsum_le_tsum (fun n => by
    unfold price
    rw [hIndex n]
    exact div_le_div_of_nonneg_left (sq_nonneg _) hdistant (hWeight _ (by omega)))
    (hTail.1.div_const distantFloor)
  rw [tsum_div_const] at hCompare
  change (∑' n : ℕ, price n) ≤ (∑ n ∈ Finset.range (L - N), price n) + _
  rw [← hPrice.sum_add_tsum_nat_add (L - N)]
  exact add_le_add le_rfl (hCompare.trans (div_le_div_of_nonneg_right hTail.2 hdistant.le))

private theorem sineCoefficient_trial_mode {M : ℕ} (x : ℕ → ℝ) {n : ℕ} (hn : n < M) :
    sineCoefficient 2 (finiteSine 2 (fun i : Fin M => x (i.val + 1))) (n + 1) = x (n + 1) := by
  rw [sineCoefficient_finiteSine 2 (by norm_num) _ (by omega)]
  let j : Fin M := ⟨n, hn⟩
  rw [Finset.sum_eq_single j]
  · simp [j]
  · intro i _ hij
    refine ite_eq_right (fun he => hij (Fin.ext ?_))
    change i.val = n
    omega
  · simp

/-- Return the smaller radius-two high floor from a weighted middle
comparison with the actual signed residuals and complete remote charge. -/
theorem highFloor_two_of_weightedPaidMiddle {K M L J : ℕ}
    (hK : 344064 ≤ K) (hM : K ≤ M) (hML : M ≤ L) (hLJ : L ≤ J) (s : ℝ) (hs : 0 < s)
    (trial : (Fin K → ℝ) → ℕ → ℝ)
    (hmatch : ∀ u (i : Fin K), trial u (i.val + 1) = u i)
    (hpaid : ∀ u : Fin K → ℝ, (∀ i, i.val < 64 → u i = 0) →
      let x := trial u
      (∑ n ∈ Finset.range (L - K),
        (literalAugmentedRow M 2 x 0 (-3 / 10) (K + 1 + n)) ^ 2 /
          radiusTwoMiddleWeight (K + 1 + n)) +
        completeRemoteAllowance M L J 2 x 0 s / radiusTwoMiddleWeight (L + 1) ≤
      shiftedOddCoreEnergy 2 (-3 / 10) (finiteSine 2 (fun i : Fin M => x (i.val + 1)))) :
    HighFloor 2 (-1 / 2) (1 / 5) 64 := by
  intro f hf hfm hfo hfs hhead hEnergy
  let u (i : Fin K) : ℝ := sineCoefficient 2 f (i.val + 1)
  let x := trial u
  let coeff : Fin M → ℝ := fun i => x (i.val + 1)
  let g : ℝ → ℝ := fun t => f t - finiteSine 2 coeff t
  have hFinite := finiteSine_memLp 2 coeff
  obtain ⟨lip, hLip⟩ := finiteSine_exists_lipschitzWith 2 (by norm_num) coeff
  have hg : MemLp g 2 volume := hf.sub hFinite
  have hgm : Measurable g := hfm.sub hLip.continuous.measurable
  have hgo : Function.Odd g := by
    intro t
    dsimp only [g]
    rw [hfo t, finiteSine_odd 2 coeff t]
    ring
  have hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0 := by
    filter_upwards [hfs] with t ht hOutside
    simp [g, ht hOutside, finiteSine_eq_zero_off_window 2 coeff hOutside]
  have hHeadG (n : ℕ) (hn : n < K) : sineCoefficient 2 g (n + 1) = 0 := by
    have hTest := memLp_zeroExtendedSine 2 (n + 1)
    calc
      _ = sineCoefficient 2 f (n + 1) - sineCoefficient 2 (finiteSine 2 coeff) (n + 1) := by
        unfold sineCoefficient g
        simp only [mul_sub]
        simpa only [Pi.mul_apply] using integral_sub (hTest.integrable_mul hf)
          (hTest.integrable_mul hFinite)
      _ = _ := by
        rw [sineCoefficient_trial_mode x (hn.trans_le hM)]
        exact sub_eq_zero.mpr (hmatch u ⟨n, hn⟩).symm
  have hG : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0) :=
    integrableOn_gammaEnergy_sub_finiteSine 2 (by norm_num) coeff hf hfm hEnergy
  obtain ⟨hSummable, hReturn⟩ := shiftedOddBorderedEnergy_two_lower_weighted
    (N := K) (M := M) (-3 / 10) x 0 (by norm_num : (0 : ℝ) < 1 / 5)
    (fun n => modeWeight_two_threeTenths_bounds.1 _ (by omega)) hg hgm hgo hgs hHeadG hG
  have hDistant : 0 < radiusTwoMiddleWeight (L + 1) :=
    (by norm_num : (0 : ℝ) < 1 / 5).trans_le (modeWeight_two_threeTenths_bounds.1 _ (by omega))
  have hMono : Monotone radiusTwoMiddleWeight :=
    modeWeight_mono 2 (by norm_num) (-3 / 10) (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2)
  have hPrice := weightedLiteralResidual_le_finite_add_remote (N := K)
    (hM.trans hML) hML (by omega) hLJ 2 (by norm_num) x 0 (-3 / 10) s hs
    radiusTwoMiddleWeight _ hDistant (fun m hm => hMono (by omega : L + 1 ≤ m)) hSummable
  have hPaid := hpaid u (fun i hi => hhead i.val hi)
  have hNonneg : 0 ≤ shiftedOddBorderedEnergy 2 (-3 / 10) (finiteSine 2 coeff + g) 0 := by
    apply le_trans ?_ hReturn
    rw [show shiftedOddBorderedEnergy 2 (-3 / 10) (finiteSine 2 coeff) 0 =
      shiftedOddCoreEnergy 2 (-3 / 10) (finiteSine 2 coeff) by simp [shiftedOddBorderedEnergy]]
    exact sub_nonneg.mpr (hPrice.trans hPaid)
  have hEq : finiteSine 2 coeff + g = f := by
    funext t
    simp only [Pi.add_apply, g]
    ring
  rw [hEq] at hNonneg
  have hCore : 0 ≤ shiftedOddCoreEnergy 2 (-3 / 10) f := by
    simpa [shiftedOddBorderedEnergy] using hNonneg
  unfold shiftedOddCoreEnergy at hCore ⊢
  linarith only [hCore]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddModeDependentTail
