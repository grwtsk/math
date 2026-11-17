/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact finite heat and waveform return for signed Weil observations

A diagonal heat multiplier followed by a unit complex phase admits an exact
coordinatewise inverse. Readout error in a coordinate grows by the reciprocal
heat multiplier under this inverse. The source values, heat rates, phase data,
and ordered quadratic kernels are supplied by the arithmetic consumer.

For an ensemble of paths with the correct mean, the mean of the quadratic
readout equals the quadratic value at the mean plus the signed contraction of
the centered covariance. Splitting a source coordinate into its retained and
discarded parts likewise leaves both ordered mixed terms and the discarded
quadratic term. A channel ledger accepts independent lower and upper bounds
on these and the other source corrections, including an infinite tail.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WindowFilterLedger

/-- One complex coordinate of a diagonal heat and phase readout. -/
def heatWaveReadout (s lambda : ℝ) (phase source : ℂ) : ℂ :=
  (Real.exp (-(s * lambda)) : ℂ) * phase * source

/-- Exact inverse multiplier for a unit phase and a finite heat time. -/
def heatWaveDecode (s lambda : ℝ) (phase readout : ℂ) : ℂ :=
  (Real.exp (s * lambda) : ℂ) * star phase * readout

theorem heatWaveDecode_readout (s lambda : ℝ) (phase source : ℂ)
    (hphase : ‖phase‖ = 1) :
    heatWaveDecode s lambda phase (heatWaveReadout s lambda phase source) = source := by
  have hheat : (Real.exp (s * lambda) : ℂ) * (Real.exp (-(s * lambda)) : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, ← Real.exp_add, add_neg_cancel, Real.exp_zero, Complex.ofReal_one]
  have hunit : star phase * phase = 1 := by
    simpa [hphase] using Complex.conj_mul' phase
  calc
    _ = ((Real.exp (s * lambda) : ℂ) * (Real.exp (-(s * lambda)) : ℂ)) *
        (star phase * phase) * source := by unfold heatWaveDecode heatWaveReadout; ring
    _ = source := by rw [hheat, hunit, one_mul, one_mul]

/-- A signed complex sum over the supplied arithmetic support is recovered
with its original weights. -/
theorem sum_heatWaveDecode_readout {I : Type*} (indices : Finset I) (s : ℝ)
    (lambda : I → ℝ) (phase weight source : I → ℂ)
    (hphase : ∀ i ∈ indices, ‖phase i‖ = 1) :
    (∑ i ∈ indices, weight i *
      heatWaveDecode s (lambda i) (phase i) (heatWaveReadout s (lambda i) (phase i) (source i))) =
      ∑ i ∈ indices, weight i * source i := by
  apply Finset.sum_congr rfl
  intro i hi
  rw [heatWaveDecode_readout _ _ _ _ (hphase i hi)]

/-- The amplification of additive complex readout error is exact. -/
theorem norm_heatWaveDecode_error (s lambda : ℝ) (phase source error : ℂ)
    (hphase : ‖phase‖ = 1) :
    ‖heatWaveDecode s lambda phase (heatWaveReadout s lambda phase source + error) - source‖ =
      Real.exp (s * lambda) * ‖error‖ := by
  have hlinear : heatWaveDecode s lambda phase (heatWaveReadout s lambda phase source + error) =
      heatWaveDecode s lambda phase (heatWaveReadout s lambda phase source) +
        heatWaveDecode s lambda phase error := by
    simp only [heatWaveDecode, mul_add]
  rw [hlinear, heatWaveDecode_readout _ _ _ _ hphase, add_sub_cancel_left]
  simp only [heatWaveDecode, norm_mul, Complex.norm_real, norm_star, hphase, mul_one,
    Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

/-- The weighted sum of the amplified coordinate errors bounds the complex
error of the decoded finite observation. -/
theorem norm_sum_heatWaveDecode_error_le {I : Type*} (indices : Finset I) (s : ℝ)
    (lambda : I → ℝ) (phase weight source error : I → ℂ)
    (hphase : ∀ i ∈ indices, ‖phase i‖ = 1) :
    ‖(∑ i ∈ indices, weight i * heatWaveDecode s (lambda i) (phase i)
      (heatWaveReadout s (lambda i) (phase i) (source i) + error i)) -
      (∑ i ∈ indices, weight i * source i)‖ ≤
      ∑ i ∈ indices, ‖weight i‖ * (Real.exp (s * lambda i) * ‖error i‖) := by
  rw [← Finset.sum_sub_distrib]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum ?_)
  intro i hi
  rw [← mul_sub, norm_mul, norm_heatWaveDecode_error _ _ _ _ _ (hphase i hi)]

/-- Even an undamped unit waveform readout loses the source sign if only
its magnitude is retained. -/
theorem heatWave_magnitude_loses_sign :
    ‖heatWaveReadout 0 0 Complex.I (1 : ℂ)‖ =
      ‖heatWaveReadout 0 0 Complex.I (-1 : ℂ)‖ ∧ (1 : ℂ) ≠ -1 := by
  norm_num [heatWaveReadout, norm_neg]

/-- Complete ordered sesquilinear contraction with an arbitrary supplied kernel. -/
def orderedPairing {I : Type*} (indices : Finset I) (kernel : I → I → ℂ)
    (x y : I → ℂ) : ℂ :=
  ∑ i ∈ indices, ∑ j ∈ indices, kernel i j * (x i * star (y j))

/-- Full quadratic source return after retention of only part of the coordinates. -/
theorem quadratic_eq_retained_add_corrections {I : Type*} (indices : Finset I)
    (kernel : I → I → ℂ) (retained discarded : I → ℂ) :
    orderedPairing indices kernel (retained + discarded) (retained + discarded) =
      orderedPairing indices kernel retained retained +
      orderedPairing indices kernel retained discarded +
      orderedPairing indices kernel discarded retained +
      orderedPairing indices kernel discarded discarded := by
  simp only [orderedPairing, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  simp only [Pi.add_apply, star_add]
  ring

/-- Two disjoint coordinate vectors can have zero individual quadratic
values and a nonzero quadratic value when combined. -/
theorem offDiagonal_projection_control :
    let kernel (i j : Bool) : ℂ := if i = j then 0 else 1
    let retained (i : Bool) : ℂ := if i then 1 else 0
    let discarded (i : Bool) : ℂ := if i then 0 else 1
    orderedPairing Finset.univ kernel retained retained = 0 ∧
      orderedPairing Finset.univ kernel discarded discarded = 0 ∧
      orderedPairing Finset.univ kernel (retained + discarded) (retained + discarded) = 2 := by
  norm_num [orderedPairing, Fintype.sum_bool, Pi.add_apply]

/-- The signed contraction of centered path fluctuations with the source kernel. -/
def pathCovariance {I Path : Type*} (indices : Finset I) (kernel : I → I → ℂ)
    (paths : Finset Path) (weight : Path → ℝ) (x : Path → I → ℂ) (mean : I → ℂ) : ℂ :=
  ∑ path ∈ paths, (weight path : ℂ) *
    orderedPairing indices kernel (x path - mean) (x path - mean)

private theorem centeredProduct {Path : Type*} (paths : Finset Path) (weight : Path → ℝ)
    (x y : Path → ℂ) (a b : ℂ)
    (hw : (∑ path ∈ paths, (weight path : ℂ)) = 1)
    (hx : (∑ path ∈ paths, (weight path : ℂ) * x path) = a)
    (hy : (∑ path ∈ paths, (weight path : ℂ) * y path) = b) :
    (∑ path ∈ paths, (weight path : ℂ) * (x path * star (y path))) =
      a * star b +
        ∑ path ∈ paths, (weight path : ℂ) * ((x path - a) * star (y path - b)) := by
  have hconj : (∑ path ∈ paths, (weight path : ℂ) * star (y path)) = star b := by
    simpa using congrArg (starRingEnd ℂ) hy
  have hexpand : (∑ path ∈ paths, (weight path : ℂ) * ((x path - a) * star (y path - b))) =
      ∑ path ∈ paths,
        ((weight path : ℂ) * (x path * star (y path)) -
          ((weight path : ℂ) * x path) * star b -
          a * ((weight path : ℂ) * star (y path)) +
          (weight path : ℂ) * (a * star b)) := by
    apply Finset.sum_congr rfl
    intro path _
    rw [star_sub]
    ring
  rw [hexpand]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.sum_mul, ← Finset.mul_sum,
    hw, hx, hconj, one_mul]
  ring

private theorem sum_orderedPairing {I Path : Type*} (indices : Finset I) (kernel : I → I → ℂ)
    (paths : Finset Path) (weight : Path → ℝ) (x : Path → I → ℂ) :
    (∑ path ∈ paths, (weight path : ℂ) * orderedPairing indices kernel (x path) (x path)) =
      ∑ i ∈ indices, ∑ j ∈ indices, kernel i j *
        (∑ path ∈ paths, (weight path : ℂ) * (x path i * star (x path j))) := by
  simp only [orderedPairing, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  apply Finset.sum_congr rfl
  intro path _
  ring

/-- Signed covariance is the exact correction from a path ensemble to the
quadratic value of its mean. Real path weights may be signed. -/
theorem weighted_quadratic_eq_mean_add_covariance {I Path : Type*} (indices : Finset I)
    (kernel : I → I → ℂ) (paths : Finset Path) (weight : Path → ℝ)
    (x : Path → I → ℂ) (mean : I → ℂ)
    (hw : (∑ path ∈ paths, (weight path : ℂ)) = 1)
    (hmean : ∀ i ∈ indices, (∑ path ∈ paths, (weight path : ℂ) * x path i) = mean i) :
    (∑ path ∈ paths, (weight path : ℂ) * orderedPairing indices kernel (x path) (x path)) =
      orderedPairing indices kernel mean mean + pathCovariance indices kernel paths weight x mean := by
  rw [pathCovariance, sum_orderedPairing, sum_orderedPairing]
  simp only [orderedPairing, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  rw [← mul_add, centeredProduct paths weight (fun p => x p i) (fun p => x p j)
    (mean i) (mean j) hw (hmean i hi) (hmean j hj)]
  rfl

/-- Corrections are signed in the direction from readout to source.
Omitted active prime powers and the infinite analytic tail have separate entries. -/
inductive ErrorChannel
  | retainedReadout
  | omittedPrimePowers
  | dualCharacter
  | covariance
  | mixedTerms
  | discardedQuadratic
  | conductor
  | archimedean
  | pole
  | infiniteTail
  deriving DecidableEq

instance : Fintype ErrorChannel where
  elems := {.retainedReadout, .omittedPrimePowers, .dualCharacter, .covariance, .mixedTerms,
    .discardedQuadratic, .conductor, .archimedean, .pole, .infiniteTail}
  complete := by intro channel; cases channel <;> simp

/-- The sum of certified channel lower bounds and the sum of channel upper
bounds enclose any readout with the supplied exact signed decomposition. -/
theorem source_enclosure {source readout : ℝ} (correction lower upper : ErrorChannel → ℝ)
    (hexact : source = readout + ∑ channel, correction channel)
    (hlo : ∀ channel, lower channel ≤ correction channel)
    (hhi : ∀ channel, correction channel ≤ upper channel) :
    readout + (∑ channel, lower channel) ≤ source ∧
      source ≤ readout + ∑ channel, upper channel := by
  rw [hexact]
  exact ⟨add_le_add (le_refl readout) (Finset.sum_le_sum (fun channel _ => hlo channel)),
    add_le_add (le_refl readout) (Finset.sum_le_sum (fun channel _ => hhi channel))⟩


/-- Sharp signed error for independent real and imaginary raw sensor intervals.
The coefficient includes the signed source weight and the full inverse phase. -/
theorem signed_box_error_sharp {I : Type*} (indices : Finset I)
    (coefficient : I → ℂ) (u v : I → ℝ)
    (hu : ∀ i ∈ indices, 0 ≤ u i) (hv : ∀ i ∈ indices, 0 ≤ v i) :
    let budget := ∑ i ∈ indices, (|(coefficient i).re| * u i + |(coefficient i).im| * v i)
    (∀ e : I → ℂ, (∀ i ∈ indices, |(e i).re| ≤ u i ∧ |(e i).im| ≤ v i) →
      |∑ i ∈ indices, (coefficient i * e i).re| ≤ budget) ∧
    ∃ e : I → ℂ, (∀ i ∈ indices, |(e i).re| ≤ u i ∧ |(e i).im| ≤ v i) ∧
      (∑ i ∈ indices, (coefficient i * e i).re) = budget := by
  intro budget
  constructor
  · intro e box
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i hi => ?_)
    rw [Complex.mul_re]
    refine (abs_sub _ _).trans ?_
    rw [abs_mul, abs_mul]
    exact add_le_add (mul_le_mul_of_nonneg_left (box i hi).1 (abs_nonneg _))
      (mul_le_mul_of_nonneg_left (box i hi).2 (abs_nonneg _))
  · let endpoint (a r : ℝ) := if 0 ≤ a then r else -r
    have he (a r : ℝ) (hr : 0 ≤ r) : |endpoint a r| = r := by
      by_cases ha : 0 ≤ a <;> simp [endpoint, ha, abs_of_nonneg hr]
    have align (a r : ℝ) : a * endpoint a r = |a| * r := by
      by_cases ha : 0 ≤ a
      · simp [endpoint, ha, abs_of_nonneg ha]
      · simp only [endpoint, ite_eq_right ha, abs_of_neg (lt_of_not_ge ha)]
        ring
    let e (i : I) : ℂ :=
      ⟨endpoint (coefficient i).re (u i), -endpoint (coefficient i).im (v i)⟩
    refine ⟨e, fun i hi => ?_, ?_⟩
    · change |endpoint (coefficient i).re (u i)| ≤ u i ∧
        |-endpoint (coefficient i).im (v i)| ≤ v i
      rw [abs_neg, he _ _ (hu i hi), he _ _ (hv i hi)]
      exact ⟨le_rfl, le_rfl⟩
    · apply Finset.sum_congr rfl
      intro i _
      rw [Complex.mul_re]
      change (coefficient i).re * endpoint (coefficient i).re (u i) -
        (coefficient i).im * (-endpoint (coefficient i).im (v i)) = _
      rw [mul_neg, sub_neg_eq_add, align, align]

/-- The signed decoded residual is governed by the actual inverse-phase
coefficient on each raw sensor error. -/
theorem signed_heatWaveDecode_residual {I : Type*} (indices : Finset I) (s : ℝ)
    (lambda : I → ℝ) (phase weight source error : I → ℂ)
    (hphase : ∀ i ∈ indices, ‖phase i‖ = 1) :
    (∑ i ∈ indices, (weight i * heatWaveDecode s (lambda i) (phase i)
      (heatWaveReadout s (lambda i) (phase i) (source i) + error i)).re) -
      (∑ i ∈ indices, (weight i * source i).re) =
    ∑ i ∈ indices, (weight i * (Real.exp (s * lambda i) : ℂ) *
      star (phase i) * error i).re := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have split : heatWaveDecode s (lambda i) (phase i)
      (heatWaveReadout s (lambda i) (phase i) (source i) + error i) =
      source i + heatWaveDecode s (lambda i) (phase i) (error i) := by
    conv_lhs => unfold heatWaveDecode; rw [mul_add]
    rw [← heatWaveDecode, heatWaveDecode_readout _ _ _ _ (hphase i hi)]
    rfl
  rw [split, mul_add, Complex.add_re, add_sub_cancel_left]
  congr 1
  unfold heatWaveDecode
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.WindowFilterLedger
