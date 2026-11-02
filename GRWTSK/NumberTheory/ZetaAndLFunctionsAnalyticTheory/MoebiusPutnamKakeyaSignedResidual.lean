/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPutnamKakeyaAngularCollar
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-exact near-angular and weak-overlap signed Möbius residual

Unpack the previously abstract complete signed remainder into TWO
mutually exclusive ORIGINAL source pair packets, while keeping the
pre-paid Putnam additive gap sector and the previously selected
transverse/strong-overlap packet disjoint:

  1: original gap in A, both orientations;
  2: gap outside A and genuine original projective gap < sigma;
  3: gap outside A, projective gap >= sigma, physical shared-shading
     Lebesgue mass < eta;
  4: gap outside A, projective gap >= sigma, physical mass >= eta.

The last packet is the previous angularFarCross; its source Gram is
not replaced by the positive geometry. The exact complement is
nearAngularCross + weakOverlapCross. Both are controlled by ACTUAL
energy-weighted incidence degrees, using the old integrated Mobius
Gram Young theorem; no sign cancellation is manufactured.

This is a quantitative source-bound estimate, not an all-positive-rate
bound without new source-specific degree/energy information.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion

classical
variable {d : ℕ} [NeZero d] {T : ℝ}

/-- Source-selected long-distance projectively NEAR pair. -/
def nearRelation (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ : ℝ) (m n : ℕ) : Prop :=
  Nat.dist m n ∉ A ∧ originalProjectiveGap F m n < σ

/-- Source-selected long-distance projectively TRANSVERSE but
physically WEAK-overlap pair. No coarse-cell false positives. -/
def weakRelation (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (m n : ℕ) : Prop :=
  Nat.dist m n ∉ A ∧
    σ ≤ originalProjectiveGap F m n ∧
      originalPhysicalPairMass F m n < η

/-- Exact four-way partition's transverse STRONG-overlap predicate. -/
def strongRelation (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (m n : ℕ) : Prop :=
  Nat.dist m n ∉ A ∧
    σ ≤ originalProjectiveGap F m n ∧
      η ≤ originalPhysicalPairMass F m n

theorem nearRelation_symm (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (m n : ℕ) :
    nearRelation A F σ m n ↔ nearRelation A F σ n m := by
  constructor
  · rintro ⟨ha, hg⟩
    constructor
    · simpa only [nearRelation, Nat.dist_comm] using ha
    · simpa only [originalProjectiveGap_symm F m n] using hg
  · rintro ⟨ha, hg⟩
    constructor
    · simpa only [Nat.dist_comm] using ha
    · simpa only [originalProjectiveGap_symm F n m] using hg

theorem weakRelation_symm (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) (m n : ℕ) :
    weakRelation A F σ η m n ↔ weakRelation A F σ η n m := by
  constructor
  · rintro ⟨ha, hg, hb⟩
    exact ⟨by simpa only [Nat.dist_comm] using ha,
      by simpa only [originalProjectiveGap_symm F m n] using hg,
      by simpa only [originalPhysicalPairMass_symm F m n] using hb⟩
  · rintro ⟨ha, hg, hb⟩
    exact ⟨by simpa only [Nat.dist_comm] using ha,
      by simpa only [originalProjectiveGap_symm F n m] using hg,
      by simpa only [originalPhysicalPairMass_symm F n m] using hb⟩

def nearAngularCross (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ : ℝ) : ℝ :=
  originalIncidenceCross (nearRelation A F σ) T

def weakOverlapCross (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) : ℝ :=
  originalIncidenceCross (weakRelation A F σ η) T

/-- Exactly the selected transverse/strong geometric relation; eta>0
is essential because the previously defined thresholded mass is zero
on the Putnam gaps or on projectively near pairs. -/
theorem angular_selector_iff_strong (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ)
    (hη : 0 < η) (m n : ℕ) :
    η ≤ angularFarPhysicalMass A F σ m n ↔
      strongRelation A F σ η m n := by
  unfold angularFarPhysicalMass strongRelation
  by_cases ha : Nat.dist m n ∈ A
  · simp [ha, not_le_of_gt hη]
  · by_cases hg : σ ≤ originalProjectiveGap F m n
    · simp [ha, hg]
    · simp [ha, hg, not_le_of_gt hη]

theorem strongCross_eq_angularFarCross (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) (hη : 0 < η) :
    originalIncidenceCross (strongRelation A F σ η) T =
      angularFarCross A F σ η := by
  unfold originalIncidenceCross angularFarCross orderedCross
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  rw [propext (angular_selector_iff_strong A F σ η hη m n).symm]

/-- Complete original source pair relation is exhausted without
overlap by the four source-selected classes. This is literal finite
combinatorial exhaustiveness, not an analytic cancellation. -/
theorem original_pair_partition
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η) (m n : ℕ)
    (k : ℝ) :
    (if m ≠ n then k else 0) =
      (if m ≠ n ∧ Nat.dist m n ∈ A then k else 0) +
      (if m ≠ n ∧ nearRelation A F σ m n then k else 0) +
      (if m ≠ n ∧ weakRelation A F σ η m n then k else 0) +
      (if m ≠ n ∧ strongRelation A F σ η m n then k else 0) := by
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases ha : Nat.dist m n ∈ A
    · simp [hmn, ha, nearRelation, weakRelation, strongRelation]
    · by_cases hg : originalProjectiveGap F m n < σ
      · have hng : ¬ σ ≤ originalProjectiveGap F m n :=
          not_le_of_gt hg
        simp [hmn, ha, hg, hng, nearRelation, weakRelation, strongRelation]
      · have hge : σ ≤ originalProjectiveGap F m n :=
          le_of_not_gt hg
        by_cases hb : originalPhysicalPairMass F m n < η
        · have hnb : ¬ η ≤ originalPhysicalPairMass F m n :=
            not_le_of_gt hb
          simp [hmn, ha, hg, hge, hb, hnb,
            nearRelation, weakRelation, strongRelation]
        · have hbe : η ≤ originalPhysicalPairMass F m n :=
            le_of_not_gt hb
          simp [hmn, ha, hg, hge, hb, hbe,
            nearRelation, weakRelation, strongRelation]

/-- Exact source-original SIGNED double-sum partition. There is no
free remainder or change in the signed kernel, support, or ordered
orientation. -/
theorem pickupCross_eq_four_packets
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η) :
    pickupCross T =
      endpointGapSetCross A T +
      nearAngularCross A F σ +
      weakOverlapCross A F σ η +
      angularFarCross A F σ η := by
  classical
  have hpoint :
      pickupCross T =
      endpointGapSetCross A T +
      nearAngularCross A F σ +
      weakOverlapCross A F σ η +
      originalIncidenceCross (strongRelation A F σ η) T := by
    unfold pickupCross endpointGapSetCross nearAngularCross
      weakOverlapCross originalIncidenceCross orderedCross sourceKernel
      endpointIndex
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    exact original_pair_partition A F σ η hη m n
      (moebiusReal m * moebiusReal n * pickupResponseGram T m n)
  rw [strongCross_eq_angularFarCross A F σ η hη] at hpoint
  exact hpoint

/-- The previous opaque signed residual is EXACTLY the sum of
near-angular and transverse/weak-overlap source-labelled packets. -/
theorem signedRemainder_eq_near_add_weak
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η) :
    angularFarSignedRemainder A F σ η =
      nearAngularCross A F σ + weakOverlapCross A F σ η := by
  have hfour := pickupCross_eq_four_packets A F σ η hη
  unfold angularFarSignedRemainder
  linarith

/-- Energy-weighted degree of the ACTUAL near-angle arithmetic
source pair relation; the original diagonal enters at each index. -/
def nearDegreeBill (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    (selectedDegree (endpointIndex T) (nearRelation A F σ) m : ℝ) *
      sourceDiagonal T m

def weakDegreeBill (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    (selectedDegree (endpointIndex T) (weakRelation A F σ η) m : ℝ) *
      sourceDiagonal T m

theorem nearCross_abs_le_degree (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (hT : 0 ≤ T) :
    |nearAngularCross A F σ| ≤ nearDegreeBill A F σ := by
  exact originalIncidenceCross_abs_le_weighted_degree
    (nearRelation A F σ) hT
    (nearRelation_symm A F σ)

/-- A quantitative ORIGINAL signed weak-overlap estimate: it is a
weighted finite incidence DEGREE bill, not a free absolute-error
constant. Its value can still be exponential in T. -/
theorem weakCross_abs_le_degree (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) (hT : 0 ≤ T) :
    |weakOverlapCross A F σ η| ≤
      weakDegreeBill A F σ η := by
  exact originalIncidenceCross_abs_le_weighted_degree
    (weakRelation A F σ η) hT
    (weakRelation_symm A F σ η)

/-- Both formerly hidden residual sectors are explicitly paid by
source diagonal/real geometry degrees. This uses only original
Young; global all-positive-rate cancellation remains a separate
unproved arithmetic theorem. -/
theorem signedRemainder_abs_le_degree_bills
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    |angularFarSignedRemainder A F σ η| ≤
      nearDegreeBill A F σ + weakDegreeBill A F σ η := by
  rw [signedRemainder_eq_near_add_weak A F σ η hη]
  calc
    |nearAngularCross A F σ + weakOverlapCross A F σ η| ≤
        |nearAngularCross A F σ| + |weakOverlapCross A F σ η| :=
      abs_add_le _ _
    _ ≤ nearDegreeBill A F σ + weakDegreeBill A F σ η :=
      add_le_add (nearCross_abs_le_degree A F σ hT)
        (weakCross_abs_le_degree A F σ η hT)

end GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
