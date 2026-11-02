/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SignedIncidenceCongestion
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubePhysicalPairBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapYoung
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Original Möbius response, Farey/Fáry incidence, and physical Kakeya overlap

No arithmetic source is redefined: the kernel is the ORIGINAL ordered
Möbius response Gram, with its genuine diagonal energy and birth cutoff.
A symmetric graph relation can select a packet, but the complementary
signed source is retained as an actual difference.

An optional finite d-dimensional Family of ORIGINAL straight-tube shadings
is indexed by the genuine endpoint indices. Its physical Lebesgue overlap
mass induces an explicit thresholded edge relation; signed Young counting
then bounds the selected ORIGINAL Gram packet by an energy-weighted row
sum of the ACTUAL measured shading intersections, paying 1/η.

The selected geometric packet is not a replacement for pickupCross.
No bound on the complementary packet, no source-to-tube construction
with favorable Kakeya overlap, and no all-scale arithmetic cancellation
is supplied. Hence no RH/NS/Hodge/Yang-Mills/BSD theorem is claimed.
-/

namespace GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SignedIncidenceCongestion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

classical

/-- The exact source-labelled arithmetic kernel, unchanged in sign,
normalization, support and both ordered pair orientations. -/
def sourceKernel (T : ℝ) (m n : ℕ) : ℝ :=
  moebiusReal m * moebiusReal n * pickupResponseGram T m n

/-- The actual original response diagonal. -/
def sourceDiagonal (T : ℝ) (m : ℕ) : ℝ :=
  moebiusReal m ^ 2 * pickupResponseGram T m m

theorem sourceDiagonal_nonneg {T : ℝ} (hT : 0 ≤ T)
    (m : ℕ) (hm : m ∈ endpointIndex T) :
    0 ≤ sourceDiagonal T m := by
  dsimp [sourceDiagonal]
  exact mul_nonneg (sq_nonneg _) (pickupResponseGram_diag_nonneg hT m)

/-- Reuse the ORIGINAL integrated Putnam Gram–Young theorem.
No new positivity is assigned to off-diagonal signed terms. -/
theorem sourceKernel_young {T : ℝ} (hT : 0 ≤ T)
    (m n : ℕ) (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    2 * |sourceKernel T m n| ≤
      sourceDiagonal T m + sourceDiagonal T n := by
  exact source_gram_young hT hm hn

/-- Arbitrary selected ORIGINAL ordered Mobius response packet. -/
def originalIncidenceCross (R : ℕ → ℕ → Prop) (T : ℝ) : ℝ :=
  orderedCross (endpointIndex T) R (sourceKernel T)

/-- All pairs not paid for by the chosen incidence relation remain in
the ORIGINAL source, with no free residual, no positivity and no omission. -/
def originalIncidenceRemainder (R : ℕ → ℕ → Prop) (T : ℝ) : ℝ :=
  pickupCross T - originalIncidenceCross R T

theorem pickupCross_eq_incidence_plus_remainder
    (R : ℕ → ℕ → Prop) (T : ℝ) :
    pickupCross T =
      originalIncidenceCross R T + originalIncidenceRemainder R T := by
  unfold originalIncidenceRemainder
  ring

/-- Complete signed Putnam packet bounded by its ACTUAL energy-weighted
source degrees. No planar, Kakeya or Farey degree estimate is assumed. -/
theorem originalIncidenceCross_abs_le_weighted_degree
    (R : ℕ → ℕ → Prop) {T : ℝ} (hT : 0 ≤ T)
    (hsymm : ∀ m n, R m n ↔ R n m) :
    |originalIncidenceCross R T| ≤
      ∑ m ∈ endpointIndex T,
        (selectedDegree (endpointIndex T) R m : ℝ) *
          sourceDiagonal T m := by
  exact abs_orderedCross_le_weighted_degree
    (endpointIndex T) R (sourceKernel T) (sourceDiagonal T)
    hsymm (fun m hm n hn => sourceKernel_young hT m n hm hn)

/-- Return to the SAME existing endpoint observable, paying exactly the
already written 1/4 curvature allowance and keeping the entire
unselected signed remainder, which can have either sign. -/
theorem endpointSum_le_incidence_and_remainder
    (R : ℕ → ℕ → Prop) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      |originalIncidenceCross R T| +
        originalIncidenceRemainder R T + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_incidence_plus_remainder R T] at he
  linarith [le_abs_self (originalIncidenceCross R T)]

theorem endpointSum_le_weighted_degree_and_remainder
    (R : ℕ → ℕ → Prop) {T : ℝ} (hT : 0 ≤ T)
    (hsymm : ∀ m n, R m n ↔ R n m) :
    endpointSum T ≤
      (∑ m ∈ endpointIndex T,
        (selectedDegree (endpointIndex T) R m : ℝ) *
          sourceDiagonal T m) +
      originalIncidenceRemainder R T + 1 / 4 := by
  have hsource := endpointSum_le_incidence_and_remainder R hT
  have hdegree := originalIncidenceCross_abs_le_weighted_degree R hT hsymm
  linarith

/-! ## Farey determinant incidence is NOT a congestion certificate. -/

/-- Exact cross determinant for nonnegative rational numerator/denominator
coordinates. Positive denominators and coprimality are separate data. -/
def fareyDet (a b c d : ℕ) : ℤ :=
  (a : ℤ) * d - (b : ℤ) * c

/-- Every 1/(n+1) is determinant-one adjacent to 0/1. Hence determinant
one by itself cannot provide a bounded-valence Fáry/Kakeya graph. -/
theorem farey_zero_one_has_arbitrary_spokes (n : ℕ) :
    fareyDet 0 1 1 (n + 1) = -1 := by
  simp [fareyDet]

/-- The spoke endpoints are distinct, even as their number grows. -/
theorem farey_spokes_distinct {m n : ℕ}
    (h : (1, m + 1) = ((1, n + 1) : ℕ × ℕ)) : m = n := by
  have heq : m + 1 = n + 1 := congrArg Prod.snd h
  omega

/-! ## Genuine Euclidean straight-tube source-indexed overlap. -/

variable {d : ℕ} {T : ℝ}

/-- An optional physical tube family is indexed by EXACT ORIGINAL
endpoint IDs, not by abstract graph vertices, moduli or surrogate
arithmetical observations. Its source weights need not equal Mobius
signs, and we do not pretend that they do. -/
abbrev OriginalTubeFamily (d : ℕ) (T : ℝ) :=
  Family d {m : ℕ // m ∈ endpointIndex T}

/-- True nonnegative d-dimensional Lebesgue pair intersection volume.
Outside the original source inventory the pair mass is exactly zero.
The subtype witnesses ensure both source IDs remain distinguished. -/
def originalPhysicalPairMass
    (F : OriginalTubeFamily d T) (m n : ℕ) : ℝ :=
  if hm : m ∈ endpointIndex T then
    if hn : n ∈ endpointIndex T then
      (volume : Measure (Space d)).real
        (F.shading ⟨m, hm⟩ ∩ F.shading ⟨n, hn⟩)
    else 0
  else 0

theorem originalPhysicalPairMass_symm
    (F : OriginalTubeFamily d T) (m n : ℕ) :
    originalPhysicalPairMass F m n =
      originalPhysicalPairMass F n m := by
  by_cases hm : m ∈ endpointIndex T
  · by_cases hn : n ∈ endpointIndex T
    · simp [originalPhysicalPairMass, hm, hn, Set.inter_comm]
    · simp [originalPhysicalPairMass, hm, hn]
  · by_cases hn : n ∈ endpointIndex T
    · simp [originalPhysicalPairMass, hm, hn]
    · simp [originalPhysicalPairMass, hm, hn]

theorem originalPhysicalPairMass_nonneg
    (F : OriginalTubeFamily d T) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    0 ≤ originalPhysicalPairMass F m n := by
  simp only [originalPhysicalPairMass, dif_pos hm, dif_pos hn]
  exact ENNReal.toReal_nonneg

/-- Precisely the ORIGINAL signed ordered packet on pairs whose
ACTUAL physical shading overlap volume exceeds a chosen η>0. -/
def originalPhysicalThresholdCross
    (F : OriginalTubeFamily d T) (η : ℝ) : ℝ :=
  originalIncidenceCross
    (fun m n => η ≤ originalPhysicalPairMass F m n) T

/-- A concrete Kakeya-to-Putnam quantitative bridge with d explicitly
indexed. No volume-to-pointwise-degree conversion without η. -/
theorem originalPhysicalThresholdCross_abs_le_rows
    (F : OriginalTubeFamily d T)
    (η : ℝ) (hη : 0 < η) (hT : 0 ≤ T) :
    |originalPhysicalThresholdCross F η| ≤
      ∑ m ∈ endpointIndex T,
        ((∑ n ∈ endpointIndex T,
            if m ≠ n then originalPhysicalPairMass F m n else 0) / η) *
          sourceDiagonal T m := by
  exact abs_thresholdCross_le_weighted_rows
    (endpointIndex T) (originalPhysicalPairMass F) η
    (sourceKernel T) (sourceDiagonal T)
    hη (originalPhysicalPairMass_symm F)
    (fun m hm n hn => originalPhysicalPairMass_nonneg F m n hm hn)
    (fun m hm => sourceDiagonal_nonneg hT m hm)
    (fun m hm n hn => sourceKernel_young hT m n hm hn)

/-- Final literal endpoint comparison: selected physically overlapping
pairs are paid for by their true Euclidean row masses; EVERY pair
outside the threshold sector remains in the unchanged signed source. -/
theorem endpointSum_le_physical_rows_and_signed_remainder
    (F : OriginalTubeFamily d T) (η : ℝ)
    (hη : 0 < η) (hT : 0 ≤ T) :
    endpointSum T ≤
      (∑ m ∈ endpointIndex T,
        ((∑ n ∈ endpointIndex T,
            if m ≠ n then originalPhysicalPairMass F m n else 0) / η) *
          sourceDiagonal T m) +
      originalIncidenceRemainder
        (fun m n => η ≤ originalPhysicalPairMass F m n) T +
      1 / 4 := by
  have hsource :=
    endpointSum_le_incidence_and_remainder
      (fun m n => η ≤ originalPhysicalPairMass F m n) hT
  have hbound := originalPhysicalThresholdCross_abs_le_rows F η hη hT
  unfold originalPhysicalThresholdCross at hbound
  linarith

end GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
