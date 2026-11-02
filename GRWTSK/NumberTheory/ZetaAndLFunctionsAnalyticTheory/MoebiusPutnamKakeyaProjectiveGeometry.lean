/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOMS_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPutnamKakeyaRoutedBudget
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubeProjectivePhysicalPair
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Projective straight-tube geometry pays the actual Möbius row budget

The predecessor preserved every original signed ordered Möbius source
pair, selected small additive gaps by the existing Putnam theorem,
selected large-gap actual physical shading overlaps by a positive
Lebesgue mass threshold and retained the complete signed remainder.

This source uses the EXISTING genuine Euclidean projective-tube
intersection theorem, not a free pairwise overlap estimate.
For two distinct source-labelled tubes with projective direction
gap at least sigma>0 and with one actual common tube point x0, the
genuine shading intersection lies in the closed Euclidean ball of
radius 4(r_m+r_n)/sigma. When the two original shadings have no
common point, their pair volume is zero. The Lebesgue volume of the
ball is independent of its center by the already proved d-dimensional
Euclidean volume formula. Its finite-volume obligation is explicit.

Thus the positive physical Kakeya row cost in the original
three-sector Putnam ledger is bounded by ACTUAL source-tube radii,
sigma, and original Euclidean ball volumes, not an arbitrary B(m,n).

A projectively separated family is a STRICT finite geometric
hypothesis. For unbounded arithmetic source size sigma may shrink.
The resulting nonsharp ball bound need not be subexponential in T,
and the remaining signed Mobius source is still entirely open.
No RH, Kakeya dimension theorem, Hodge, Yang-Mills or NS result
follows from this finite supplier.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamKakeyaProjectiveGeometry

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaRoutedBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

classical
variable {d : ℕ} [NeZero d] {T : ℝ}

/-- The original tube indices m,n and the actual projective
intersection radius determine a geometric ball volume. The center is
chosen from the FIRST source tube, not from an arbitrary measured pair.
Outside the original endpoint inventory the value is zero. -/
def projectivePairBallMass
    (F : OriginalTubeFamily d T) (σ : ℝ)
    (m n : ℕ) : ℝ :=
  if hm : m ∈ endpointIndex T then
    if hn : n ∈ endpointIndex T then
      (volume : Measure (Space d)).real
        (Metric.closedBall
          (F.tube ⟨m, hm⟩).center
          ((F.tube ⟨m, hm⟩).projectiveIntersectionRadius
             (F.tube ⟨n, hn⟩) σ))
    else 0
  else 0

/-- The original physical pair mass is bounded by the TRUE
projective-ball volume (not a coarse-cell number). If the shading
intersection is empty its actual Lebesgue mass vanishes. If nonempty,
a shared shading point supplies the physical point required by the
existing projective pair containment theorem. -/
theorem originalPhysicalPairMass_le_projectiveBall
    (F : OriginalTubeFamily d T) (σ : ℝ) (hσ : 0 < σ)
    (hsep : F.ProjectivelySeparated σ)
    (hfinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume
        (Metric.closedBall x
          ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞)
    (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hmn : m ≠ n) :
    originalPhysicalPairMass F m n ≤
      projectivePairBallMass F σ m n := by
  let i : {m : ℕ // m ∈ endpointIndex T} := ⟨m, hm⟩
  let j : {m : ℕ // m ∈ endpointIndex T} := ⟨n, hn⟩
  have hij : i ≠ j := by
    intro h
    exact hmn (congrArg Subtype.val h)
  have hgap :
      σ ≤ projectiveDirectionGap
        (F.tube i).direction (F.tube j).direction :=
    hsep i j hij
  by_cases hshared : ∃ x : Space d, x ∈ F.shading i ∩ F.shading j
  · obtain ⟨x, hx⟩ := hshared
    have hpair :
        (volume : Measure (Space d)).real
          (F.shading i ∩ F.shading j) ≤
        (volume : Measure (Space d)).real
          (Metric.closedBall x
            ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) :=
      F.real_pair_volume_le_projective_ball i j hσ hgap x
        (F.shading_subtube i hx.1)
        (F.shading_subtube j hx.2)
        (hfinite i j x)
    have hball :
        volume
          (Metric.closedBall x
            ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) =
        volume
          (Metric.closedBall (F.tube i).center
            ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) := by
      calc
        _ = (ENNReal.ofReal
              ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ^ d *
              ENNReal.ofReal
                (Real.sqrt Real.pi ^ d /
                  Real.Gamma ((d : ℝ) / 2 + 1)) :=
          (F.tube i).projectiveIntersection_ball_volume
            (F.tube j) σ x
        _ = _ :=
          ((F.tube i).projectiveIntersection_ball_volume
            (F.tube j) σ (F.tube i).center).symm
    have hequal :
        (volume : Measure (Space d)).real
          (Metric.closedBall x
            ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) =
        (volume : Measure (Space d)).real
          (Metric.closedBall (F.tube i).center
            ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) := by
      exact congrArg ENNReal.toReal hball
    have hresult := hpair.trans_eq hequal
    simpa only [originalPhysicalPairMass, projectivePairBallMass,
      dif_pos hm, dif_pos hn] using hresult
  · have hempty : F.shading i ∩ F.shading j = ∅ := by
      ext x
      constructor
      · intro hx
        exact False.elim (hshared ⟨x, hx⟩)
      · intro hx
        exact False.elim (Set.not_mem_empty x hx)
    have hzero : originalPhysicalPairMass F m n = 0 := by
      simp [originalPhysicalPairMass, hm, hn, i, j, hempty]
    rw [hzero]
    change 0 ≤
      (volume : Measure (Space d)).real
        (Metric.closedBall (F.tube i).center
          ((F.tube i).projectiveIntersectionRadius (F.tube j) σ))
    exact ENNReal.toReal_nonneg

/-- Only the as-yet-unpaid long-gap source indices enter the
geometric projective-ball mass budget. -/
def projectiveOutsideGapBallMass (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ : ℝ)
    (m n : ℕ) : ℝ :=
  if Nat.dist m n ∈ A then 0 else
    projectivePairBallMass F σ m n

/-- Dimension-indexed, real physical Euclidean BALL upper budget;
all original arithmetic diagonal weights and source indices stay. -/
def projectiveOutsideGapRowBudget (A : Finset ℕ)
    (F : OriginalTubeFamily d T) (σ η : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T,
    ((∑ n ∈ endpointIndex T,
        if m ≠ n then projectiveOutsideGapBallMass A F σ m n else 0) / η) *
      sourceDiagonal T m

/-- A genuine geometric theorem moves the previously exact but
unestimated physical row cost to a known projective tube-radius and
ball-volume sum. The positive eta denominator is not dropped. -/
theorem physicalOutsideGapRowBudget_le_projective
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T) (hsep : F.ProjectivelySeparated σ)
    (hfinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume
        (Metric.closedBall x
          ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    physicalOutsideGapRowBudget A F η ≤
      projectiveOutsideGapRowBudget A F σ η := by
  unfold physicalOutsideGapRowBudget projectiveOutsideGapRowBudget
  apply Finset.sum_le_sum
  intro m hm
  apply mul_le_mul_of_nonneg_right _ (sourceDiagonal_nonneg hT m hm)
  apply div_le_div_of_nonneg_right _ hη.le
  apply Finset.sum_le_sum
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · simp only [if_neg hmn]
    by_cases hgap : Nat.dist m n ∈ A
    · simp [physicalPairMassOutsideGap,
        projectiveOutsideGapBallMass, hgap]
    · simp only [physicalPairMassOutsideGap, if_neg hgap,
        projectiveOutsideGapBallMass, if_neg hgap]
      exact originalPhysicalPairMass_le_projectiveBall
        F σ hσ hsep hfinite m n hm hn hmn

/-- Exact unchanged source endpoint return using an actual
projective-separation theorem, not an assumed pair-overlap scalar. -/
theorem endpointSum_le_putnam_projective_signed_remainder
    (A : Finset ℕ) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T) (hsep : F.ProjectivelySeparated σ)
    (hfinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume
        (Metric.closedBall x
          ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    endpointSum T ≤
      4 * (A.card : ℝ) * T ^ 2 +
        projectiveOutsideGapRowBudget A F σ η +
        originalSignedRemainder A F η + 1 / 4 := by
  have hsource :=
    endpointSum_le_putnam_physical_signed_remainder A F η hη hT
  have hgeometry :=
    physicalOutsideGapRowBudget_le_projective A F σ η
      hσ hη hT hsep hfinite
  linarith

/-- Putnam all-positive-rate gap bound plus genuine projective
Euclidean geometry, while leaving the full signed leftover visible. -/
theorem endpointSum_le_ratePutnam_projective_signed_remainder
    (ε : ℝ) (hε : 0 < ε) (F : OriginalTubeFamily d T)
    (σ η : ℝ) (hσ : 0 < σ) (hη : 0 < η)
    (hT : 0 ≤ T) (hsep : F.ProjectivelySeparated σ)
    (hfinite : ∀ (i j : {m : ℕ // m ∈ endpointIndex T})
      (x : Space d),
      volume
        (Metric.closedBall x
          ((F.tube i).projectiveIntersectionRadius (F.tube j) σ)) ≠ ∞) :
    endpointSum T ≤
      (32 / ε ^ 2) * Real.exp (ε * T) +
        projectiveOutsideGapRowBudget
          (putnamRateGapSet ε T) F σ η +
        originalSignedRemainder (putnamRateGapSet ε T) F η +
        1 / 4 := by
  have hsource :=
    endpointSum_le_ratePutnam_physical_signed_remainder ε hε F η hη hT
  have hgeometry :=
    physicalOutsideGapRowBudget_le_projective
      (putnamRateGapSet ε T) F σ η
      hσ hη hT hsep hfinite
  linarith

end GRWTSK.NumberTheory.Moebius.PutnamKakeyaProjectiveGeometry
