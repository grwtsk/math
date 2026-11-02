/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusRowEndpointReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSmallRatioAllRate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Paid sparse sectors and signed dense-core row importance sampling

This connects the ACTUAL original ordered off-diagonal Möbius source
and the existing Putnam sparse gap/ratio sector estimates to the
existing finite positive-index importance-sampling representation.

For Q, split the original full signed source WITHOUT changing its
coefficient, birth/time mask, original source index, or either ordered
pair orientation:
  pickupCross(T) = gap(Q,T) + ratioOutsideGap(Q,T) + denseCore(Q,T).

The gap and ratioOutsideGap sectors are DISJOINT and their existing
unconditional per-sector 32/rate^2*exp(rate*T) estimates are REUSED,
not re-proved or assumed. Their total error is at most
  64/rate^2*exp(rate*T), for rate>0 and T>=0.

Only the residual dense core is importance-sampled by a strictly
positive normalized probability on the SAME endpointIndex T. For
the exact row
  R_core(Q,T,m)=sum_{n in endpointIndex T} K_core(Q,T,m,n),
the core estimator R_core/w has exact mean denseCore(Q,T).

The true endpointSum has a SEPARATE, original source curvature
defect bounded by 1/4 for T>=0. Thus the hard-core estimator plus
the two deterministically paid source sectors and the curvature
defect is exactly the original endpointSum. This is a genuine
finite arithmetic/sampling reduction, not a signed cancellation
estimate for the hard core and not a proof of RH.

The conditional all-rate unsigned dense-row criterion below is
STRICTLY STRONGER than the signed dense-core criterion. Its new
source support is not claimed independently established.
-/

namespace GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PhysicalRowEndpointReturn
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning

/-- The original kernel, retaining its exact Möbius signs and causal
Gram, masked only by the pre-existing direct dense-core predicate. -/
def denseCoreSignedPair (Q : Finset ℕ) (T : ℝ)
    (m n : ℕ) : ℝ :=
  if m ≠ n ∧ Nat.dist m n ∉ Q ∧
      ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n) then
    moebiusReal m * moebiusReal n * pickupResponseGram T m n
  else 0

/-- The complete original-index dense signed row. Its entries are not
absolute-valued before summation and no source pair is reindexed. -/
def denseCoreRow (Q : Finset ℕ) (T : ℝ) (m : ℕ) : ℝ :=
  ∑ n ∈ endpointIndex T, denseCoreSignedPair Q T m n

/-- Exact finite Fubini/definition return to the EXISTING core. -/
theorem sum_denseCoreRow_eq_existingCore (Q : Finset ℕ) (T : ℝ) :
    (∑ m ∈ endpointIndex T, denseCoreRow Q T m) =
      endpointDenseAddMulCoreCross Q T := by
  rfl

/-- Positive one-index sampling weights apply to the ORIGINAL
integer-indexed dense source rows, not a new random sign model. -/
def denseCoreRowImportance (Q : Finset ℕ) (T : ℝ)
    (w : ℕ → ℝ) (m : ℕ) : ℝ :=
  denseCoreRow Q T m / w m

/-- EXACT unbiased return for any law with positive support on EVERY
original endpoint index. This requires no sample independence. -/
theorem denseCoreRowImportance_mean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    singleExpectation T w (denseCoreRowImportance Q T w) =
      endpointDenseAddMulCoreCross Q T := by
  unfold singleExpectation denseCoreRowImportance
  calc
    (∑ m ∈ endpointIndex T, w m * (denseCoreRow Q T m / w m)) =
        ∑ m ∈ endpointIndex T, denseCoreRow Q T m := by
      apply Finset.sum_congr rfl
      intro m hm
      have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
      field_simp [hwm]
    _ = endpointDenseAddMulCoreCross Q T :=
      sum_denseCoreRow_eq_existingCore Q T

/-- The already published sparse gap and ratio packets are
deterministic control variates, not zero-mean modeled signs. -/
def paidSparseSectors (Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointGapSetCross Q T + endpointRatioOutsideGapCross Q T

/-- Exact original arithmetic reassembly: original cross equals
the deterministically paid sparse sectors plus the sampled hard core. -/
theorem pickupCross_eq_paid_add_denseCoreMean
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    pickupCross T =
      paidSparseSectors Q T +
        singleExpectation T w (denseCoreRowImportance Q T w) := by
  rw [denseCoreRowImportance_mean Q T w law]
  exact pickupCross_eq_gap_ratio_core Q T

/-- The two already-proved source-specific sparse rate estimates give
one exact unconditional signed payment. Their original packet masks
are disjoint; no double counting or new coefficient is introduced. -/
theorem paidSparseSectors_abs_le
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 0 ≤ T) :
    |paidSparseSectors (putnamRateGapSet rate T) T| ≤
      (64 / rate ^ 2) * Real.exp (rate * T) := by
  have hgap := putnam_sparse_gap_all_rate rate hrate hT
  have hratio := putnam_ratio_outside_gap_all_rate rate hrate hT
  calc
    |paidSparseSectors (putnamRateGapSet rate T) T| ≤
        |endpointGapSetCross (putnamRateGapSet rate T) T| +
          |endpointRatioOutsideGapCross (putnamRateGapSet rate T) T| := by
            unfold paidSparseSectors
            exact abs_add_le _ _
    _ ≤ (32 / rate ^ 2) * Real.exp (rate * T) +
          (32 / rate ^ 2) * Real.exp (rate * T) :=
      add_le_add hgap hratio
    _ = (64 / rate ^ 2) * Real.exp (rate * T) := by ring

/-- The ORIGINAL signed cross and the dense hard core differ by at
most the explicit PAID source sectors at every nonnegative T. -/
theorem pickupCross_sub_denseCore_abs_le
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 0 ≤ T) :
    |pickupCross T -
      endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T| ≤
        (64 / rate ^ 2) * Real.exp (rate * T) := by
  have hpartition :=
    pickupCross_eq_gap_ratio_core (putnamRateGapSet rate T) T
  have hrewrite :
      pickupCross T -
          endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T =
        paidSparseSectors (putnamRateGapSet rate T) T := by
    unfold paidSparseSectors
    linarith
  rw [hrewrite]
  exact paidSparseSectors_abs_le rate hrate hT

/-- The endpoint curvature is the ORIGINAL endpoint-minus-cross
difference, independent of missing or incorrect physical bit records. -/
theorem endpointSum_eq_paid_add_denseCoreMean_add_curvature
    (Q : Finset ℕ) (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    endpointSum T =
      paidSparseSectors Q T +
        singleExpectation T w (denseCoreRowImportance Q T w) +
          endpointCurvatureDefect T := by
  rw [← pickupCross_eq_paid_add_denseCoreMean Q T w law]
  unfold endpointCurvatureDefect
  ring

/-- The original endpointSum has a finite, fully source-paid
one-sided reduction to the signed hard core; the arithmetic hard core
is NOT asserted bounded by an all-positive-rate expression. -/
theorem endpointSum_le_denseCore_add_paidRate
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T +
        (64 / rate ^ 2) * Real.exp (rate * T) + (1 / 4 : ℝ) := by
  have hpaid := paidSparseSectors_abs_le rate hrate hT
  have hsplit := pickupCross_eq_gap_ratio_core
    (putnamRateGapSet rate T) T
  have hendpoint := (abs_le.mp (endpointSum_error hT)).2
  unfold paidSparseSectors at hpaid
  linarith [le_abs_self
    (endpointGapSetCross (putnamRateGapSet rate T) T +
      endpointRatioOutsideGapCross (putnamRateGapSet rate T) T)]

/-- The two previously paid sectors PLUS the actual quarter-unit
endpoint curvature give a TWO-SIDED quantitative source comparison.
This estimate is unconditional (modulo the imported source proofs);
it never bounds the remaining signed hard core itself. -/
theorem endpointSum_sub_denseCore_abs_le
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 0 ≤ T) :
    |endpointSum T -
      endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T| ≤
        (64 / rate ^ 2) * Real.exp (rate * T) + (1 / 4 : ℝ) := by
  have hcross := pickupCross_sub_denseCore_abs_le rate hrate hT
  have hendpoint := endpointSum_error hT
  have hsplit :
      endpointSum T -
          endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T =
        (endpointSum T - pickupCross T) +
          (pickupCross T -
            endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T) := by
      ring
  rw [hsplit]
  calc
    _ ≤ |endpointSum T - pickupCross T| +
          |pickupCross T -
            endpointDenseAddMulCoreCross (putnamRateGapSet rate T) T| :=
      abs_add_le _ _
    _ ≤ (1 / 4 : ℝ) +
          (64 / rate ^ 2) * Real.exp (rate * T) :=
      add_le_add hendpoint hcross
    _ = _ := by ring

/-- This is the unsigned total of ACTUAL complete signed dense-core
rows, not a sum of abs over all pair entries or a guessed cancellation. -/
def denseCoreRowAbsMass (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, |denseCoreRow Q T m|

theorem denseCore_le_rowAbsMass (Q : Finset ℕ) (T : ℝ) :
    endpointDenseAddMulCoreCross Q T ≤ denseCoreRowAbsMass Q T := by
  rw [← sum_denseCoreRow_eq_existingCore]
  unfold denseCoreRowAbsMass
  apply Finset.sum_le_sum
  intro m hm
  exact le_abs_self (denseCoreRow Q T m)

/-- A stronger, entirely explicit finite comparison useful when
independent row-cancellation data eventually become available. -/
theorem endpointSum_le_denseCoreRowAbsMass_add_paidRate
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      denseCoreRowAbsMass (putnamRateGapSet rate T) T +
        (64 / rate ^ 2) * Real.exp (rate * T) + (1 / 4 : ℝ) := by
  have hc :=
    denseCore_le_rowAbsMass (putnamRateGapSet rate T) T
  have hb := endpointSum_le_denseCore_add_paidRate rate hrate hT
  linarith

/-- This remains an independently unproved arithmetic supplier:
absolute mass of complete signed dense rows is controlled at every
positive rate on ONE fixed set G of adequately covering scales. -/
def DenseCoreRowAbsAllRateOn (G : Set ℝ) : Prop :=
  ∀ rate : ℝ, 0 < rate →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        denseCoreRowAbsMass (putnamRateGapSet rate T) T ≤
          C * Real.exp (rate * T)

/-- If the independent, stronger unsigned dense-row supplier were
proved, it would imply the EXISTING signed dense-core criterion on the
same fixed set G, with no new geometric or probability assumptions. -/
theorem denseCoreRowAbsAllRateOn_implies_denseCoreAllRate
    (G : Set ℝ) (hrows : DenseCoreRowAbsAllRateOn G) :
    DenseAddMulCoreAllRateOn G := by
  intro rate hrate
  obtain ⟨C, R, hC, hR, hbudget⟩ := hrows rate hrate
  refine ⟨C, R, hC, hR, ?_⟩
  intro T hG hRT
  exact (denseCore_le_rowAbsMass
    (putnamRateGapSet rate T) T).trans (hbudget T hG hRT)

/-- CONDITIONAL only: neither the required arithmetic supplier nor
the affine coverage is proved by index sampling, Fourier or geometry. -/
theorem riemannHypothesis_of_denseCoreRowAbs_goodScales
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hrows : DenseCoreRowAbsAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dense_add_mul_core_good_scales
    hcover (denseCoreRowAbsAllRateOn_implies_denseCoreAllRate G hrows)

end GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
