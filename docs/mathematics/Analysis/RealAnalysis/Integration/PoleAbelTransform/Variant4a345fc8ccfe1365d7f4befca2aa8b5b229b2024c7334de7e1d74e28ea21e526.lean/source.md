# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PoleAbelTransform.Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c42f09290414d90b352cd246d303a54d94c5ae6` · SHA-256 `4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PoleArithmeticFunctional
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Exact second Abel transform of the strict prime-and-square discrepancy

The finite closed step count retains precisely the source's strict inventory.
Its integrated error is a finite sum of ramps minus `exp t - 1 - t`.
Ordinary integration of smooth ramp branches proves the second Abel identity
without differentiating the discontinuous count. Both endpoint conditions on
the test are explicit; no arithmetic estimate is inserted.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PoleAbelTransform

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimePowerPhaseDefect Realization PrimePowerDescent
open PoleArithmeticFunctional

noncomputable section

/-- A finite closed step count, with its actual thresholds and arithmetic weights. -/
def finiteStepCount (S : Finset ℕ) (threshold weight : ℕ → ℝ) (t : ℝ) : ℝ :=
  ∑ n ∈ S, weight n * (if threshold n ≤ t then 1 else 0)

/-- The continuous-reference error of the finite closed step count. -/
def finiteAbelError (S : Finset ℕ) (threshold weight : ℕ → ℝ) (t : ℝ) : ℝ :=
  finiteStepCount S threshold weight t - (Real.exp t - 1)

/-- The finite ramp expression for the integrated arithmetic error. -/
def finiteAbelPrimitive (S : Finset ℕ) (threshold weight : ℕ → ℝ) (t : ℝ) : ℝ :=
  (∑ n ∈ S, weight n * max (t - threshold n) 0) - (Real.exp t - 1 - t)

/-- The exact closed-step integral includes the threshold atom and is a positive-part ramp. -/
theorem integral_closed_step_one (r t : ℝ) (hr : 0 ≤ r) (ht : 0 ≤ t) :
    (∫ x in (0 : ℝ)..t, if r ≤ x then (1 : ℝ) else 0) = max (t - r) 0 := by
  by_cases hrt : r ≤ t
  · rw [integral_closed_step 0 t r hr hrt, intervalIntegral.integral_const]
    simp [max_eq_left (sub_nonneg.mpr hrt)]
  · have hz : (∫ x in (0 : ℝ)..t, if r ≤ x then (1 : ℝ) else 0) = 0 := by
      calc
        _ = ∫ _ in (0 : ℝ)..t, (0 : ℝ) := by
          apply intervalIntegral.integral_congr
          intro x hx
          have hxt : x ≤ t := (uIcc_of_le ht ▸ hx).2
          simp [not_le.mpr (lt_of_le_of_lt hxt (lt_of_not_ge hrt))]
        _ = 0 := intervalIntegral.integral_zero
    rw [hz, max_eq_right (sub_nonpos.mpr (le_of_not_ge hrt))]

/-- Finite step errors are genuinely interval integrable, despite their jumps. -/
theorem finite_abel_error_interval_integrable (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (a b : ℝ) : IntervalIntegrable (finiteAbelError S threshold weight) volume a b := by
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ S,
      weight n * (if threshold n ≤ t then (1 : ℝ) else 0)) volume a b := by
    have hi : IntervalIntegrable (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) volume a b :=
      IntervalIntegrable.sum S (fun n _ ↦
      (intervalIntegrable_closed_step a b (threshold n) (fun _ ↦ (1 : ℝ))
        (continuous_const.intervalIntegrable a b)).const_mul (weight n))
    have heq : (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) =
        (fun t ↦ ∑ n ∈ S, weight n * (if threshold n ≤ t then (1 : ℝ) else 0)) := by
      funext x
      simp only [Finset.sum_apply]
    rw [← heq]
    exact hi
  exact hs.sub ((Real.continuous_exp.sub continuous_const).intervalIntegrable a b)

/-- The finite ramp is exactly the integral from zero of the finite step error. -/
theorem finite_abel_primitive_eq_integral (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (hthreshold : ∀ n ∈ S, 0 ≤ threshold n) (t : ℝ) (ht : 0 ≤ t) :
    finiteAbelPrimitive S threshold weight t =
      ∫ x in (0 : ℝ)..t, finiteAbelError S threshold weight x := by
  have hs : IntervalIntegrable (finiteStepCount S threshold weight) volume 0 t := by
    have hi : IntervalIntegrable (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) volume 0 t :=
      IntervalIntegrable.sum S (fun n _ ↦
        (intervalIntegrable_closed_step 0 t (threshold n) (fun _ ↦ (1 : ℝ))
          (continuous_const.intervalIntegrable 0 t)).const_mul (weight n))
    have heq : (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) =
        finiteStepCount S threshold weight := by
      funext x
      simp only [finiteStepCount, Finset.sum_apply]
    rw [← heq]
    exact hi
  have he : (∫ x in (0 : ℝ)..t, Real.exp x - 1) = Real.exp t - 1 - t := by
    rw [intervalIntegral.integral_sub (Real.continuous_exp.intervalIntegrable 0 t)
      (continuous_const.intervalIntegrable 0 t), integral_exp,
      intervalIntegral.integral_const]
    simp
  have hce : Continuous (fun x : ℝ ↦ Real.exp x - 1) := by fun_prop
  unfold finiteAbelError
  rw [intervalIntegral.integral_sub hs (hce.intervalIntegrable 0 t), he]
  unfold finiteStepCount finiteAbelPrimitive
  rw [intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul]
    congr 1
    exact Finset.sum_congr rfl (fun n hn ↦ by
      rw [integral_closed_step_one (threshold n) t (hthreshold n hn) ht])
  · intro n _
    exact (intervalIntegrable_closed_step 0 t (threshold n) (fun _ ↦ (1 : ℝ))
      (continuous_const.intervalIntegrable 0 t)).const_mul (weight n)

/-- A smooth test turns a single arithmetic ramp into its exact threshold evaluation. -/
theorem ramp_second_abel_atom (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F)
    (B r : ℝ) (hr : 0 ≤ r) (hrB : r ≤ B) (hFB : F B = 0)
    (hF'B : deriv F B = 0) :
    (∫ t in (0 : ℝ)..B, max (t - r) 0 * deriv (deriv F) t) = F r := by
  have hFc : Continuous (deriv F) := hF.continuous_deriv (by norm_num)
  have hFd : Differentiable ℝ F := hF.differentiable (by norm_num)
  have hFdd : Differentiable ℝ (deriv F) := hF.differentiable_deriv_two
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hc : Continuous (fun t ↦ max (t - r) 0 * deriv (deriv F) t) := by
    fun_prop
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 r) (hc.intervalIntegrable r B)]
  have hz : (∫ t in (0 : ℝ)..r, max (t - r) 0 * deriv (deriv F) t) = 0 := by
    calc
      _ = ∫ _ in (0 : ℝ)..r, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have htr := (uIcc_of_le hr ▸ ht).2
        simp [max_eq_right (sub_nonpos.mpr htr)]
      _ = 0 := intervalIntegral.integral_zero
  rw [hz, zero_add]
  have he : (∫ t in r..B, max (t - r) 0 * deriv (deriv F) t) =
      ∫ t in r..B, (t - r) * deriv (deriv F) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [max_eq_left (sub_nonneg.mpr (uIcc_of_le hrB ▸ ht).1)]
  rw [he]
  have hd (t : ℝ) : HasDerivAt (fun x ↦ (x - r) * deriv F x - F x)
      ((t - r) * deriv (deriv F) t) t := by
    have hd := (((hasDerivAt_id t).sub_const r).mul (hFdd t).hasDerivAt).sub
      (hFd t).hasDerivAt
    apply hd.congr_deriv
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    (((continuous_id.sub continuous_const).mul hFcc).intervalIntegrable r B)]
  simp [hFB, hF'B]

/-- The smooth continuum ramp contributes exactly the exponential reference. -/
theorem continuum_second_abel (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F)
    (B : ℝ) (hFB : F B = 0) (hF'B : deriv F B = 0) :
    (∫ t in (0 : ℝ)..B, (Real.exp t - 1 - t) * deriv (deriv F) t) =
      ∫ t in (0 : ℝ)..B, Real.exp t * F t := by
  have hFd : Differentiable ℝ F := hF.differentiable (by norm_num)
  have hFdd : Differentiable ℝ (deriv F) := hF.differentiable_deriv_two
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hd (t : ℝ) : HasDerivAt
      (fun x ↦ (Real.exp x - 1 - x) * deriv F x - (Real.exp x - 1) * F x)
      ((Real.exp t - 1 - t) * deriv (deriv F) t - Real.exp t * F t) t := by
    have hd := ((((Real.hasDerivAt_exp t).sub_const 1).sub (hasDerivAt_id t)).mul
      (hFdd t).hasDerivAt).sub
        (((Real.hasDerivAt_exp t).sub_const 1).mul (hFd t).hasDerivAt)
    apply hd.congr_deriv
    dsimp
    ring
  have hc : Continuous (fun t ↦ (Real.exp t - 1 - t) * deriv (deriv F) t) := by
    fun_prop
  have hec : Continuous (fun t ↦ Real.exp t * F t) := by fun_prop
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    ((hc.sub hec).intervalIntegrable 0 B)
  rw [intervalIntegral.integral_sub (hc.intervalIntegrable 0 B)
    (hec.intervalIntegrable 0 B)] at hi
  simp [hFB, hF'B] at hi
  linarith

/-- Affine changes of an Abel primitive retain exact lower endpoint corrections. -/
theorem affine_second_abel_boundary (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F)
    (B a b : ℝ) (hFB : F B = 0) (hF'B : deriv F B = 0) :
    (∫ t in (0 : ℝ)..B, (a + b * t) * deriv (deriv F) t) =
      -a * deriv F 0 + b * F 0 := by
  have hFd : Differentiable ℝ F := hF.differentiable (by norm_num)
  have hFdd : Differentiable ℝ (deriv F) := hF.differentiable_deriv_two
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hd (t : ℝ) : HasDerivAt
      (fun x ↦ (a + b * x) * deriv F x - b * F x)
      ((a + b * t) * deriv (deriv F) t) t := by
    have hd := (((hasDerivAt_id t).const_mul b).const_add a).mul (hFdd t).hasDerivAt
      |>.sub ((hFd t).hasDerivAt.const_mul b)
    apply hd.congr_deriv
    dsimp
    ring
  have hc : Continuous (fun t ↦ (a + b * t) * deriv (deriv F) t) := by fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    (hc.intervalIntegrable 0 B)]
  simp [hFB, hF'B]
  ring

/-- The finite ramp primitive is continuous, including all arithmetic thresholds. -/
theorem finite_abel_primitive_continuous (S : Finset ℕ) (threshold weight : ℕ → ℝ) :
    Continuous (finiteAbelPrimitive S threshold weight) := by
  unfold finiteAbelPrimitive
  exact (continuous_finsetSum S (fun n _ ↦
    ((continuous_id.sub continuous_const).max continuous_const).const_mul (weight n))).sub
      ((Real.continuous_exp.sub continuous_const).sub continuous_id)

/-- The second Abel integrand has genuine interval integrability for every `C²` test. -/
theorem finite_second_abel_interval_integrable (S : Finset ℕ)
    (threshold weight : ℕ → ℝ) (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F) (a b : ℝ) :
    IntervalIntegrable (fun t ↦ finiteAbelPrimitive S threshold weight t *
      deriv (deriv F) t) volume a b := by
  exact ((finite_abel_primitive_continuous S threshold weight).mul
    (hF.deriv' (n := 1)).continuous_deriv_one).intervalIntegrable a b

/-- Exact second Abel summation for finite atoms and the exponential continuum. -/
theorem finite_second_abel_identity (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F) (B : ℝ)
    (hthreshold : ∀ n ∈ S, 0 ≤ threshold n ∧ threshold n ≤ B)
    (hFB : F B = 0) (hF'B : deriv F B = 0) :
    (∑ n ∈ S, weight n * F (threshold n)) -
      (∫ t in (0 : ℝ)..B, Real.exp t * F t) =
      ∫ t in (0 : ℝ)..B, finiteAbelPrimitive S threshold weight t * deriv (deriv F) t := by
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ S,
      weight n * (max (t - threshold n) 0 * deriv (deriv F) t)) volume 0 B := by
    apply Continuous.intervalIntegrable
    exact continuous_finsetSum S (fun n _ ↦
      ((((continuous_id.sub continuous_const).max continuous_const).mul hFcc).const_mul
        (weight n)))
  have hc : Continuous (fun t ↦ (Real.exp t - 1 - t) * deriv (deriv F) t) := by
    fun_prop
  have he (t : ℝ) : finiteAbelPrimitive S threshold weight t * deriv (deriv F) t =
      (∑ n ∈ S, weight n * (max (t - threshold n) 0 * deriv (deriv F) t)) -
        (Real.exp t - 1 - t) * deriv (deriv F) t := by
    simp [finiteAbelPrimitive, sub_mul, Finset.sum_mul, mul_assoc]
  simp_rw [he]
  rw [intervalIntegral.integral_sub hs (hc.intervalIntegrable 0 B),
    intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul]
    rw [continuum_second_abel F hF B hFB hF'B]
    congr 1
    exact Finset.sum_congr rfl (fun n hn ↦ by
      rw [ramp_second_abel_atom F hF B (threshold n)
        (hthreshold n hn).1 (hthreshold n hn).2 hFB hF'B])
  · intro n _
    have hn : Continuous (fun t ↦ weight n *
        (max (t - threshold n) 0 * deriv (deriv F) t)) := by fun_prop
    exact hn.intervalIntegrable 0 B

/-- The actual finite lower-sector Chebyshev count keeps every strict prime and square. -/
def lowerStepCount (A t : ℝ) : ℝ :=
  finiteStepCount (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt t

/-- The actual finite step count minus the reference `exp t - 1` starting at zero. -/
def lowerAbelError (A t : ℝ) : ℝ :=
  finiteAbelError (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt t

/-- The integrated actual finite arithmetic error in its exact continuous ramp form. -/
def lowerAbelPrimitive (A t : ℝ) : ℝ :=
  finiteAbelPrimitive (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt t

/-- Every strict lower-sector logarithmic label is positive and strictly below `2A`. -/
theorem lower_inventory_log_bounds (A : ℝ) (n : ℕ)
    (hn : n ∈ lowerPowerInventory A) : 0 < Real.log n ∧ Real.log n < 2 * A := by
  classical
  have hnp := EstimateTailReduction.mem_primeIndices_iff A n |>.mp (Finset.mem_filter.mp hn).1
  have hnreal : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  exact ⟨Real.log_pos hnreal, (Real.log_lt_iff_lt_exp (by linarith)).mpr hnp.2⟩

/-- The actual finite arithmetic error is genuinely interval integrable. -/
theorem lower_abel_error_interval_integrable (A a b : ℝ) :
    IntervalIntegrable (lowerAbelError A) volume a b :=
  finite_abel_error_interval_integrable _ _ _ a b

/-- The actual continuous ramp is precisely `∫₀ᵗ E_L`, with no smoothness assigned to `E_L`. -/
theorem lower_abel_primitive_eq_integral (A t : ℝ) (ht : 0 ≤ t) :
    lowerAbelPrimitive A t = ∫ x in (0 : ℝ)..t, lowerAbelError A x := by
  exact finite_abel_primitive_eq_integral _ _ _
    (fun n hn ↦ (lower_inventory_log_bounds A n hn).1.le) t ht

/-- The exact closed count starts at zero because every actual logarithmic label is positive. -/
theorem lower_step_count_zero (A : ℝ) : lowerStepCount A 0 = 0 := by
  unfold lowerStepCount finiteStepCount
  apply Finset.sum_eq_zero
  intro n hn
  simp [not_le.mpr (lower_inventory_log_bounds A n hn).1]

/-- The finite arithmetic error also starts at zero under the exact `exp t - 1` reference. -/
theorem lower_abel_error_zero (A : ℝ) : lowerAbelError A 0 = 0 := by
  change lowerStepCount A 0 - (Real.exp 0 - 1) = 0
  simp [lower_step_count_zero]

/-- The integrated finite error has no omitted lower boundary term at zero. -/
theorem lower_abel_primitive_zero (A : ℝ) : lowerAbelPrimitive A 0 = 0 := by
  rw [lower_abel_primitive_eq_integral A 0 le_rfl, intervalIntegral.integral_same]

/-- The smooth logarithmic test associated to a source correlation or any continuous input. -/
def logarithmicAbelTest (f : ℝ → ℝ) (t : ℝ) : ℝ := Real.exp (-t / 2) * f t

/-- The test used in the actual second Abel pairing retains the source normalization. -/
def sourceAbelTest (A t : ℝ) : ℝ :=
  logarithmicAbelTest (sourceCorrelation explicitSecondDerivative A) t

/-- The logarithmic test at an actual label is precisely the inverse square-root source weight. -/
theorem logarithmic_abel_test_log (f : ℝ → ℝ) (n : ℕ) (hn : 0 < n) :
    logarithmicAbelTest f (Real.log n) = f (Real.log n) / Real.sqrt n :=
  exponentialTest_log f n hn

/-- The exponential reference is unchanged by the exact logarithmic test substitution. -/
theorem exponential_logarithmic_abel_test (f : ℝ → ℝ) (t : ℝ) :
    Real.exp t * logarithmicAbelTest f t = Real.exp (t / 2) * f t := by
  unfold logarithmicAbelTest
  rw [← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The second weighted test derivative includes all three ordinary correlation terms. -/
theorem logarithmic_abel_test_second_deriv (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f) (t : ℝ) :
    deriv (deriv (logarithmicAbelTest f)) t = Real.exp (-t / 2) *
      (deriv (deriv f) t - deriv f t + f t / 4) := by
  have hfd : Differentiable ℝ f := hf.differentiable (by norm_num)
  have hfdd : Differentiable ℝ (deriv f) := hf.differentiable_deriv_two
  have he (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (-y / 2))
      (-(Real.exp (-x / 2)) / 2) x := by
    have hh : HasDerivAt (fun y : ℝ ↦ -y / 2) (-(1 : ℝ) / 2) x :=
      (hasDerivAt_id x).neg.div_const 2
    apply hh.exp.congr_deriv
    ring
  have hfirst (x : ℝ) : deriv (logarithmicAbelTest f) x =
      Real.exp (-x / 2) * (deriv f x - f x / 2) := by
    have hd := (he x).mul (hfd x).hasDerivAt
    have hd' : HasDerivAt (logarithmicAbelTest f)
        (Real.exp (-x / 2) * (deriv f x - f x / 2)) x := by
      apply hd.congr_deriv
      ring
    exact hd'.deriv
  have heq : deriv (logarithmicAbelTest f) =
      fun x ↦ Real.exp (-x / 2) * (deriv f x - f x / 2) := funext hfirst
  rw [heq]
  have hd := (he t).mul (((hfdd t).hasDerivAt).sub ((hfd t).hasDerivAt.div_const 2))
  have hd' : HasDerivAt (fun x ↦ Real.exp (-x / 2) * (deriv f x - f x / 2))
      (Real.exp (-t / 2) * (deriv (deriv f) t - deriv f t + f t / 4)) t := by
    apply hd.congr_deriv
    dsimp only [Pi.sub_apply]
    ring
  exact hd'.deriv

/-- Second Abel summation observes exactly the original finite lower-sector discrepancy. -/
theorem lower_discrepancy_second_abel (A : ℝ) (f : C(ℝ, ℝ))
    (hF : ContDiff ℝ 2 (logarithmicAbelTest f))
    (hFB : logarithmicAbelTest f (2 * A) = 0)
    (hF'B : deriv (logarithmicAbelTest f) (2 * A) = 0) :
    lowerPowerDiscrepancy A f = ∫ t in (0 : ℝ)..2 * A,
      lowerAbelPrimitive A t * deriv (deriv (logarithmicAbelTest f)) t := by
  classical
  have hi := finite_second_abel_identity (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt (logarithmicAbelTest f) hF (2 * A)
    (fun n hn ↦ ⟨(lower_inventory_log_bounds A n hn).1.le,
      (lower_inventory_log_bounds A n hn).2.le⟩) hFB hF'B
  have hs : (∑ n ∈ lowerPowerInventory A,
      ArithmeticFunction.vonMangoldt n * logarithmicAbelTest f (Real.log n)) =
      ∑ n ∈ lowerPowerInventory A, primeWeight n * f (Real.log n) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnp := EstimateTailReduction.mem_primeIndices_iff A n |>.mp (Finset.mem_filter.mp hn).1
    rw [logarithmic_abel_test_log f n (by omega)]
    unfold primeWeight
    ring
  simp_rw [exponential_logarithmic_abel_test] at hi
  rw [hs] at hi
  exact hi

/-- A `C¹` function vanishing on the right half-line also has a zero derivative at its endpoint. -/
theorem deriv_upper_endpoint_zero (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (B : ℝ)
    (hzero : ∀ t, B ≤ t → F t = 0) : deriv F B = 0 := by
  have he : EqOn (deriv F) (fun _ ↦ (0 : ℝ)) (Ioi B) := by
    intro t ht
    have hz : F =ᶠ[nhds t] (fun _ ↦ (0 : ℝ)) := by
      filter_upwards [isOpen_Ioi.mem_nhds ht] with x hx
      exact hzero x hx.le
    exact ((hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq hz).deriv
  have hcl := he.closure (hF.continuous_deriv (by norm_num)) continuous_const
  exact hcl (by simp [closure_Ioi])

/-- The actual logarithmic test is zero on the entire right support half-line. -/
theorem source_abel_test_upper_zero (A : ℝ) (hA : 1 ≤ A) (t : ℝ) (ht : 2 * A ≤ t) :
    sourceAbelTest A t = 0 := by
  unfold sourceAbelTest logarithmicAbelTest
  rw [CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A t
    (by linarith) (ht.trans (le_abs_self t)), mul_zero]

/-- Accepted source regularity already proves that the actual logarithmic test is `C¹`. -/
theorem source_abel_test_cont_diff_one (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (sourceAbelTest A) := by
  unfold sourceAbelTest logarithmicAbelTest
  exact (Real.contDiff_exp.comp (contDiff_id.neg.div_const 2)).mul
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith))

/-- The first upper endpoint jet vanishes for the actual source without a new arithmetic premise. -/
theorem source_abel_test_upper_deriv_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceAbelTest A) (2 * A) = 0 :=
  deriv_upper_endpoint_zero _ (source_abel_test_cont_diff_one A hA) (2 * A)
    (source_abel_test_upper_zero A hA)

/-- Actual normalization fixes the lower endpoint test value at one. -/
theorem source_abel_test_at_zero (A : ℝ) (hA : 1 ≤ A) : sourceAbelTest A 0 = 1 := by
  simp [sourceAbelTest, logarithmicAbelTest, EstimateCorrelation.actual_correlation_at_zero A hA]

/-- Evenness and differentiability force the actual correlation derivative at zero to vanish. -/
theorem source_correlation_deriv_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hd : HasDerivAt C (deriv C 0) 0 :=
    ((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).differentiable
      (by norm_num) 0).hasDerivAt
  have he : (fun t ↦ C (-t)) = C := funext (CorrelationRegularity.sourceCorrelation_even A)
  have hd' : HasDerivAt C (deriv C 0) (-(0 : ℝ)) := by simpa using hd
  have hn : HasDerivAt (fun t ↦ C (-t)) (-deriv C 0) 0 := by
    simpa [Function.comp_def] using hd'.scomp (0 : ℝ) ((hasDerivAt_id (0 : ℝ)).neg)
  rw [he] at hn
  have hi := hn.deriv
  change deriv C 0 = 0
  linarith

/-- The actual lower endpoint derivative is `-1/2`, not zero. -/
theorem source_abel_test_deriv_at_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceAbelTest A) 0 = -(1 : ℝ) / 2 := by
  have hc : HasDerivAt (sourceCorrelation explicitSecondDerivative A) 0 0 := by
    have hd := ((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).differentiable
      (by norm_num) 0).hasDerivAt
    simpa only [source_correlation_deriv_zero A hA] using hd
  have he : HasDerivAt (fun t : ℝ ↦ Real.exp (-t / 2)) (-(1 : ℝ) / 2) 0 := by
    have hh : HasDerivAt (fun t : ℝ ↦ -t / 2) (-(1 : ℝ) / 2) 0 :=
      (hasDerivAt_id 0).neg.div_const 2
    simpa using hh.exp
  have hd := (he.mul hc).deriv
  change deriv ((fun t : ℝ ↦ Real.exp (-t / 2)) *
    sourceCorrelation explicitSecondDerivative A) 0 = -(1 : ℝ) / 2
  simpa [EstimateCorrelation.actual_correlation_at_zero A hA] using hd

/-- Conditional `C²` instantiation retains both source endpoint jets explicitly. -/
theorem source_discrepancy_second_abel_of_cont_diff (A : ℝ) (hA : 1 ≤ A)
    (hF : ContDiff ℝ 2 (sourceAbelTest A)) :
    lowerPowerDiscrepancy A (sourceCorrelationMap A hA) =
      ∫ t in (0 : ℝ)..2 * A,
        lowerAbelPrimitive A t * deriv (deriv (sourceAbelTest A)) t := by
  exact lower_discrepancy_second_abel A (sourceCorrelationMap A hA) hF
    (source_abel_test_upper_zero A hA (2 * A) le_rfl)
    (source_abel_test_upper_deriv_zero A hA)

/-- Proved actual source `C⁴` regularity supplies the `C²` logarithmic test required by Abel. -/
theorem source_abel_test_cont_diff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (sourceAbelTest A) := by
  unfold sourceAbelTest logarithmicAbelTest
  exact (Real.contDiff_exp.comp (contDiff_id.neg.div_const 2)).mul
    ((PoleCorrelationRegularity.source_correlation_cont_diff_four A hA).of_le (by norm_num))

/-- The actual second Abel pairing is genuinely integrable on its unchanged support interval. -/
theorem source_second_abel_interval_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ lowerAbelPrimitive A t * deriv (deriv (sourceAbelTest A)) t)
      volume 0 (2 * A) :=
  finite_second_abel_interval_integrable _ _ _ _ (source_abel_test_cont_diff_two A hA) _ _

/-- The completed source adapter is exact second Abel summation without a regularity premise. -/
theorem source_discrepancy_second_abel (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerDiscrepancy A (sourceCorrelationMap A hA) =
      ∫ t in (0 : ℝ)..2 * A,
        lowerAbelPrimitive A t * deriv (deriv (sourceAbelTest A)) t :=
  source_discrepancy_second_abel_of_cont_diff A hA (source_abel_test_cont_diff_two A hA)

/-- An affine Abel gauge contributes its exact nonzero positive-half-line boundary budget. -/
theorem source_affine_second_abel_boundary (A : ℝ) (hA : 1 ≤ A) (a b : ℝ) :
    (∫ t in (0 : ℝ)..2 * A, (a + b * t) * deriv (deriv (sourceAbelTest A)) t) =
      a / 2 + b := by
  rw [affine_second_abel_boundary _ (source_abel_test_cont_diff_two A hA) (2 * A) a b
    (source_abel_test_upper_zero A hA _ le_rfl) (source_abel_test_upper_deriv_zero A hA),
    source_abel_test_at_zero A hA, source_abel_test_deriv_at_zero A hA]
  ring

/-- The exact second Abel test includes `C″ - C′ + C/4` and its exponential weight. -/
theorem source_abel_test_second_deriv (A : ℝ) (hA : 1 ≤ A) (t : ℝ) :
    deriv (deriv (sourceAbelTest A)) t = Real.exp (-t / 2) *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t +
          sourceCorrelation explicitSecondDerivative A t / 4) :=
  logarithmic_abel_test_second_deriv _
    ((PoleCorrelationRegularity.source_correlation_cont_diff_four A hA).of_le (by norm_num)) t

/-- Reintroducing the exact continuum gives the unchanged finite prime-and-square contribution. -/
theorem lower_power_contribution_second_abel (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerContribution A =
      (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) +
      ∫ t in (0 : ℝ)..2 * A,
        lowerAbelPrimitive A t * deriv (deriv (sourceAbelTest A)) t := by
  have hi := source_discrepancy_second_abel A hA
  rw [lower_power_discrepancy_source] at hi
  linarith

end
end FormalResearch.RiemannHypothesis.PoleAbelTransform
```
