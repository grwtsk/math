/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formal proof-candidate drafting assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSparseHighGcdDenseCoreReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseCoreRowSamplingVariance
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sample ONLY the unproved low-gcd dense Möbius source

This is an exact FINITE arithmetic control-variate return to the
original source on the SAME closed endpointIndex T, no new signs.
At every original source index, the low-gcd dense row is summed
without taking abs of the signed pair entries. The original
additive-gap, outside-gap integer-ratio, and outside-those high-gcd
packets are added as separate deterministic source payments.

An arbitrary positive normalized law w on all original indices
gives an importance estimator
  Z(m) = lowRow(m)/w(m) + threePaidSectors(Q,T).
Its exact EXPECTATION is the unchanged pickupCross T.
The finite endpoint quadrature differs from this EXPECTATION by at
most 1/4 when T>=0. The bound is not a per-sample guarantee.

The source-conditioned estimator has no larger sampling variance
than a two-index sampler of the same unchanged low-gcd dense kernel.
There is no independent Möbius sign randomization, no assertion that
the original unsigned source grows slowly, and no claimed runtime
saving from computing the deterministic paid sectors.
-/

namespace GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreSampler

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreReturn
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning

/-- The exact signed original low-gcd core row; all original integer
indices, including squareful-zero Möbius terms, remain present. -/
def lowGcdDenseRow (Q : Finset ℕ) (T : ℝ) (m : ℕ) : ℝ :=
  ∑ n ∈ endpointIndex T, lowGcdDensePair Q T m n

theorem sum_lowGcdDenseRow_eq_core (Q : Finset ℕ) (T : ℝ) :
    (∑ m ∈ endpointIndex T, lowGcdDenseRow Q T m) =
      lowGcdDenseCross Q T := rfl

/-- One-index and two-index original arithmetic importance readers. -/
def lowGcdDenseRowImportance (Q : Finset ℕ) (T : ℝ)
    (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  lowGcdDenseRow Q T m / w m

def lowGcdDensePairImportance (Q : Finset ℕ) (T : ℝ)
    (w : ℕ → ℝ) (m n : ℕ) : ℝ :=
  lowGcdDensePair Q T m n / (w m * w n)

/-- Both original-index sampling laws recover the SAME signed hard
packet; no distribution of Möbius coefficients is assumed. -/
theorem lowGcdDenseRowImportance_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w (lowGcdDenseRowImportance Q T w) =
      lowGcdDenseCross Q T := by
  unfold singleExpectation lowGcdDenseRowImportance
  calc
    (∑ m ∈ endpointIndex T, w m * (lowGcdDenseRow Q T m / w m)) =
      ∑ m ∈ endpointIndex T, lowGcdDenseRow Q T m := by
        apply Finset.sum_congr rfl
        intro m hm
        have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
        field_simp [hwm]
    _ = lowGcdDenseCross Q T := sum_lowGcdDenseRow_eq_core Q T

theorem lowGcdDensePairImportance_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w (lowGcdDensePairImportance Q T w) =
      lowGcdDenseCross Q T := by
  unfold lowGcdDensePairImportance
  rw [windowPairImportance_eq_originalSum T w law]
  rfl

theorem rowExpectation_lowGcdDensePairImportance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    rowExpectation T w (lowGcdDensePairImportance Q T w) m =
      lowGcdDenseRowImportance Q T w m := by
  unfold rowExpectation lowGcdDensePairImportance
    lowGcdDenseRowImportance lowGcdDenseRow
  calc
    (∑ n ∈ endpointIndex T,
        w n * (lowGcdDensePair Q T m n / (w m * w n))) =
      ∑ n ∈ endpointIndex T, lowGcdDensePair Q T m n / w m := by
        apply Finset.sum_congr rfl
        intro n hn
        have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
        have hwn : w n ≠ 0 := ne_of_gt (law.positive n hn)
        field_simp [hwm, hwn]
    _ = (∑ n ∈ endpointIndex T, lowGcdDensePair Q T m n) / w m := by
        rw [Finset.sum_div]

/-- Original one-index core variance, including actual signs. -/
def lowGcdDenseRowVariance (Q : Finset ℕ) (T : ℝ)
    (w : ℕ → ℝ) : ℝ :=
  singleExpectation T w
    (fun m => (lowGcdDenseRowImportance Q T w m -
      lowGcdDenseCross Q T) ^ 2)

/-- The previous full finite conditional-expectation theorem exactly
realizes the variance of this particular arithmetic hard-core row. -/
theorem conditionedVariance_eq_lowGcdDenseRowVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    conditionedVariance T w (lowGcdDensePairImportance Q T w) =
      lowGcdDenseRowVariance Q T w := by
  unfold conditionedVariance lowGcdDenseRowVariance singleExpectation
  apply Finset.sum_congr rfl
  intro m hm
  rw [rowExpectation_lowGcdDensePairImportance Q T w law m hm,
    lowGcdDensePairImportance_mean Q T w law]

theorem lowGcdDenseRowVariance_le_pairVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    lowGcdDenseRowVariance Q T w ≤
      windowPairVariance T w (lowGcdDensePairImportance Q T w) := by
  rw [← conditionedVariance_eq_lowGcdDenseRowVariance Q T w law]
  exact conditionedVariance_le_windowPairVariance T w law _

/-- The **actual source-defined** original-cross estimator:
three signed original control variates, deterministically paid,
and ONLY the one-index signed low-gcd dense readout sampled. -/
def originalCrossLowGcdEstimator (Q : Finset ℕ) (T : ℝ)
    (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  lowGcdDenseRowImportance Q T w m + threePaidSectors Q T

theorem originalCrossLowGcdEstimator_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w (originalCrossLowGcdEstimator Q T w) =
      pickupCross T := by
  unfold originalCrossLowGcdEstimator
  rw [singleExpectation_add_const T w law]
  have hcore := lowGcdDenseRowImportance_mean Q T w law
  have hsource := pickupCross_eq_threePaid_add_lowGcdDense Q T
  rw [hcore]
  linarith

/-- At nonnegative time, the accessible unbiased signed-CROSS
statistic has endpoint-quadrature bias bounded by the ORIGINAL
quarter unit, IN ITS MEAN; not for every random outcome. -/
theorem originalCrossLowGcdEstimator_mean_endpointError
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    |singleExpectation T w (originalCrossLowGcdEstimator Q T w) -
      endpointSum T| ≤ (1 / 4 : ℝ) := by
  rw [originalCrossLowGcdEstimator_mean Q T w law]
  rw [abs_sub_comm]
  exact endpointSum_error hT

/-- The three original deterministic packets add ZERO sampling
variance. The remaining uncertainty is entirely the ACTUAL
signed low-gcd dense core. -/
theorem originalCrossLowGcdEstimator_variance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w
      (fun m => (originalCrossLowGcdEstimator Q T w m -
        pickupCross T) ^ 2) =
      lowGcdDenseRowVariance Q T w := by
  unfold singleExpectation lowGcdDenseRowVariance
  apply Finset.sum_congr rfl
  intro m hm
  have hsource := pickupCross_eq_threePaid_add_lowGcdDense Q T
  unfold originalCrossLowGcdEstimator
  rw [hsource]
  ring

/-- Thus the genuine unbiased signed-cross estimator has NO LARGER
finite sampling variance than sampling the unresolved kernel at
both original indices, without a physical or arithmetic iid claim. -/
theorem originalCrossLowGcdEstimator_variance_le_pair
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w
      (fun m => (originalCrossLowGcdEstimator Q T w m -
        pickupCross T) ^ 2) ≤
      windowPairVariance T w (lowGcdDensePairImportance Q T w) := by
  rw [originalCrossLowGcdEstimator_variance Q T w law]
  exact lowGcdDenseRowVariance_le_pairVariance Q T w law

end GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreSampler
