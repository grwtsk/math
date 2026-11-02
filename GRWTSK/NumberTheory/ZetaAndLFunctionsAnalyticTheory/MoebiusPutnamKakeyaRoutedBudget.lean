/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFareyFaryKakeyaIncidence
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapAllRate
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Paid three-way pivot: Putnam gaps, physical Kakeya tubes, signed remainder

On the SAME original endpoint indices and SAME ordered Mobius response
Gram, assign a finite set A of additive distances to the already proved
Putnam sparse-gap source. To prevent counting those source pairs twice,
define physicalPairMassOutsideGap A F as the ACTUAL physical Euclidean
tube-shading overlap volume with every A-gap pair zeroed.

At positive eta the physically thresholded packet contains only pairs
OUTSIDE the paid Putnam gap sector. It satisfies the exact finite
source-derived Young/physical overlap estimate. The complete remaining
signed source is *defined* by subtracting BOTH original packets from
pickupCross, and nothing is dropped or assigned a favorable sign.

Endpoint bound:
  endpointSum T <= 4 |A| T^2
    + (1/eta) sum_m d_m sum_{n != m, dist(m,n) notin A} vol(U_m ∩ U_n)
    + originalSignedRemainder + 1/4.

For A=putnamRateGapSet epsilon T, the first term has the existing
all-positive-rate estimate (32/epsilon^2) exp(epsilon T). No bound
on the physical row term or the remaining signed sector follows.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamKakeyaRoutedBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion

classical
variable {d : ℕ} {T : ℝ}

/-- Actual positive physical pair volume outside the ALREADY paid
additive-gap sector, zero for each pair whose distance belongs to A.
This masking changes the comparison BUDGET, not source pickupCross. -/
def physicalPairMassOutsideGap (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (m n : ℕ) : ℝ :=
  if Nat.dist m n ∈ A then 0 else originalPhysicalPairMass F m n

/-- The physical outside-gap mass remains symmetric, by genuine
Lebesgue intersection symmetry and Nat.dist symmetry. -/
theorem physicalPairMassOutsideGap_symm (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (m n : ℕ) :
    physicalPairMassOutsideGap A F m n =
      physicalPairMassOutsideGap A F n m := by
  by_cases hgap : Nat.dist m n ∈ A
  · have hgap' : Nat.dist n m ∈ A := by
      rw [Nat.dist_comm n m]
      exact hgap
    simp [physicalPairMassOutsideGap, hgap, hgap']
  · have hgap' : Nat.dist n m ∉ A := by
      rw [Nat.dist_comm n m]
      exact hgap
    simp [physicalPairMassOutsideGap, hgap, hgap',
      originalPhysicalPairMass_symm F m n]

/-- Nonnegative original physical volume and zeroed paid gaps. -/
theorem physicalPairMassOutsideGap_nonneg (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    0 ≤ physicalPairMassOutsideGap A F m n := by
  by_cases hgap : Nat.dist m n ∈ A
  · simp [physicalPairMassOutsideGap, hgap]
  · simp only [physicalPairMassOutsideGap, if_neg hgap]
    exact originalPhysicalPairMass_nonneg F m n hm hn

/-- At positive physical threshold, a pair already assigned to Putnam
cannot also be in the measured outside-gap source packet. -/
theorem putnam_gap_not_in_physical_threshold
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (η : ℝ) (hη : 0 < η) (m n : ℕ)
    (hgap : Nat.dist m n ∈ A) :
    ¬ (η ≤ physicalPairMassOutsideGap A F m n) := by
  simp only [physicalPairMassOutsideGap, if_pos hgap]
  exact not_le_of_gt hη

/-- The genuinely original signed ordered Gram packet, routed to the
physical Kakeya channel ONLY when its additive gap was NOT paid by A. -/
def physicalOutsideGapCross (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (η : ℝ) : ℝ :=
  originalIncidenceCross
    (fun m n => η ≤ physicalPairMassOutsideGap A F m n) T

/-- Row-resolved positive physical intersection cost on distinct
non-Putnam pairs; actual d-dimensional Lebesgue masses and exact
per-source diagonal response energies are preserved. -/
def physicalOutsideGapRowBudget (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (η : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    ((∑ n ∈ endpointIndex T,
      if m ≠ n then physicalPairMassOutsideGap A F m n else 0) / η) *
      sourceDiagonal T m

theorem physicalOutsideGapCross_abs_le_rowBudget
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    |physicalOutsideGapCross A F η| ≤
      physicalOutsideGapRowBudget A F η := by
  exact abs_thresholdCross_le_weighted_rows
    (endpointIndex T) (physicalPairMassOutsideGap A F) η
    (sourceKernel T) (sourceDiagonal T)
    hη (physicalPairMassOutsideGap_symm A F)
    (fun m hm n hn => physicalPairMassOutsideGap_nonneg A F m n hm hn)
    (fun m hm => sourceDiagonal_nonneg hT m hm)
    (fun m hm n hn => sourceKernel_young hT m n hm hn)

/-- This is the ACTUAL complete signed remainder after both disjoint
selected packets; it is not an adjustable error or assumed small. -/
def originalSignedRemainder (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (η : ℝ) : ℝ :=
  pickupCross T - endpointGapSetCross A T -
    physicalOutsideGapCross A F η

/-- Every original signed pair is accounted for in the literal source
identity: existing Putnam packet + physical outside-gap packet +
the exact complete signed difference. -/
theorem pickupCross_eq_putnam_physical_remainder (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (η : ℝ) :
    pickupCross T = endpointGapSetCross A T +
      physicalOutsideGapCross A F η +
      originalSignedRemainder A F η := by
  unfold originalSignedRemainder
  ring

/-- Completely source-bound three-budget endpoint comparison:
no favorable sign, decay, or geometric upper theorem is invented. -/
theorem endpointSum_le_putnam_physical_signed_remainder
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    endpointSum T ≤
      4 * (A.card : ℝ) * T ^ 2 +
        physicalOutsideGapRowBudget A F η +
        originalSignedRemainder A F η + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_putnam_physical_remainder A F η] at he
  have hg := original_sparse_gap_quadratic A hT
  have hf := physicalOutsideGapCross_abs_le_rowBudget A F η hη hT
  linarith [le_abs_self (endpointGapSetCross A T),
    le_abs_self (physicalOutsideGapCross A F η)]

/-- Explicit Putnam switching schedule: the selected additive-gap
component is UNCONDITIONALLY all-positive-rate, but the new physical
row bill and the full signed remainder are left visible. -/
theorem endpointSum_le_ratePutnam_physical_signed_remainder
    (ε : ℝ) (hε : 0 < ε) (F : OriginalTubeFamily d T)
    (η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    endpointSum T ≤
      (32 / ε ^ 2) * Real.exp (ε * T) +
        physicalOutsideGapRowBudget (putnamRateGapSet ε T) F η +
        originalSignedRemainder (putnamRateGapSet ε T) F η +
        1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_putnam_physical_remainder
    (putnamRateGapSet ε T) F η] at he
  have hg := putnam_sparse_gap_all_rate ε hε hT
  have hf := physicalOutsideGapCross_abs_le_rowBudget
    (putnamRateGapSet ε T) F η hη hT
  linarith [le_abs_self (endpointGapSetCross (putnamRateGapSet ε T) T),
    le_abs_self (physicalOutsideGapCross
      (putnamRateGapSet ε T) F η)]

end GRWTSK.NumberTheory.Moebius.PutnamKakeyaRoutedBudget
