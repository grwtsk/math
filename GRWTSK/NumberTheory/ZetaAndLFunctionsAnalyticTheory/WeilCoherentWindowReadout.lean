/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import Mathlib.MeasureTheory.Function.LpSeminorm.SMul
import Mathlib.Tactic

/-!
# Coherent translation readout of the signed Weil prime term

One common arm sums the calibrated translations before either energy is
measured. The two energies of the sum and difference recover the original
signed prime-power term. The terms quadratic in the common arm cancel,
including terms between different translates. Both energies may be integrated
over the original support interval of the test.

The original explicit-formula sum, gamma contribution, and poles remain
source data. Calibration of an actual hardware observation is separate.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout

open FirstPrimeWindow SourcePrimeCorrelation LowSchur CharacterWindow OddRootProjection

variable {q : ℕ}

/-- The common arm is a single coherent sum of shifted copies of the test. -/
def arm (S : Finset ℕ) (c : ℕ → ℂ) (f : ℝ → ℂ) : ℝ → ℂ :=
  fun t => ∑ n ∈ S, c n * f (t + Real.log (n : ℝ))

/-- Both energies use the original observation aperture. -/
def probes (A : ℝ) (S : Finset ℕ) (c : ℕ → ℂ) (f : ℝ → ℂ) : ℝ × ℝ :=
  (∫ t in Icc (-A) A, ‖f t + arm S c f t‖ ^ 2,
   ∫ t in Icc (-A) A, ‖f t - arm S c f t‖ ^ 2)

def decode (measurement : ℝ × ℝ) : ℝ :=
  (measurement.1 - measurement.2) / 2

theorem unequal_arm_energy_difference (x plus minus : ℂ) :
    ‖x + plus‖ ^ 2 - ‖x - minus‖ ^ 2 =
      ‖plus‖ ^ 2 - ‖minus‖ ^ 2 + 2 * (conj x * (plus + minus)).re := by
  rw [← Complex.normSq_eq_norm_sq (x + plus), ← Complex.normSq_eq_norm_sq (x - minus),
    Complex.normSq_add, Complex.normSq_sub, Complex.normSq_eq_norm_sq plus,
    Complex.normSq_eq_norm_sq minus]
  simp only [mul_add, Complex.add_re, Complex.mul_re, Complex.conj_re, Complex.conj_im]
  ring

private theorem energy_difference (x y : ℂ) :
    ‖x + y‖ ^ 2 - ‖x - y‖ ^ 2 = 4 * (conj x * y).re := by
  rw [unequal_arm_energy_difference, mul_add, Complex.add_re]
  ring

private theorem arm_memLp (S : Finset ℕ) (c : ℕ → ℂ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) : MemLp (arm S c f) 2 volume := by
  unfold arm
  apply memLp_finsetSum
  intro n _
  exact (hf.comp_measurePreserving (measurePreserving_add_right volume _)).const_mul (c n)

private theorem cross_integral (S : Finset ℕ) (c : ℕ → ℂ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) :
    Integrable (fun t : ℝ => conj (f t) * arm S c f t) ∧
      (∫ t : ℝ, conj (f t) * arm S c f t) =
        ∑ n ∈ S, c n * correlation f (Real.log (n : ℝ)) := by
  have expand : (fun t : ℝ => conj (f t) * (arm S c f t)) =
      fun t => ∑ n ∈ S, c n * (conj (f t) * f (t + Real.log (n : ℝ))) := by
    funext t
    rw [arm, Finset.mul_sum]
    exact Finset.sum_congr rfl (fun _ _ => mul_left_comm _ _ _)
  have extra (n : ℕ) (_ : n ∈ S) :
      Integrable (fun t : ℝ => c n * (conj (f t) * f (t + Real.log (n : ℝ)))) :=
    (integrable_correlation_integrand hf _).const_mul (c n)
  rw [expand]
  refine ⟨integrable_finsetSum S extra, ?_⟩
  rw [integral_finsetSum S extra]
  apply Finset.sum_congr rfl
  intro n _
  rw [integral_const_mul, correlation]

def signedRow (S : Finset ℕ) (c : ℕ → ℂ) (f : ℝ → ℂ) : ℝ :=
  2 * ∑ n ∈ S, (c n * correlation f (Real.log (n : ℝ))).re

/-- The energy difference outside the original interval is zero because both
probes use the same arm and the original test vanishes there. -/
theorem clipped_decode_eq (A : ℝ) (S : Finset ℕ) (c : ℕ → ℂ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (inside : tsupport f ⊆ Icc (-A) A) :
    decode (probes A S c f) = signedRow S c f := by
  have hp := (hf.add (arm_memLp S c hf)).integrable_norm_pow (p := 2) (by norm_num)
  have hm := (hf.sub (arm_memLp S c hf)).integrable_norm_pow (p := 2) (by norm_num)
  have clip :
      (∫ t in Icc (-A) A, (‖f t + arm S c f t‖ ^ 2 - ‖f t - arm S c f t‖ ^ 2)) =
      ∫ t : ℝ, (‖f t + arm S c f t‖ ^ 2 - ‖f t - arm S c f t‖ ^ 2) := by
    apply setIntegral_eq_integral_of_forall_compl_eq_zero
    intro t outside
    have zero : f t = 0 := by
      by_contra nonzero
      exact outside (inside (subset_closure nonzero))
    rw [energy_difference, zero]
    simp
  obtain ⟨cross, integral⟩ := cross_integral S c hf
  have reIntegral : (∫ t : ℝ, (conj (f t) * arm S c f t).re) =
      (∫ t : ℝ, conj (f t) * arm S c f t).re :=
    integral_re cross
  have pointwise : (fun t : ℝ => ‖f t + arm S c f t‖ ^ 2 - ‖f t - arm S c f t‖ ^ 2) =
      fun t => 4 * (conj (f t) * arm S c f t).re :=
    funext fun t => energy_difference (f t) (arm S c f t)
  change ((∫ t in Icc (-A) A, ‖(f + arm S c f) t‖ ^ 2) -
    (∫ t in Icc (-A) A, ‖(f - arm S c f) t‖ ^ 2)) / 2 = signedRow S c f
  rw [← integral_sub hp.integrableOn hm.integrableOn]
  simp only [Pi.add_apply, Pi.sub_apply]
  rw [clip, pointwise, integral_const_mul, reIntegral, integral, Complex.re_sum]
  unfold signedRow
  ring

/-- Use the inverse-character orientation of the original physical formula. -/
def coefficient (χ : DirichletCharacter ℂ q) (n : ℕ) : ℂ :=
  (primeWeight n : ℂ) * conj ((χ⁻¹) n)

theorem signedRow_native (S : Finset ℕ) (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ) :
    signedRow S (coefficient χ) f =
      primeReadout S (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))) := by
  simp [signedRow, coefficient, primeReadout, primeAtom, mul_assoc]

theorem signedRow_full (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    signedRow (supportedPowers A) (coefficient χ) f =
      twistedPrime A χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))) := by
  rw [signedRow_native, twistedPrime_eq_window_add_later]
  unfold primeReadout
  rw [← mul_add]
  congr 1
  simpa only [firstPowers, laterPowers, ← not_lt] using
    (Finset.sum_filter_add_sum_filter_not (supportedPowers A)
      (fun n : ℕ => n.minFac < 503)
      (fun n => (primeAtom χ⁻¹ (fun m => correlation f (Real.log (m : ℝ))) n).re)).symm

theorem coherent_first_window (χ : DirichletCharacter ℂ q) (A : ℝ) (test : WindowTest A) :
    decode (probes A (firstPowers A) (coefficient χ) test.1) =
      signedWindowValue χ A test.1 := by
  rw [clipped_decode_eq A _ _ (test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1)
    test.2.2.2, signedRow_native, signedWindowValue]

theorem coherent_determines_window (χ : DirichletCharacter ℂ q) (A : ℝ) :
    DeterminesWindowReadout χ A (fun test => probes A (firstPowers A) (coefficient χ) test.1) :=
  (determinesWindowReadout_iff χ A _).mpr ⟨decode, coherent_first_window χ A⟩

/-- Keep the conductor, full gamma integral and original poles verbatim. -/
def reportedValue (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ) (signed : ℝ) : ℂ :=
  ((gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    signed : ℝ) : ℂ) + poleTerm q f

theorem physicalValue_coherent (χ : DirichletCharacter ℂ q) (A : ℝ) (test : WindowTest A) :
    physicalValue χ A test.1 =
      reportedValue χ test.1 (decode (probes A (supportedPowers A) (coefficient χ) test.1)) := by
  rw [clipped_decode_eq A _ _ (test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1)
    test.2.2.2, signedRow_full]
  rfl

/-- Rewrites the original zero sum, leaving the index and summands unchanged. -/
theorem hasSum_coherent {Z : Type*} (z : Z → ℂ) (χ : DirichletCharacter ℂ q)
    (A : ℝ) (test : WindowTest A) (source : HasSum z (physicalValue χ A test.1)) :
    HasSum z (reportedValue χ test.1 (decode (probes A (supportedPowers A)
      (coefficient χ) test.1))) := by
  rwa [← physicalValue_coherent χ A test]

open WindowFilterLedger in
/-- A known unit waveform phase and the exact inverse heat calibration can be
applied to the delay coefficients before forming the common arm. -/
theorem physicalValue_coherent_calibrated (χ : DirichletCharacter ℂ q) (A : ℝ)
    (test : WindowTest A) (s rate : ℕ → ℝ) (phase : ℕ → ℂ)
    (unitPhase : ∀ n ∈ supportedPowers A, ‖phase n‖ = 1) :
    let c := fun n => heatWaveDecode (s n) (rate n) (phase n)
      (heatWaveReadout (s n) (rate n) (phase n) (coefficient χ n))
    physicalValue χ A test.1 =
      reportedValue χ test.1 (decode (probes A (supportedPowers A) c test.1)) := by
  intro c
  have hf : MemLp test.1 2 volume :=
    test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1
  rw [physicalValue_coherent χ A test,
    clipped_decode_eq A (supportedPowers A) (coefficient χ) hf test.2.2.2,
    clipped_decode_eq A (supportedPowers A) c hf test.2.2.2]
  congr 1
  unfold signedRow
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  dsimp only [c]
  rw [heatWaveDecode_readout _ _ _ _ (unitPhase n hn)]

/-- The signed change for a shared calibrated arm and additive detector errors.
Its sign is original arithmetic value minus reported arithmetic value. -/
def calibrationDefect (S : Finset ℕ) (c target : ℕ → ℂ) (f : ℝ → ℂ)
    (plusError minusError : ℝ) : ℝ :=
  signedRow S (fun n => c n - target n) f + (plusError - minusError) / 2

private theorem signedRow_sub (S : Finset ℕ) (c target : ℕ → ℂ) (f : ℝ → ℂ) :
    signedRow S c f - signedRow S target f = signedRow S (fun n => c n - target n) f := by
  unfold signedRow
  rw [← mul_sub, ← Finset.sum_sub_distrib]
  congr 1
  exact Finset.sum_congr rfl fun n _ => by rw [sub_mul, Complex.sub_re]

theorem physicalValue_sub_reported (χ : DirichletCharacter ℂ q) (A : ℝ) (test : WindowTest A)
    (c : ℕ → ℂ) (plusError minusError : ℝ) :
    let m := probes A (supportedPowers A) c test.1
    physicalValue χ A test.1 -
      reportedValue χ test.1 (decode (m.1 + plusError, m.2 + minusError)) =
      (calibrationDefect (supportedPowers A) c (coefficient χ) test.1 plusError minusError : ℂ) := by
  intro m
  have measured : decode m = signedRow (supportedPowers A) c test.1 :=
    clipped_decode_eq A _ c (test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1) test.2.2.2
  have noisy : decode (m.1 + plusError, m.2 + minusError) =
      decode m + (plusError - minusError) / 2 := by
    simp only [decode]
    ring
  rw [noisy, measured, calibrationDefect, ← signedRow_sub, physicalValue_coherent χ A test,
    clipped_decode_eq A _ _ (test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1) test.2.2.2]
  unfold reportedValue
  push_cast
  ring

theorem abs_calibrationDefect_le (S : Finset ℕ) (c target : ℕ → ℂ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (plusError minusError : ℝ) :
    |calibrationDefect S c target f plusError minusError| ≤
      (2 * ∑ n ∈ S, ‖c n - target n‖) * energy f +
      (|plusError| + |minusError|) / 2 := by
  unfold calibrationDefect signedRow
  refine (abs_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), mul_assoc, Finset.sum_mul]
    apply mul_le_mul_of_nonneg_left _ (by norm_num)
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n _ => ?_)
    calc
      _ ≤ ‖(c n - target n) * correlation f (Real.log (n : ℝ))‖ :=
        Complex.abs_re_le_norm _
      _ ≤ _ := by
        rw [norm_mul]
        exact mul_le_mul_of_nonneg_left (norm_correlation_le_energy hf _) (norm_nonneg _)
  · rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    exact div_le_div_of_nonneg_right (abs_sub _ _) (by norm_num)

/-- Two-sided uncertainty on the whole source value with the conductor,
gamma integral, and poles evaluated at the original test. -/
theorem physicalValue_error_le (χ : DirichletCharacter ℂ q) (A : ℝ) (test : WindowTest A)
    (c : ℕ → ℂ) (plusError minusError : ℝ) :
    let m := probes A (supportedPowers A) c test.1
    ‖physicalValue χ A test.1 -
      reportedValue χ test.1 (decode (m.1 + plusError, m.2 + minusError))‖ ≤
      (2 * ∑ n ∈ supportedPowers A, ‖c n - coefficient χ n‖) * energy test.1 +
        (|plusError| + |minusError|) / 2 := by
  have equality := physicalValue_sub_reported χ A test c plusError minusError
  dsimp only at equality ⊢
  rw [equality, Complex.norm_real, Real.norm_eq_abs]
  exact abs_calibrationDefect_le _ _ _
    (test.2.1.continuous.memLp_of_hasCompactSupport test.2.2.1) _ _

theorem common_bias_cancels (S : Finset ℕ) (c target : ℕ → ℂ) (f : ℝ → ℂ) (e : ℝ) :
    calibrationDefect S c target f e e = signedRow S (fun n => c n - target n) f := by
  simp [calibrationDefect]

/-- A matched average arm can still give the wrong result if its two probe
arms differ. The scalar control uses reference 1 and arms 2 and 0. -/
theorem unequal_arms_control :
    (‖(1 : ℂ) + 2‖ ^ 2 - ‖(1 : ℂ) - 0‖ ^ 2) / 2 = 4 ∧
      (‖(1 : ℂ) + 1‖ ^ 2 - ‖(1 : ℂ) - 1‖ ^ 2) / 2 = 2 := by
  norm_num [Complex.norm_natCast]

end GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout
