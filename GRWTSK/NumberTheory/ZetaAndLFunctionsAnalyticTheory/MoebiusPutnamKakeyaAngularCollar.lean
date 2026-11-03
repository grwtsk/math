/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPutnamKakeyaRoutedBudget
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubeAngularCollar
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Adaptive angular collar for the ACTUAL signed Möbius endpoint source

The earlier projective geometry adapter required ALL original source
directions to be sigma-separated. Such a hypothesis is hostile to
a growing finite family in a compact projective sphere.

This source makes a deterministic, disjoint THREE-SECTOR selection
without ANY whole-family directional packing requirement:
  (1) the original Putnam additive gap packet A;
  (2) source pairs OUTSIDE A whose original tube directions have
      projective gap >= sigma and whose real physical shared-shading
      volume >= eta, with sigma,eta > 0;
  (3) the exact complete signed arithmetic complement.

The actual original Euclidean shading volumes control the selected
packet by weighted Young/threshold incidence. The preexisting
single-pair projective tube theorem then supplies a saturated
MIN(physical shading volume i, physical shading volume j,
projective ball volume) upper bound on the corresponding row cost.
Nearly parallel, antipodal, weak-overlap and otherwise unmatched
source pairs remain in the full signed complement.

No RH-strength bound on this complement or its geometry is proved.
This is a finite source-bound routing and quantitative comparison,
not a Kakeya maximal theorem, a Fary planarity proof or new RH proof.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

classical
variable {d : ℕ} [NeZero d] {T : ℝ}

/-- The EXACT projective line-direction gap for the two original
arithmetical endpoint IDs, zero if an ID is outside the source. -/
def originalProjectiveGap (F : OriginalTubeFamily d T) (m n : ℕ) : ℝ :=
  if hm : m ∈ endpointIndex T then
    if hn : n ∈ endpointIndex T then
      projectiveDirectionGap
        (F.tube ⟨m, hm⟩).direction (F.tube ⟨n, hn⟩).direction
    else 0
  else 0

theorem originalProjectiveGap_symm (F : OriginalTubeFamily d T)
    (m n : ℕ) :
    originalProjectiveGap F m n = originalProjectiveGap F n m := by
  by_cases hm : m ∈ endpointIndex T
  · by_cases hn : n ∈ endpointIndex T
    · simp only [originalProjectiveGap, dif_pos hm, dif_pos hn]
      exact projectiveGap_comm _ _
    · simp [originalProjectiveGap, hm, hn]
  · by_cases hn : n ∈ endpointIndex T
    · simp [originalProjectiveGap, hm, hn]
    · simp [originalProjectiveGap, hm, hn]

/-- Any paid Putnam gap is masked BEFORE angular thresholding.
Near-projective pairs are also masked, but remain in the ORIGINAL
signed arithmetic remainder rather than being discarded. -/
def angularFarPhysicalMass (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (m n : ℕ) : ℝ :=
  if Nat.dist m n ∈ A then 0
  else if σ ≤ originalProjectiveGap F m n then
    originalPhysicalPairMass F m n
  else 0

theorem angularFarPhysicalMass_symm (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (m n : ℕ) :
    angularFarPhysicalMass A F σ m n =
      angularFarPhysicalMass A F σ n m := by
  by_cases ha : Nat.dist m n ∈ A
  · have ha' : Nat.dist n m ∈ A := by
      rwa [Nat.dist_comm n m]
    simp [angularFarPhysicalMass, ha, ha']
  · have ha' : Nat.dist n m ∉ A := by
      rwa [Nat.dist_comm n m]
    by_cases hg : σ ≤ originalProjectiveGap F m n
    · have hg' : σ ≤ originalProjectiveGap F n m := by
        rwa [← originalProjectiveGap_symm F m n]
      simp [angularFarPhysicalMass, ha, ha', hg, hg',
        originalPhysicalPairMass_symm F m n]
    · have hg' : ¬ σ ≤ originalProjectiveGap F n m := by
        rwa [← originalProjectiveGap_symm F m n]
      simp [angularFarPhysicalMass, ha, ha', hg, hg']

theorem angularFarPhysicalMass_nonneg (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    0 ≤ angularFarPhysicalMass A F σ m n := by
  by_cases ha : Nat.dist m n ∈ A
  · simp [angularFarPhysicalMass, ha]
  · by_cases hg : σ ≤ originalProjectiveGap F m n
    · simp only [angularFarPhysicalMass, if_neg ha, if_pos hg]
      exact originalPhysicalPairMass_nonneg F m n hm hn
    · simp [angularFarPhysicalMass, ha, hg]

/-- Literal source-indexed angular-and-measured-overlap packet.
The source signs and complete ordered orientations are unchanged. -/
def angularFarCross (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) : ℝ :=
  originalIncidenceCross
    (fun m n => η ≤ angularFarPhysicalMass A F σ m n) T

/-- Physical positive weighted row charge of only non-Putnam,
projectively separated original shading pairs. -/
def angularFarPhysicalRows (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    ((∑ n ∈ endpointIndex T,
      if m ≠ n then angularFarPhysicalMass A F σ m n else 0) / η) *
        sourceDiagonal T m

/-- Both physical and angular thresholds are needed to place an
original pair in the second packet; eta>0 prevents reselecting
already paid gap indices or a near-projective pair of mass zero. -/
theorem putnam_gap_not_selected_by_angular_collar
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η)
    (m n : ℕ) (hgap : Nat.dist m n ∈ A) :
    ¬ (η ≤ angularFarPhysicalMass A F σ m n) := by
  simp only [angularFarPhysicalMass, if_pos hgap]
  exact not_le_of_gt hη

theorem angularFarCross_abs_le_rows
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    |angularFarCross A F σ η| ≤ angularFarPhysicalRows A F σ η := by
  exact abs_thresholdCross_le_weighted_rows
    (endpointIndex T) (angularFarPhysicalMass A F σ) η
    (sourceKernel T) (sourceDiagonal T)
    hη (angularFarPhysicalMass_symm A F σ)
    (fun m hm n hn => angularFarPhysicalMass_nonneg A F σ m n hm hn)
    (fun m hm => sourceDiagonal_nonneg hT m hm)
    (fun m hm n hn => sourceKernel_young hT m n hm hn)

/-- The ORIGINAL exact signed remainder of the entire source,
including near-parallel, antipodal, weak-overlap and other unpaid
large-gap pairs. This is not an upper bound on that remainder. -/
def angularFarSignedRemainder (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) : ℝ :=
  pickupCross T - endpointGapSetCross A T - angularFarCross A F σ η

theorem pickupCross_eq_putnam_angular_remainder (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) :
    pickupCross T = endpointGapSetCross A T +
      angularFarCross A F σ η +
      angularFarSignedRemainder A F σ η := by
  unfold angularFarSignedRemainder
  ring

/-- A saturated geometric cap is charged only to source pairs
outside the already-paid additive-gap packet AND with a genuine
pairwise projective separation at scale sigma. -/
def angularFarSaturatedMass (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ) (m n : ℕ) : ℝ :=
  if Nat.dist m n ∈ A then 0
  else if σ ≤ originalProjectiveGap F m n then
    if hm : m ∈ endpointIndex T then
      if hn : n ∈ endpointIndex T then
        F.saturatedProjectivePairCap σ ⟨m, hm⟩ ⟨n, hn⟩
      else 0
    else 0
  else 0

def angularFarSaturatedRows (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    ((∑ n ∈ endpointIndex T,
      if m ≠ n then angularFarSaturatedMass A F σ m n else 0) / η) *
      sourceDiagonal T m

/-- The chosen original source pair meets the existing projective
gap theorem without any global separation hypothesis on F. -/
theorem angularFarPhysicalMass_le_saturatedMass
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ : ℝ) (hσ : 0 < σ)
    (hfinite : ∀ i, volume (F.shading i) ≠ ∞)
    (hballFinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume (Metric.closedBall x
        ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞)
    (m n : ℕ) (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    angularFarPhysicalMass A F σ m n ≤
      angularFarSaturatedMass A F σ m n := by
  by_cases ha : Nat.dist m n ∈ A
  · simp [angularFarPhysicalMass, angularFarSaturatedMass, ha]
  · by_cases hg : σ ≤ originalProjectiveGap F m n
    · have hgap :
          σ ≤ projectiveDirectionGap
            (F.tube ⟨m, hm⟩).direction
            (F.tube ⟨n, hn⟩).direction := by
        simpa only [originalProjectiveGap, dif_pos hm, dif_pos hn] using hg
      have hgeom :
          (volume : Measure (Space d)).real
            (F.shading ⟨m, hm⟩ ∩ F.shading ⟨n, hn⟩) ≤
          F.saturatedProjectivePairCap σ ⟨m, hm⟩ ⟨n, hn⟩ :=
        F.physical_pair_le_saturated_cap_of_gap
          σ hσ ⟨m, hm⟩ ⟨n, hn⟩ hgap hfinite
          (hballFinite ⟨m, hm⟩ ⟨n, hn⟩)
      simpa only [angularFarPhysicalMass, angularFarSaturatedMass,
        if_neg ha, if_pos hg, dif_pos hm, dif_pos hn,
        originalPhysicalPairMass] using hgeom
    · simp [angularFarPhysicalMass, angularFarSaturatedMass, ha, hg]

/-- The ACTUAL physical row charge is no greater than the
saturated source-defined geometric projective cap, for arbitrary
source-direction families: no global projective packing assumption. -/
theorem angularFarPhysicalRows_le_saturatedRows
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T)
    (hfinite : ∀ i, volume (F.shading i) ≠ ∞)
    (hballFinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume (Metric.closedBall x
        ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    angularFarPhysicalRows A F σ η ≤
      angularFarSaturatedRows A F σ η := by
  unfold angularFarPhysicalRows angularFarSaturatedRows
  apply Finset.sum_le_sum
  intro m hm
  apply mul_le_mul_of_nonneg_right _ (sourceDiagonal_nonneg hT m hm)
  apply div_le_div_of_nonneg_right _ hη.le
  apply Finset.sum_le_sum
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · simp only [if_neg hmn]
    exact angularFarPhysicalMass_le_saturatedMass
      A F σ hσ hfinite hballFinite m n hm hn

/-- Exact source signed ledger with a genuine saturated geometric
upper price on the selected source pair packet and no global angular
separation. The full signed remainder is RETAINED, not estimated. -/
theorem endpointSum_le_putnam_angular_saturated_signed
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T)
    (hfinite : ∀ i, volume (F.shading i) ≠ ∞)
    (hballFinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume (Metric.closedBall x
        ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    endpointSum T ≤
      4 * (A.card : ℝ) * T ^ 2 +
        angularFarSaturatedRows A F σ η +
        angularFarSignedRemainder A F σ η + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_putnam_angular_remainder A F σ η] at he
  have hg := original_sparse_gap_quadratic A hT
  have ht := angularFarCross_abs_le_rows A F σ η hη hT
  have hb := angularFarPhysicalRows_le_saturatedRows
    A F σ η hσ hη hT hfinite hballFinite
  linarith [le_abs_self (endpointGapSetCross A T),
    le_abs_self (angularFarCross A F σ η)]

/-- The previously established actual Putnam ALL-positive-rate
small-additive-gap theorem is consumed without weakening its
quantifiers, and all difficult near-angular/weak-overlap original
signed pairs remain in the unbounded arithmetic remainder. -/
theorem endpointSum_le_ratePutnam_angular_saturated_signed
    (ε : ℝ) (hε : 0 < ε) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T)
    (hfinite : ∀ i, volume (F.shading i) ≠ ∞)
    (hballFinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume (Metric.closedBall x
        ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    endpointSum T ≤
      (32 / ε ^ 2) * Real.exp (ε * T) +
        angularFarSaturatedRows (putnamRateGapSet ε T) F σ η +
        angularFarSignedRemainder
          (putnamRateGapSet ε T) F σ η + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_putnam_angular_remainder
    (putnamRateGapSet ε T) F σ η] at he
  have hg := putnam_sparse_gap_all_rate ε hε hT
  have ht := angularFarCross_abs_le_rows
    (putnamRateGapSet ε T) F σ η hη hT
  have hb := angularFarPhysicalRows_le_saturatedRows
    (putnamRateGapSet ε T) F σ η hσ hη hT
    hfinite hballFinite
  linarith [le_abs_self
    (endpointGapSetCross (putnamRateGapSet ε T) T),
    le_abs_self
      (angularFarCross (putnamRateGapSet ε T) F σ η)]

end GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar
