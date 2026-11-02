/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseCoreRowControlVariate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original dense-core importance-sampling variance with paid source sectors

The ORIGINAL ordered Möbius cross is split by the preexisting Putnam
additive-gap/small-integral-ratio partition. The two explicit sparse
sector totals are held DETERMINISTIC; only the exact unchanged
signed dense core is importance-sampled on endpointIndex T.

For any positive normalized law w on the WHOLE original source index
window, let Z2(m,n)=K_core(m,n)/(w(m)*w(n)) and
Z1(m)=sum_n K_core(m,n)/w(m). The already established finite
law-of-total-variance theorem gives

  Var_w(Z1) <= Var_(w x w)(Z2).

Adding the EXACT already-paid gap and ratio sectors, and the original
quarter-unit endpoint-minus-cross defect, changes neither sampling
variance. The exact endpoint-defect calibrated version is an IDEAL
source identity; its correction is not presumed cheaply computable. The resulting one-index estimator has mean endpointSum T,
not a surrogate signed source. The missing core arithmetic estimate
is NOT assumed, and no independent arithmetic sign law is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.DenseCoreRowSamplingVariance

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PhysicalRowEndpointReturn
open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning

/-- Ordered-pair importance sampling of ONLY the unproved dense core,
retaining all original source signs and both pair orientations. -/
def denseCorePairImportance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (m n : ℕ) : ℝ :=
  denseCoreSignedPair Q T m n / (w m * w n)

/-- Its original-window expectation is exactly the preexisting
signed dense core. No sign or residue model replaces the source. -/
theorem denseCorePairImportance_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w (denseCorePairImportance Q T w) =
      endpointDenseAddMulCoreCross Q T := by
  unfold denseCorePairImportance
  rw [windowPairImportance_eq_originalSum T w law]
  rfl

/-- Conditioning on the first ORIGINAL integer gives the complete
signed row, not an absolute-value or relabeled substitute. -/
theorem rowExpectation_denseCorePairImportance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    rowExpectation T w (denseCorePairImportance Q T w) m =
      denseCoreRowImportance Q T w m := by
  unfold rowExpectation denseCorePairImportance
    denseCoreRowImportance denseCoreRow
  calc
    (∑ n ∈ endpointIndex T,
        w n * (denseCoreSignedPair Q T m n / (w m * w n))) =
      ∑ n ∈ endpointIndex T, denseCoreSignedPair Q T m n / w m := by
        apply Finset.sum_congr rfl
        intro n hn
        have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
        have hwn : w n ≠ 0 := ne_of_gt (law.positive n hn)
        field_simp [hwm, hwn]
    _ = (∑ n ∈ endpointIndex T, denseCoreSignedPair Q T m n) / w m := by
      rw [Finset.sum_div]

/-- The finite variance of the exactly conditioned hard-core source. -/
def denseCoreRowSamplingVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ) : ℝ :=
  singleExpectation T w
    (fun m => (denseCoreRowImportance Q T w m -
      endpointDenseAddMulCoreCross Q T) ^ 2)

/-- A full same-support conditional variance has the same center and
the same weighted terms as the declared core-row sampling variance. -/
theorem conditioned_denseCorePair_eq_rowVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    conditionedVariance T w (denseCorePairImportance Q T w) =
      denseCoreRowSamplingVariance Q T w := by
  unfold conditionedVariance denseCoreRowSamplingVariance singleExpectation
  apply Finset.sum_congr rfl
  intro m hm
  rw [rowExpectation_denseCorePairImportance Q T w law m hm,
    denseCorePairImportance_mean Q T w law]

/-- The original one-index signed-core estimator has no GREATER
sampling variance than the original two-index dense-core estimator. -/
theorem denseCoreRowVariance_le_pairVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    denseCoreRowSamplingVariance Q T w ≤
      windowPairVariance T w (denseCorePairImportance Q T w) := by
  rw [← conditioned_denseCorePair_eq_rowVariance Q T w law]
  exact conditionedVariance_le_windowPairVariance T w law _

/-- Adding an exact deterministic source packet to a finite
single-index expectation shifts ONLY the mean, not its uncertainty. -/
private theorem singleExpectation_add_const
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℝ) (c : ℝ) :
    singleExpectation T w (fun m => f m + c) =
      singleExpectation T w f + c := by
  unfold singleExpectation
  calc
    (∑ m ∈ endpointIndex T, w m * (f m + c)) =
      ∑ m ∈ endpointIndex T, (w m * f m + c * w m) := by
        apply Finset.sum_congr rfl
        intro m hm
        ring
    _ = (∑ m ∈ endpointIndex T, w m * f m) +
        c * (∑ m ∈ endpointIndex T, w m) := by
          simp only [Finset.sum_add_distrib, Finset.mul_sum]
    _ = (∑ m ∈ endpointIndex T, w m * f m) + c := by
      rw [law.total_one]
      ring

/-- An ACTUALLY source-defined finite estimator without the unknown
endpoint curvature correction: the two sparse packets are held
deterministic, while one original-index row of the hard core is
importance-sampled. It targets pickupCross, not endpointSum itself. -/
def denseCoreCrossRowEstimator
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  denseCoreRowImportance Q T w m + paidSparseSectors Q T

/-- Exact unbiased mean for the complete original signed pickupCross.
The target and the arithmetic coefficients have not been changed. -/
theorem denseCoreCrossRowEstimator_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w (denseCoreCrossRowEstimator Q T w) =
      pickupCross T := by
  unfold denseCoreCrossRowEstimator
  rw [singleExpectation_add_const T w law]
  have hsource := pickupCross_eq_paid_add_denseCoreMean Q T w law
  linarith

/-- This accessible source-defined estimator's EXPECTED VALUE, not
every stochastic realization, differs from the exact original
endpointSum by at most the imported unconditional quarter-unit
curvature budget. No target-dependent correction is used here. -/
theorem denseCoreCrossRowEstimator_mean_endpointError
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    |singleExpectation T w (denseCoreCrossRowEstimator Q T w) -
      endpointSum T| ≤ (1 / 4 : ℝ) := by
  rw [denseCoreCrossRowEstimator_mean Q T w law]
  rw [abs_sub_comm]
  exact endpointSum_error hT

/-- Deterministically pay the two previously proved sparse packets,
plus the original endpoint curvature defect; sample only the genuine
hard signed-row source, without altering the full readout ledger. -/
def denseCoreEndpointRowEstimator
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  denseCoreRowImportance Q T w m +
    (paidSparseSectors Q T + endpointCurvatureDefect T)

/-- Exact unbiased estimator of the ORIGINAL endpoint quadrature:
the only random input is one ACTUAL original integer drawn from w. -/
theorem denseCoreEndpointRowEstimator_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w (denseCoreEndpointRowEstimator Q T w) =
      endpointSum T := by
  unfold denseCoreEndpointRowEstimator
  rw [singleExpectation_add_const T w law]
  have hcore := denseCoreRowImportance_mean Q T w law
  have hendpoint :=
    endpointSum_eq_paid_add_denseCoreMean_add_curvature Q T w law
  rw [hcore]
  linarith

/-- The paid-sector and endpoint corrections are constant at fixed T.
Thus the conditioned endpoint estimator has EXACTLY the residual core
variance, regardless of the possibly negative paid source packets. -/
theorem denseCoreEndpointRowEstimator_centeredVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w
      (fun m => (denseCoreEndpointRowEstimator Q T w m -
        endpointSum T) ^ 2) =
      denseCoreRowSamplingVariance Q T w := by
  unfold singleExpectation denseCoreRowSamplingVariance
  apply Finset.sum_congr rfl
  intro m hm
  have hsource :=
    endpointSum_eq_paid_add_denseCoreMean_add_curvature Q T w law
  have hmean := denseCoreRowImportance_mean Q T w law
  unfold denseCoreEndpointRowEstimator at *
  rw [hmean] at hsource
  rw [hsource]
  ring

/-- The TRUE endpoint-sum estimator has variance bounded by the
complete two-index hard-core importance-sampling variance. The two
sparse sectors and quarter error add NO sampling variance. -/
theorem denseCoreEndpointVariance_le_pairVariance
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w
      (fun m => (denseCoreEndpointRowEstimator Q T w m -
        endpointSum T) ^ 2) ≤
      windowPairVariance T w (denseCorePairImportance Q T w) := by
  rw [denseCoreEndpointRowEstimator_centeredVariance Q T w law]
  exact denseCoreRowVariance_le_pairVariance Q T w law

end GRWTSK.NumberTheory.Moebius.DenseCoreRowSamplingVariance
