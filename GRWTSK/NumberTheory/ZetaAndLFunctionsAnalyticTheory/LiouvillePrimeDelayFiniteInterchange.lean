/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeDelayIntegratedReturn
import Mathlib

/-!
# Actual Liouville prime-delay: finite-support integral interchange

This file eliminates the arbitrary hInt finite-sum interchange premise of
LiouvillePrimeDelayIntegratedReturn. It retains the exact original waveform,
the literal pickupResponse, and all prime-power multiples.

The one-prime source identity remains visibly assumed as hPrime: its finite
multiple-index bijection and scalar scaling require separate source-level
completion and native elaboration. Thus this increment does not establish an
unconditional integrated prime-delay theorem or arithmetic cancellation.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
open GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.LiouvillePrimeDelayIntegratedReturn

namespace GRWTSK.NumberTheory.LiouvillePrimeDelayFiniteInterchange

/-- The fixed original source is a finite sum of continuous original
pickup responses. The nonzero source indices are positive. -/
theorem fixedWaveform_continuous (T : ℝ) :
    Continuous (fixedWaveform T) := by
  unfold fixedWaveform
  fun_prop (disch := omega)

/-- The original dynamic waveform is pointwise equal on [0,T] to the
fixed continuous source. Shifted arguments below zero remain zero by
the exact birth support, rather than by a synthetic extension. -/
theorem original_delayed_product_eq_fixed
    (T u : ℝ) (p : ℕ) (hp : 1 ≤ p)
    (hu : u ≤ T) :
    waveform u * waveform (u - Real.log p) =
      fixedWaveform T u * fixedWaveform T (u - Real.log p) := by
  have hlog : 0 ≤ Real.log (p : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hp)
  rw [waveform_eq_fixed_of_le T u hu,
      waveform_eq_fixed_of_le T (u - Real.log p) (by linarith)]

/-- Every p-shifted product admits an interval-integrable fixed continuous
representative on [0,T]. This is sufficient for exact finite integration,
without asserting global continuity of the dynamic cutoff function. -/
theorem fixed_delayed_product_intervalIntegrable
    (T : ℝ) (p : ℕ) :
    IntervalIntegrable
      (fun u : ℝ => fixedWaveform T u *
        fixedWaveform T (u - Real.log p)) volume 0 T := by
  have hc : Continuous
      (fun u : ℝ => fixedWaveform T u *
        fixedWaveform T (u - Real.log p)) :=
    (fixedWaveform_continuous T).mul
      ((fixedWaveform_continuous T).comp
        (continuous_id.sub continuous_const))
  exact hc.intervalIntegrable 0 T

/-- The complete weightedDelayedCovariance is exactly the integral of the
finite weighted prime-delay sum. No hInt identity is postulated. -/
theorem weightedDelayedCovariance_eq_integral_finset
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ)
    (hP : ∀ p ∈ P, Nat.Prime p) :
    weightedDelayedCovariance P w T =
      ∫ u in (0 : ℝ)..T,
        waveform u *
          (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
            waveform (u - Real.log p)) := by
  classical
  have hpoint (p : ℕ) (hp : p ∈ P) (u : ℝ)
      (hu : u ∈ Set.uIcc (0 : ℝ) T) :
      waveform u * waveform (u - Real.log p) =
        fixedWaveform T u * fixedWaveform T (u - Real.log p) := by
    apply original_delayed_product_eq_fixed T u p (hP p hp).one_le
    exact (Set.mem_uIcc.mp hu).2
  have hInt : ∀ p ∈ P,
      IntervalIntegrable
        (fun u : ℝ =>
          (w p / Real.sqrt (p : ℝ)) *
            (fixedWaveform T u *
              fixedWaveform T (u - Real.log p))) volume 0 T := by
    intro p hp
    exact (fixed_delayed_product_intervalIntegrable T p).const_mul _
  unfold weightedDelayedCovariance delayedCovariance
  have hterm (p : ℕ) (hp : p ∈ P) :
      (w p / Real.sqrt (p : ℝ)) *
        (∫ u in (0 : ℝ)..T,
          waveform u * waveform (u - Real.log p)) =
      ∫ u in (0 : ℝ)..T,
        (w p / Real.sqrt (p : ℝ)) *
          (fixedWaveform T u * fixedWaveform T (u - Real.log p)) := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro u hu
    rw [hpoint p hp u (Set.mem_uIcc_of_le hu.1.le hu.2)]
  calc
    (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
      (∫ u in (0 : ℝ)..T,
        waveform u * waveform (u - Real.log p))) =
      ∑ p ∈ P, ∫ u in (0 : ℝ)..T,
        (w p / Real.sqrt (p : ℝ)) *
          (fixedWaveform T u *
            fixedWaveform T (u - Real.log p)) := by
              apply Finset.sum_congr rfl
              intro p hp
              exact hterm p hp
    _ = ∫ u in (0 : ℝ)..T, ∑ p ∈ P,
        (w p / Real.sqrt (p : ℝ)) *
          (fixedWaveform T u *
            fixedWaveform T (u - Real.log p)) := by
              symm
              exact intervalIntegral.integral_finsetSum hInt
    _ = ∫ u in (0 : ℝ)..T,
        waveform u *
          (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
            waveform (u - Real.log p)) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p hp
      rw [original_delayed_product_eq_fixed T u p
        (hP p hp).one_le hu.2]
      ring

/-- Removes the previously explicit hInt interchange premise, retaining
only the genuine unproved one-prime source reindexing. -/
theorem covariance_eq_negative_complete_mixed_of_primeIdentity
    (hPrime : PrimeDivisorWaveformIdentity)
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ)
    (hT : 0 ≤ T) (hP : ∀ p ∈ P, Nat.Prime p) :
    weightedDelayedCovariance P w T =
      -(originalMixedDiagonal P
          (Finset.Icc 1 ⌊Real.exp T⌋₊) w
          (originalCausalKernel T) +
        originalMixedOffDiagonal P
          (Finset.Icc 1 ⌊Real.exp T⌋₊) w
          (originalCausalKernel T)) := by
  exact weightedDelayedCovariance_eq_negative_complete_mixed
    P w T hT hPrime hP
      (weightedDelayedCovariance_eq_integral_finset P w T hP)

end GRWTSK.NumberTheory.LiouvillePrimeDelayFiniteInterchange
