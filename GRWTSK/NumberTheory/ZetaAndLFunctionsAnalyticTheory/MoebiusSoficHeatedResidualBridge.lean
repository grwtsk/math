/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficBlockObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLaplace

/-!
# Weighted ordered pickup and the genuine heated residual

Exact first moments identify the heated coefficient vector of the paths.
The ordered pickup is quadratic, so its weighted value also contains the
signed contraction of the path covariance against the original response
Gram. This covariance must be paid when returning a graph pickup estimate
to the actual heated pickup.

At the genuine two-index cutoff, two integer readouts can have the exact
heated mean and exactly compensate the graph pickup while the actual heat
residual has strictly positive diagonal energy. This is a finite comparison
with `GaussianSignedResidualLaplace.residualEnergy`. The affine-frequency
pole theorem and its Hardy hypothesis remain in `GaussianSignedResidualPole`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficHeatedResidualBridge

open GRWTSK.RiemannHypothesis.CCC
open MoebiusSoficBlockObstruction GaussianSignedResidualLaplace

/-- The original signed ordered Gram contraction of the second moments
of the coefficients centered at the genuine heated coefficient. -/
def heatedPathCovariance {Path : Type*} (s T : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (coeff : Path → ℕ → ℝ) : ℝ :=
  ∑ p ∈ paths, weight p * pickupPairSum T
    (pickupPairTerm T (fun n => coeff p n - heatedCoeff s n))

private theorem weighted_pair_sum {Path : Type*} (T : ℝ) (paths : Finset Path)
    (weight : Path → ℝ) (term : Path → ℕ → ℕ → ℝ) :
    (∑ p ∈ paths, weight p * pickupPairSum T (term p)) =
      pickupPairSum T (fun m n => ∑ p ∈ paths, weight p * term p m n) := by
  simp only [pickupPairSum, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro _ _
  exact Finset.sum_comm

private theorem centered_product {Path : Type*} (paths : Finset Path)
    (w x y : Path → ℝ) (a b : ℝ)
    (hw : ∑ p ∈ paths, w p = 1)
    (hx : ∑ p ∈ paths, w p * x p = a)
    (hy : ∑ p ∈ paths, w p * y p = b) :
    (∑ p ∈ paths, w p * (x p * y p)) = a * b +
      ∑ p ∈ paths, w p * ((x p - a) * (y p - b)) := by
  have h : (∑ p ∈ paths, w p * ((x p - a) * (y p - b))) =
      ∑ p ∈ paths, (w p * (x p * y p) - (w p * x p) * b - a * (w p * y p) + w p * (a * b)) := by
    apply Finset.sum_congr rfl
    intro p _
    ring
  rw [h]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.sum_mul, ← Finset.mul_sum,
    hw, hx, hy, one_mul]
  ring

/-- Even with exact heated first moments, returning the weighted ordered
pickup to the genuine heated pickup requires its signed covariance term.
Every ordered occurrence at the original cutoff and every path weight remain. -/
theorem weightedPickupDeviation_eq_heatedDeviation_add_covariance {Path : Type*}
    (s T : ℝ) (paths : Finset Path) (weight : Path → ℝ) (coeff : Path → ℕ → ℝ)
    (hw : ∑ p ∈ paths, weight p = 1)
    (hmean : ∀ n ∈ pickupIndex T, (∑ p ∈ paths, weight p * coeff p n) = heatedCoeff s n) :
    weightedPickupDeviation T paths weight coeff =
      (pickupPairSum T (pickupPairTerm T (heatedCoeff s)) - pickupCross T) +
        heatedPathCovariance s T paths weight coeff := by
  unfold weightedPickupDeviation heatedPathCovariance
  rw [hw, one_mul, weighted_pair_sum, weighted_pair_sum]
  suffices h :
      pickupPairSum T (fun m n => ∑ p ∈ paths, weight p * pickupPairTerm T (coeff p) m n) =
      pickupPairSum T (pickupPairTerm T (heatedCoeff s)) +
        pickupPairSum T (fun m n => ∑ p ∈ paths,
          weight p * pickupPairTerm T (fun k => coeff p k - heatedCoeff s k) m n) by
    linarith
  unfold pickupPairSum
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [pickupPairTerm, hmn]
  · simp only [pickupPairTerm, ite_eq_left hmn]
    let G := pickupResponseGram T m n
    have hterm (f : Path → ℝ) : (∑ p ∈ paths, weight p * (f p * G)) =
        (∑ p ∈ paths, weight p * f p) * G := by
      simp only [Finset.sum_mul, mul_assoc]
    change (∑ p ∈ paths, weight p * ((coeff p m * coeff p n) * G)) =
      heatedCoeff s m * heatedCoeff s n * G +
        ∑ p ∈ paths, weight p * (((coeff p m - heatedCoeff s m) *
          (coeff p n - heatedCoeff s n)) * G)
    rw [hterm, hterm,
      centered_product paths weight (fun p => coeff p m) (fun p => coeff p n)
        (heatedCoeff s m) (heatedCoeff s n) hw (hmean m hm) (hmean n hn), add_mul]

/-- On the original cutoff from 1 through 2, two paths with integer readouts
and equal weights simulate the exact heated mean and the original ordered
pickup simultaneously. The genuine residual is nevertheless strictly positive.
The readout `2` is allowed by the integer decoder in the obstruction. -/
theorem exists_exact_compensation_with_heated_mean_and_positive_residual
    {T : ℝ} (h₂ : Real.log 2 < T) (h₃ : T < Real.log 3) :
    let s := (Real.log 2)⁻¹
    0 < s ∧ ∃ c : Bool → ℕ → ℤ,
      (∀ n ∈ pickupIndex T, (∑ p : Bool, (1 / 2 : ℝ) * (c p n : ℝ)) = heatedCoeff s n) ∧
      weightedPickupDeviation T Finset.univ (fun _ : Bool => 1 / 2)
        (fun p n => (c p n : ℝ)) = 0 ∧
      residualEnergy s T = pickupResponseGram T 2 2 / 4 ∧ 0 < residualEnergy s T := by
  let s := (Real.log 2)⁻¹
  let c (p : Bool) (n : ℕ) : ℤ :=
    if p then (if n = 1 then 2 else if n = 2 then -1 else 0) else 0
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hT : 0 < T := hlog.trans h₂
  have hcut : pickupIndex T = {1, 2} := by
    have lo : 2 ≤ ⌊Real.exp T⌋₊ := Nat.le_floor ((Real.log_lt_iff_lt_exp (by norm_num)).mp h₂).le
    have hi : ⌊Real.exp T⌋₊ < 3 := (Nat.floor_lt (Real.exp_nonneg T)).mpr
      ((Real.lt_log_iff_exp_lt (by norm_num)).mp h₃)
    unfold pickupIndex
    rw [show ⌊Real.exp T⌋₊ = 2 by omega]
    decide
  have hμ₁ : moebiusReal 1 = 1 := by simp [moebiusReal]
  have hμ₂ : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have hdamp : Real.exp (-s * Real.log 2 ^ 2) = 1 / 2 := by
    rw [show -s * Real.log 2 ^ 2 = -Real.log 2 by dsimp [s]; field_simp]
    rw [Real.exp_neg, Real.exp_log (show (0 : ℝ) < 2 by norm_num)]
    norm_num
  have hdamp' : Real.exp (-(s * Real.log 2 ^ 2)) = 1 / 2 := by
    simpa only [neg_mul] using hdamp
  have hh₁ : heatedCoeff s 1 = 1 := by simp [heatedCoeff, hμ₁]
  have hh₂ : heatedCoeff s 2 = -(1 / 2 : ℝ) := by
    simpa [heatedCoeff, hμ₂] using congrArg Neg.neg hdamp
  have hresponse : 0 < pickupResponse 2 T := by
    have hborn : Real.log ((2 : ℕ) : ℝ) ≤ T := by simpa only [Nat.cast_ofNat] using h₂.le
    rw [pickupResponse, ite_eq_left hborn,
      ← pickup_exp_negative_log_half (show 1 ≤ (2 : ℕ) by decide)]
    exact mul_pos (by norm_num) (sub_pos.mpr (Real.exp_lt_exp.mpr (by linarith)))
  have hgram : 0 < pickupResponseGram T 2 2 := by
    have hc : Continuous (pickupResponse 2) := pickupResponse_continuous (by decide)
    apply intervalIntegral.integral_pos hT (hc.mul hc).continuousOn
    · intro u _
      exact mul_self_nonneg (pickupResponse 2 u)
    · exact ⟨T, ⟨hT.le, le_rfl⟩, mul_pos hresponse hresponse⟩
  have henergy : residualEnergy s T = pickupResponseGram T 2 2 / 4 := by
    unfold residualEnergy
    calc
      (∫ u in (0 : ℝ)..T, residualWave s u ^ 2) =
          ∫ u in (0 : ℝ)..T, (1 / 4 : ℝ) * (pickupResponse 2 u * pickupResponse 2 u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hT.le] at hu
        change residualWave s u ^ 2 = (1 / 4 : ℝ) * (pickupResponse 2 u * pickupResponse 2 u)
        rw [residualWave_eq_signed_sum s hu.1 hu.2]
        change (∑ n ∈ pickupIndex T,
          moebiusReal n * (1 - Real.exp (-s * Real.log (n : ℝ) ^ 2)) * pickupResponse n u) ^ 2 = _
        rw [hcut]
        norm_num [Finset.sum_insert, hμ₁, hμ₂, hdamp, hdamp']
        ring
      _ = _ := by rw [intervalIntegral.integral_const_mul, ← pickupResponseGram]; ring
  refine ⟨inv_pos.mpr hlog, c, ?_, ?_, henergy, by linarith⟩
  · intro n hn
    change (∑ p : Bool, (1 / 2 : ℝ) * (c p n : ℝ)) = heatedCoeff s n
    rw [hcut] at hn
    have hn' : n = 1 ∨ n = 2 := by simpa using hn
    rcases hn' with rfl | rfl
    · rw [hh₁]
      norm_num [Fintype.sum_bool, c]
    · rw [hh₂]
      norm_num [Fintype.sum_bool, c]
  · change (∑ p : Bool, (1 / 2 : ℝ) * pickupPairSum T
      (pickupPairTerm T (fun n => (c p n : ℝ)))) -
      (∑ _ : Bool, (1 / 2 : ℝ)) * pickupPairSum T (pickupPairTerm T moebiusReal) = 0
    norm_num [Fintype.sum_bool, pickupPairSum, hcut, Finset.sum_insert, pickupPairTerm, c, hμ₁, hμ₂]
    ring

end GRWTSK.NumberTheory.Moebius.MoebiusSoficHeatedResidualBridge
