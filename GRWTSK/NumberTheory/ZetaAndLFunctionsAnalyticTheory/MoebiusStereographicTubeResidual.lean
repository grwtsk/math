/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.StereographicArithmeticTube
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPutnamKakeyaSignedResidual
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# A REAL original-integer-indexed arithmetic tube family and exact
# near/weak signed residual elimination, with the dense-budget cost visible

All original endpoint indices 1,...,N=floor(exp T) are mapped to the
actual finite EuclideanSpace R (Fin 2) straight Tube 2 object with
rational stereographic direction from the same positive integer n.
Every tube has center zero, radius 2, half-length 2 and actual shading
equal to the closed Euclidean unit ball, explicitly certified to be
inside its original cylinder. No endpoint index is merged or omitted.

At horizon N and original Putnam gap cutoff H, choose the ACTUAL
positive projective scale sigma=2*(H+1)/(N^2+1). Every distinct
original source pair at additive gap > H is genuinely separated at
that scale by the exact stereographic projective chord identity.
Every pair's actual physical shading intersection volume is the
strictly positive real area pi; set eta=pi. Therefore the two
*unselected signed* near-angular and weak-overlap packets are BOTH
identically zero, and so is the previous signed remainder.

This is an honest, arithmetic-defined geometrical realization but
it DOES NOT imply RH: essentially every long-gap source pair is now
charged to the positive angular/Kakeya row budget. For H=o(N), the
geometry is dense and the positive budget retains an O(N*T^2)
trivial-growth allowance, not all-positive-rate arithmetic cancellation.
That is a structural no-go for relying only on favorable geometric
coverage of the source.
-/

namespace GRWTSK.NumberTheory.Moebius.StereographicTubeResidual

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Farey.StereographicArithmeticTube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

classical

/-- The required genuinely source-indexed Euclidean straight-tube Family.
Every membership proof transports the ORIGINAL integer n unchanged. -/
def originalStereographicFamily (T : ℝ) : OriginalTubeFamily 2 T where
  tube i := arithmeticTube i.1
  shading _ := commonShading
  shading_subtube := by
    intro i x hx
    exact commonShading_subset_arithmeticTube i.1 hx
  weight := fun _ => 1
  weight_nonneg := by intro i; norm_num

theorem originalStereographicFamily_tube (T : ℝ)
    (m : {n : ℕ // n ∈ endpointIndex T}) :
    (originalStereographicFamily T).tube m = arithmeticTube m.1 := rfl

theorem originalStereographicFamily_shading (T : ℝ)
    (m : {n : ℕ // n ∈ endpointIndex T}) :
    (originalStereographicFamily T).shading m = commonShading := rfl

/-- The literal original finite positive integer inventory remains the
only source index set; the optional geometric channel does not change it. -/
def canonicalIndexSet (T : ℝ) : Finset ℕ := endpointIndex T

/-- For two DISTINCT original integers no mod-q, residue or
directional identification is introduced. Their actual physical
shading overlap is exactly pi, not a supplied generic pair mass. -/
theorem originalStereographic_pair_volume (T : ℝ)
    (m n : ℕ) (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    originalPhysicalPairMass (originalStereographicFamily T) m n =
      Real.pi := by
  simp only [originalPhysicalPairMass, dif_pos hm, dif_pos hn]
  change (volume : Measure (Space 2)).real
    (commonShading ∩ commonShading) = Real.pi
  simpa only [Set.inter_self] using commonShading_volume

/-- Natural additive distance translated exactly into the absolute
difference of the two original real index coordinates. -/
theorem natDist_real (m n : ℕ) :
    |(m : ℝ) - (n : ℝ)| = (Nat.dist m n : ℝ) := by
  rcases le_total m n with h | h
  · have hR : (m : ℝ) ≤ (n : ℝ) := by exact_mod_cast h
    rw [Nat.dist_eq_sub_of_le h, abs_of_nonpos (sub_nonpos.mpr hR)]
    rw [Nat.cast_sub h]
    ring
  · have hR : (n : ℝ) ≤ (m : ℝ) := by exact_mod_cast h
    rw [Nat.dist_eq_sub_of_le_right h, abs_of_nonneg (sub_nonneg.mpr hR)]
    rw [Nat.cast_sub h]
    ring

/-- Quantitative angular cutoff chosen from the exact source
inventory N=floor(exp T) and the already specified Putnam gap H. -/
def sourceCollarSigma (H : ℕ) (T : ℝ) : ℝ :=
  2 * ((H : ℝ) + 1) /
    (((⌊Real.exp T⌋₊ : ℝ)^2) + 1)

theorem sourceCollarSigma_pos (H : ℕ) (T : ℝ) :
    0 < sourceCollarSigma H T := by
  unfold sourceCollarSigma
  positivity

/-- Original source indices carry the actual rational stereographic
projective gap with no inexact angle or topology-only identification. -/
theorem canonical_original_projective_gap_lower (T : ℝ)
    (m n : ℕ) (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    2 * |(m : ℝ) - (n : ℝ)| /
        (((⌊Real.exp T⌋₊ : ℝ)^2) + 1) ≤
      originalProjectiveGap (originalStereographicFamily T) m n := by
  have hmBounds := Finset.mem_Icc.mp hm
  have hnBounds := Finset.mem_Icc.mp hn
  have hg := stereo_gap_lower_on_height
    m n ⌊Real.exp T⌋₊
    hmBounds.1 hnBounds.1 hmBounds.2 hnBounds.2
  change 2 * |(m : ℝ) - (n : ℝ)| /
        (((⌊Real.exp T⌋₊ : ℝ)^2) + 1) ≤
    projectiveDirectionGap (stereoDirection m) (stereoDirection n)
  exact hg

/-- Every pair outside the already paid additive gap set is
ACTUALLY transverse at the selected positive source angular scale.
No global projectively separated family is claimed. -/
theorem canonical_long_gap_separated (T : ℝ) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hfar : H < Nat.dist m n) :
    sourceCollarSigma H T ≤
      originalProjectiveGap (originalStereographicFamily T) m n := by
  have hdist : H + 1 ≤ Nat.dist m n := Nat.succ_le_iff.mpr hfar
  have hreal : (H : ℝ) + 1 ≤ |(m : ℝ)-(n : ℝ)| := by
    rw [natDist_real]
    exact_mod_cast hdist
  calc
    sourceCollarSigma H T =
        2 * ((H : ℝ) + 1) /
          (((⌊Real.exp T⌋₊ : ℝ)^2)+1) := rfl
    _ ≤ 2 * |(m : ℝ)-(n : ℝ)| /
          (((⌊Real.exp T⌋₊ : ℝ)^2)+1) := by
      apply div_le_div_of_nonneg_right _ (by positivity)
      nlinarith
    _ ≤ _ := canonical_original_projective_gap_lower T m n hm hn

/-- The original positive additive gaps through H are exactly the
already counted Putnam packet. -/
def shortGapSet (H : ℕ) : Finset ℕ := Finset.Icc 1 H

/-- No distinct original source pair outside the Putnam gap cutoff
can occur in the canonical NEAR-angle sector. -/
theorem canonical_not_near (T : ℝ) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hmn : m ≠ n) :
    ¬ nearRelation (shortGapSet H) (originalStereographicFamily T)
        (sourceCollarSigma H T) m n := by
  intro h
  have hpositive : 1 ≤ Nat.dist m n := by
    have hne : Nat.dist m n ≠ 0 := by
      intro hz
      apply hmn
      simpa using (Nat.dist_eq_zero.mp hz)
    omega
  have hfar : H < Nat.dist m n := by
    have hnot : Nat.dist m n ∉ shortGapSet H := h.1
    simp only [shortGapSet, Finset.mem_Icc, not_and] at hnot
    exact lt_of_not_ge (hnot hpositive)
  exact (not_lt_of_ge (canonical_long_gap_separated T H m n hm hn hfar)) h.2

/-- The ORIGINAL actual common source-shading overlap is pi for
all indices; the strict weak-overlap test below eta=pi never holds. -/
theorem canonical_not_weak (T : ℝ) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    ¬ weakRelation (shortGapSet H)
        (originalStereographicFamily T)
        (sourceCollarSigma H T) Real.pi m n := by
  intro h
  have hmass := originalStereographic_pair_volume T m n hm hn
  unfold weakRelation at h
  rw [hmass] at h
  exact (lt_irrefl Real.pi) h.2.2

/-- Exact ORIGINAL signed near-angle packet is zero, because the
arithmetic-to-geometry gap lower bound forces every distinct source
pair in that sector to have already been assigned to Putnam. -/
theorem canonical_nearCross_zero (T : ℝ) (H : ℕ) :
    nearAngularCross (shortGapSet H)
      (originalStereographicFamily T)
      (sourceCollarSigma H T) = 0 := by
  unfold nearAngularCross originalIncidenceCross orderedCross
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · have hfalse := canonical_not_near T H m n hm hn hmn
    simp [hmn, hfalse]

/-- Exact ORIGINAL signed weak-overlap packet is zero, because the
physical intersection is the positive measure pi for EVERY distinct
source pair. This is not an arithmetic cancellation theorem. -/
theorem canonical_weakCross_zero (T : ℝ) (H : ℕ) :
    weakOverlapCross (shortGapSet H)
      (originalStereographicFamily T)
      (sourceCollarSigma H T) Real.pi = 0 := by
  unfold weakOverlapCross originalIncidenceCross orderedCross
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · have hfalse := canonical_not_weak T H m n hm hn
    simp [hmn, hfalse]

/-- Both explicitly named ORIGINAL signed remainder sectors vanish
for this canonical, positive-overlap geometry, and the previously
opaque residual therefore vanishes by the genuine FOUR-PACKET
source identity. This does not bound the selected dense packet. -/
theorem canonical_full_signed_remainder_zero (T : ℝ) (H : ℕ) :
    angularFarSignedRemainder (shortGapSet H)
      (originalStereographicFamily T)
      (sourceCollarSigma H T) Real.pi = 0 := by
  rw [signedRemainder_eq_near_add_weak
    (shortGapSet H) (originalStereographicFamily T)
    (sourceCollarSigma H T) Real.pi Real.pi_pos]
  rw [canonical_nearCross_zero T H, canonical_weakCross_zero T H]
  ring

/-- The actual Lebesgue shading required in the previous angular
price theorem has finite volume, with no supplied free estimate. -/
theorem canonical_shading_finite (T : ℝ)
    (i : {n : ℕ // n ∈ endpointIndex T}) :
    volume ((originalStereographicFamily T).shading i) ≠ ∞ :=
  commonShading_volume_finite

/-- All finite Euclidean closed balls in the source two-dimensional
geometry have finite volume. -/
theorem canonical_ball_finite (T : ℝ) (σ : ℝ)
    (i j : {n : ℕ // n ∈ endpointIndex T}) (x : Space 2) :
    volume (Metric.closedBall x
      (((originalStereographicFamily T).tube i).projectiveIntersectionRadius
        ((originalStereographicFamily T).tube j) σ)) ≠ ∞ := by
  simp [EuclideanSpace.volume_closedBall_fin_two]

/-- The fully explicit original arithmetic family eliminates the
near-angular and weak-overlap remainder, but still retains the FULL
positive saturated row cost. This is a finite source-complete upper
bound and NOT a subexponential RH estimate. -/
theorem canonical_endpoint_paid_dense_budget
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      angularFarSaturatedRows (shortGapSet H)
        (originalStereographicFamily T)
        (sourceCollarSigma H T) Real.pi + 1/4 := by
  have h := endpointSum_le_putnam_angular_saturated_signed
    (shortGapSet H) (originalStereographicFamily T)
    (sourceCollarSigma H T) Real.pi
    (sourceCollarSigma_pos H T) Real.pi_pos hT
    (canonical_shading_finite T) (canonical_ball_finite T
      (sourceCollarSigma H T))
  rw [canonical_full_signed_remainder_zero T H] at h
  linarith

end GRWTSK.NumberTheory.Moebius.StereographicTubeResidual
