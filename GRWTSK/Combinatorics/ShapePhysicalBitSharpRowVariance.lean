/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source direction: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitOptimizedRowLaw
import Mathlib.Tactic

/-!
# Sharp finite variance floor for the original signed Möbius rows

This source uses ONLY the original endpointIndex T and
originalRowSum T m derived from the full, ordered, off-diagonal
ArithmeticFunction.moebius-weighted pickupResponseGram.

For any positive normalized original-window weight w, put
  R_m = originalRowSum T m
  A   = sum_m |R_m|
  X   = pickupCross T = sum_m R_m
  D_w = sum_m (|R_m| - A*w_m)^2/w_m.

The main exact finite identity is
  sum_m R_m^2/w_m = A^2 + D_w.
Therefore the original conditioned importance variance equals
  A^2 - X^2 + D_w.
The mismatch is nonnegative. The first term is the unavoidable
variance floor for any ONE-index importance sampler that uses this
literal signed-row observable, even when its probability law is
source-informed. It is NOT a lower bound for every conceivable
estimator or for the deterministic signed source itself.

The previously defined regularized positive law has
  0 <= D_(w_epsilon) <= epsilon * |endpointIndex T| * A.
It approaches the exact finite variance floor as epsilon becomes small.
No asymptotic arithmetic saving is asserted: a small |X| may reflect
cancellation across large signed rows rather than small A.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace Folder.Research.ShapePhysicalBitSharpRowVariance

open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning
open Folder.Research.ShapePhysicalBitOptimizedRowLaw
open GRWTSK.RiemannHypothesis.CCC

/-- Exact nonnegative mismatch of a positive sampling row from the
absolute signed-row masses, on the unchanged endpoint index set. -/
def rowLawMismatch (T : ℝ) (w : ℕ → ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    (|originalRowSum T m| - originalRowAbsMass T * w m) ^ 2 / w m

theorem rowLawMismatch_nonneg (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    0 ≤ rowLawMismatch T w := by
  unfold rowLawMismatch
  apply Finset.sum_nonneg
  intro m hm
  exact div_nonneg (sq_nonneg _) (law.positive m hm).le

/-- Exact decomposition before taking a signed mean. Its proof
uses only the strictly positive original-index denominators, finite
linearity, and normalization. No random-sign hypothesis is used. -/
theorem originalRowSecondMoment_eq_absMass_sq_add_mismatch
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    originalRowSecondMoment T w =
      (originalRowAbsMass T) ^ 2 + rowLawMismatch T w := by
  let A : ℝ := originalRowAbsMass T
  have hterm (m : ℕ) (hm : m ∈ endpointIndex T) :
      (originalRowSum T m) ^ 2 / w m =
        (|originalRowSum T m| - A * w m) ^ 2 / w m +
          2 * A * |originalRowSum T m| - A ^ 2 * w m := by
    have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
    rw [← sq_abs (originalRowSum T m)]
    field_simp [hwm]
    ring
  have hsum :
      (∑ m ∈ endpointIndex T, (originalRowSum T m) ^ 2 / w m) =
        (∑ m ∈ endpointIndex T,
          (|originalRowSum T m| - A * w m) ^ 2 / w m) +
        2 * A * (∑ m ∈ endpointIndex T, |originalRowSum T m|) -
        A ^ 2 * (∑ m ∈ endpointIndex T, w m) := by
    calc
      _ = ∑ m ∈ endpointIndex T,
          ((|originalRowSum T m| - A * w m) ^ 2 / w m +
            2 * A * |originalRowSum T m| - A ^ 2 * w m) := by
              apply Finset.sum_congr rfl
              intro m hm
              exact hterm m hm
      _ = _ := by
          simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib,
            ← Finset.mul_sum]
  have habs :
      (∑ m ∈ endpointIndex T, |originalRowSum T m|) = A := rfl
  unfold originalRowSecondMoment rowLawMismatch
  rw [hsum, habs, law.total_one]
  dsimp [A]
  ring

/-- Sharp universal lower bound on source-row importance second
moments. Sampling alone cannot lower the absolute-row square. -/
theorem absMass_sq_le_originalRowSecondMoment
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    (originalRowAbsMass T) ^ 2 ≤ originalRowSecondMoment T w := by
  rw [originalRowSecondMoment_eq_absMass_sq_add_mismatch T w law]
  exact le_add_of_nonneg_right (rowLawMismatch_nonneg T w law)

/-- The full signed source total is always bounded by its unsigned
complete-row mass; this does not bound the latter as T grows. -/
theorem pickupCross_abs_le_originalRowAbsMass (T : ℝ) :
    |pickupCross T| ≤ originalRowAbsMass T := by
  change |∑ m ∈ endpointIndex T, originalRowSum T m| ≤
    originalRowAbsMass T
  unfold originalRowAbsMass
  exact Finset.abs_sum_le_sum_abs _ _

/-- A nonnegative finite *irreducible* sampling-variance term; it is
a sign-cancellation diagnostic, NOT a source growth bound. -/
def sourceCancellationVarianceFloor (T : ℝ) : ℝ :=
  (originalRowAbsMass T) ^ 2 - (pickupCross T) ^ 2

theorem sourceCancellationVarianceFloor_nonneg (T : ℝ) :
    0 ≤ sourceCancellationVarianceFloor T := by
  have hb := pickupCross_abs_le_originalRowAbsMass T
  have hA := originalRowAbsMass_nonneg T
  have habs := abs_nonneg (pickupCross T)
  have hp : 0 ≤
      (originalRowAbsMass T - |pickupCross T|) *
      (originalRowAbsMass T + |pickupCross T|) :=
    mul_nonneg (sub_nonneg.mpr hb) (add_nonneg hA habs)
  have hs := sq_abs (pickupCross T)
  unfold sourceCancellationVarianceFloor
  nlinarith

/-- The original conditioned signed estimator has EXACT variance:
unavoidable source-sign mismatch plus removable sampling-law mismatch. -/
theorem conditionedOriginalVariance_eq_floor_add_mismatch
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    conditionedVariance T w (originalPairImportance T w) =
      sourceCancellationVarianceFloor T + rowLawMismatch T w := by
  rw [conditionedOriginalVariance_eq_rowSecondMoment_sub_sq T w law,
    originalRowSecondMoment_eq_absMass_sq_add_mismatch T w law]
  unfold sourceCancellationVarianceFloor
  ring

/-- No positive normalized ONE-index row-importance law can beat the
finite source-dependent variance floor. The result says nothing about
other estimators, spectral convergence or the RH endpoint bound. -/
theorem varianceFloor_le_conditionedOriginalVariance
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    sourceCancellationVarianceFloor T ≤
      conditionedVariance T w (originalPairImportance T w) := by
  rw [conditionedOriginalVariance_eq_floor_add_mismatch T w law]
  exact le_add_of_nonneg_right (rowLawMismatch_nonneg T w law)

/-- Exact proportionality makes the sampling-law mismatch ZERO. This
premise may be impossible for strictly positive weights at zero rows,
which is why the regularized law is retained separately. -/
theorem rowLawMismatch_zero_of_proportional
    (T : ℝ) (w : ℕ → ℝ)
    (h : ∀ m ∈ endpointIndex T,
      |originalRowSum T m| = originalRowAbsMass T * w m) :
    rowLawMismatch T w = 0 := by
  unfold rowLawMismatch
  apply Finset.sum_eq_zero
  intro m hm
  rw [h m hm]
  ring

/-- The already established source-informed, full-support smooth law
comes within epsilon*N*A of the optimal finite row second moment.
The new quantitative gap is zero when all signed rows vanish. -/
theorem regularizedRowMismatch_le
    (T ε : ℝ) (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    rowLawMismatch T (regularizedRowWeight T ε) ≤
      ε * ((endpointIndex T).card : ℝ) * originalRowAbsMass T := by
  have law : PositiveWindowLaw T (regularizedRowWeight T ε) :=
    regularizedRowWeight_isPositiveWindowLaw T ε hε hcard
  have hident :=
    originalRowSecondMoment_eq_absMass_sq_add_mismatch
      T (regularizedRowWeight T ε) law
  have hb := regularizedRowSecondMoment_le T ε hε hcard
  rw [hident] at hb
  unfold regularizedRowDenominator at hb
  nlinarith

/-- Explicit near-sharp row variance certificate. This is finite
statistical optimization, not an arithmetic all-positive-rate estimate. -/
theorem regularizedConditionedVariance_le_floor_add_error
    (T ε : ℝ) (hε : 0 < ε) (hcard : 0 < (endpointIndex T).card) :
    conditionedVariance T (regularizedRowWeight T ε)
        (originalPairImportance T (regularizedRowWeight T ε)) ≤
      sourceCancellationVarianceFloor T +
        ε * ((endpointIndex T).card : ℝ) * originalRowAbsMass T := by
  have law : PositiveWindowLaw T (regularizedRowWeight T ε) :=
    regularizedRowWeight_isPositiveWindowLaw T ε hε hcard
  rw [conditionedOriginalVariance_eq_floor_add_mismatch T
    (regularizedRowWeight T ε) law]
  exact add_le_add_left (regularizedRowMismatch_le T ε hε hcard) _

end Folder.Research.ShapePhysicalBitSharpRowVariance
