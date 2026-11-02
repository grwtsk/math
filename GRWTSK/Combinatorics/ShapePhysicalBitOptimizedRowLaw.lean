/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitRowConditioning
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-derived strictly positive row importance law

The previous source proves that replacing the complete ordered-pair
estimator by its signed first-index row expectation NEVER increases
variance. Here a canonical source-derived smoothing law is explicit:

  R_m(T) = sum_{n in endpointIndex T} K_T(m,n),
  A(T)   = sum_{m in endpointIndex T} |R_m(T)|,
  D(T,ε) = A(T) + ε * |endpointIndex T|,
  w_ε(m) = (|R_m(T)| + ε)/D(T,ε)   on the ORIGINAL window.

The source population must be NONEMPTY and ε>0. These hypotheses
ensure strict positive sampling mass at every original integer,
including indices whose signed row sum vanishes.

No Möbius coefficient or Gram term is resampled independently: this
is a positive sampling law *constructed from already fixed deterministic
signed source rows*. Its normalized importance mean is exactly
pickupCross T, with the original signed physical readout defect
unchanged. The finite moment bound is

  sum_m R_m(T)^2 / w_ε(m) <= (A(T)+ε N_T) * A(T).

It is an exact source-dependent importance-variance certificate, NOT
a subexponential arithmetic estimate or an RH conclusion. The law
need not be one row of the existing Gibbs Sampler unless a separate
explicit realization of its Gibbs costs is supplied.
-/

namespace Folder.Research.ShapePhysicalBitOptimizedRowLaw

open Folder.Research.ShapePhysicalBitRowConditioning
open Folder.Research.ShapePhysicalBitPairSampling
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The literal unsigned mass of COMPLETE signed row sums, not the
much larger sum of absolute pair entries. -/
def originalRowAbsMass (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, |originalRowSum T m|

theorem originalRowAbsMass_nonneg (T : ℝ) :
    0 ≤ originalRowAbsMass T := by
  unfold originalRowAbsMass
  exact Finset.sum_nonneg (fun m hm => abs_nonneg _)

/-- The smoothing denominator is precisely the total positive
source-row weight on the original source window. -/
def regularizedRowDenominator (T ε : ℝ) : ℝ :=
  originalRowAbsMass T + ε * ((endpointIndex T).card : ℝ)

theorem regularizedRowDenominator_pos (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    0 < regularizedRowDenominator T ε := by
  have hN : (0 : ℝ) < ((endpointIndex T).card : ℝ) := by exact_mod_cast hcard
  unfold regularizedRowDenominator
  exact add_pos_of_nonneg_of_pos
    (originalRowAbsMass_nonneg T) (mul_pos hε hN)

/-- Every original source index gets a positive weight.
Outside the ACTUAL endpoint window the weight is zero. -/
def regularizedRowWeight (T ε : ℝ) (m : ℕ) : ℝ :=
  if m ∈ endpointIndex T then
    (|originalRowSum T m| + ε) / regularizedRowDenominator T ε
  else 0

theorem regularizedRowWeight_pos (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    ∀ m ∈ endpointIndex T, 0 < regularizedRowWeight T ε m := by
  intro m hm
  have hnum : 0 < |originalRowSum T m| + ε :=
    add_pos_of_nonneg_of_pos (abs_nonneg _) hε
  have hden := regularizedRowDenominator_pos T ε hε hcard
  simpa [regularizedRowWeight, hm] using div_pos hnum hden

/-- The literal sum of all source-row numerators equals its declared
denominator. In particular no zero row or source integer is removed. -/
theorem regularized_row_numerator_sum (T ε : ℝ) :
    (∑ m ∈ endpointIndex T, (|originalRowSum T m| + ε)) =
      regularizedRowDenominator T ε := by
  simp [regularizedRowDenominator, originalRowAbsMass,
    Finset.sum_add_distrib, nsmul_eq_mul, mul_comm]

theorem regularizedRowWeight_total_one (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    (∑ m ∈ endpointIndex T, regularizedRowWeight T ε m) = 1 := by
  have hden := regularizedRowDenominator_pos T ε hε hcard
  calc
    (∑ m ∈ endpointIndex T, regularizedRowWeight T ε m) =
        ∑ m ∈ endpointIndex T,
          (|originalRowSum T m| + ε) /
            regularizedRowDenominator T ε := by
          apply Finset.sum_congr rfl
          intro m hm
          simp [regularizedRowWeight, hm]
    _ = (∑ m ∈ endpointIndex T, (|originalRowSum T m| + ε)) /
          regularizedRowDenominator T ε := by rw [Finset.sum_div]
    _ = regularizedRowDenominator T ε /
          regularizedRowDenominator T ε := by
            rw [regularized_row_numerator_sum]
    _ = 1 := div_self (ne_of_gt hden)

/-- The complete unsigned signed-row source law is actually positive
and normalized on the original window. -/
theorem regularizedRowWeight_isPositiveWindowLaw (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    PositiveWindowLaw T (regularizedRowWeight T ε) :=
  ⟨regularizedRowWeight_pos T ε hε hcard,
    regularizedRowWeight_total_one T ε hε hcard⟩

/-- A positive smoothing parameter gives an explicit positive lower
floor for every original source index, including zero signed rows. -/
theorem regularizedRowWeight_floor (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    ε / regularizedRowDenominator T ε ≤
      regularizedRowWeight T ε m := by
  have hden := regularizedRowDenominator_pos T ε hε hcard
  rw [regularizedRowWeight, if_pos hm]
  exact (div_le_div_iff_of_pos_right hden).mpr
    (by have h := abs_nonneg (originalRowSum T m); linarith)

/-- One signed source-row importance term is controlled by its own
absolute mass, paying the exact smoothing denominator. -/
theorem regularized_row_term_bound (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    (originalRowSum T m) ^ 2 / regularizedRowWeight T ε m ≤
      regularizedRowDenominator T ε * |originalRowSum T m| := by
  have hden := regularizedRowDenominator_pos T ε hε hcard
  have hnum : 0 < |originalRowSum T m| + ε :=
    add_pos_of_nonneg_of_pos (abs_nonneg _) hε
  have hbound :
      (originalRowSum T m) ^ 2 ≤
        |originalRowSum T m| * (|originalRowSum T m| + ε) := by
    have hsq := sq_abs (originalRowSum T m)
    nlinarith [mul_nonneg (abs_nonneg (originalRowSum T m)) hε.le]
  rw [regularizedRowWeight, if_pos hm]
  have heq :
      (originalRowSum T m) ^ 2 /
          ((|originalRowSum T m| + ε) /
            regularizedRowDenominator T ε) =
        regularizedRowDenominator T ε *
          ((originalRowSum T m) ^ 2 /
            (|originalRowSum T m| + ε)) := by
              field_simp [ne_of_gt hden, ne_of_gt hnum]
              <;> ring
  rw [heq]
  apply mul_le_mul_of_nonneg_left _ hden.le
  exact (div_le_iff₀ hnum).mpr hbound

/-- The source-dependent optimized variance/second-moment allowance.
The quantity A(T) is not presumed subexponential or even small. -/
theorem regularizedRowSecondMoment_le (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    originalRowSecondMoment T (regularizedRowWeight T ε) ≤
      regularizedRowDenominator T ε * originalRowAbsMass T := by
  unfold originalRowSecondMoment
  calc
    (∑ m ∈ endpointIndex T,
        (originalRowSum T m) ^ 2 / regularizedRowWeight T ε m) ≤
      ∑ m ∈ endpointIndex T,
        regularizedRowDenominator T ε * |originalRowSum T m| := by
          apply Finset.sum_le_sum
          intro m hm
          exact regularized_row_term_bound T ε hε hcard m hm
    _ = regularizedRowDenominator T ε * originalRowAbsMass T := by
          rw [← Finset.mul_sum]
          rfl

/-- A concrete positive source-derived witness for the existing
importance-sampling and exact row-conditioning theorems. -/
theorem regularized_original_variance_budget (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    let w := regularizedRowWeight T ε
    (singleExpectation T w (originalRowImportance T w) = pickupCross T) ∧
    (0 ≤ conditionedVariance T w (originalPairImportance T w)) ∧
    (conditionedVariance T w (originalPairImportance T w) ≤
      regularizedRowDenominator T ε * originalRowAbsMass T -
        (pickupCross T) ^ 2) ∧
    (conditionedVariance T w (originalPairImportance T w) ≤
      originalSignedPairVariance T w) := by
  let w := regularizedRowWeight T ε
  have hw : PositiveWindowLaw T w :=
    regularizedRowWeight_isPositiveWindowLaw T ε hε hcard
  refine ⟨singleExpectation_originalRowImportance_eq_pickupCross T w hw,
    conditionedVariance_nonneg T w hw _, ?_,
    conditionedVariance_le_windowPairVariance T w hw _⟩
  rw [conditionedOriginalVariance_eq_rowSecondMoment_sub_sq T w hw]
  have hb := regularizedRowSecondMoment_le T ε hε hcard
  linarith

/-- The actual signed physical source packet and every defect stay
separate when the optimal regularized finite row law is selected. -/
theorem regularized_original_source_return (T ε : ℝ)
    (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card)
    (p : Parameters) (chart : ℝ) (stream : PhysicalStream) :
    singleExpectation T (regularizedRowWeight T ε)
      (originalRowImportance T (regularizedRowWeight T ε)) =
      observedPacket p chart T stream +
        signedReadoutDefect p chart T stream := by
  have hw := regularizedRowWeight_isPositiveWindowLaw T ε hε hcard
  rw [singleExpectation_originalRowImportance_eq_pickupCross T
    (regularizedRowWeight T ε) hw]
  exact pickupCross_eq_observed_add_defect p chart T stream


/-- Summing signed kernels inside each original-index ROW cannot
increase the total absolute mass. This is the precise possible
within-row cancellation exploited by the optimized law. -/
theorem originalRowAbsMass_le_pairAbsMass (T : ℝ) :
    originalRowAbsMass T ≤
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        |originalSignedPair T m n| := by
  unfold originalRowAbsMass originalRowSum
  apply Finset.sum_le_sum
  intro m hm
  exact Finset.abs_sum_le_sum_abs _ _

/-- Choosing ε=A/N (when A>0 and N>0) gives an explicit
two-times-absolute-row-mass-squared second-moment certificate.
The parameter is derived from the ACTUAL source, and the statement
does not claim that A itself has any subexponential bound. -/
theorem balancedRegularization_secondMoment_le_two_absMass_sq (T : ℝ)
    (hcard : 0 < (endpointIndex T).card)
    (hA : 0 < originalRowAbsMass T) :
    let ε := originalRowAbsMass T / ((endpointIndex T).card : ℝ)
    originalRowSecondMoment T (regularizedRowWeight T ε) ≤
      2 * (originalRowAbsMass T) ^ 2 := by
  have hN : (0 : ℝ) < ((endpointIndex T).card : ℝ) := by
    exact_mod_cast hcard
  let ε := originalRowAbsMass T / ((endpointIndex T).card : ℝ)
  have hε : 0 < ε := div_pos hA hN
  have hden : regularizedRowDenominator T ε =
      2 * originalRowAbsMass T := by
    unfold regularizedRowDenominator
    dsimp [ε]
    field_simp [ne_of_gt hN]
    ring
  have hb := regularizedRowSecondMoment_le T ε hε hcard
  rw [hden] at hb
  nlinarith

end Folder.Research.ShapePhysicalBitOptimizedRowLaw
