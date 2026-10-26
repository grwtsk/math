/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK files retain authors/license duties. -/
import GRWTSK.Analysis.Geometry.FiniteProjectiveFrameScalar
import GRWTSK.Analysis.Geometry.FiniteStraightTubeTransverseEnergy

set_option autoImplicit false
noncomputable section

/-!
# A quantitative projective-angle transverse frame

The original finite straight Euclidean Kakeya tube declarations retain
the UNORIENTED direction gap
  gap(ω,ν) = min(||ω-ν||,||ω+ν||).
An actual gap lower bound σ>0 implies BOTH unit-chord estimates
  σ² ≤ 2-2⟪ω,ν⟫   and   σ² ≤ 2+2⟪ω,ν⟫.

The orthogonal-projection identities are derived from Mathlib's
real inner-product squared-norm expansion. Together with the prior
source-owned scalar Gram inequality this constructs the formerly
supplied TwoDirectionTransversality record with explicit
  gamma = σ²/4 > 0.

This is a finite-dimensional, nonsharp algebraic frame bound.
It does NOT assert Kakeya maximal inequalities, any convex
non-clustering volume theorem, or dimension-independent strong
δ/angle overlap exponents.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

open GRWTSK.Analysis.Geometry.FiniteProjectiveFrameScalar

variable {d : ℕ}

/-- Exact orthogonal-projection Pythagoras. The source unit direction
is normalized by its actual sphere-membership proof. -/
theorem transversePart_norm_sq
    (ω : Direction d) (z : Space d) :
    ‖transversePart ω z‖ ^ 2 =
      ‖z‖ ^ 2 - (inner ℝ z (ω : Space d)) ^ 2 := by
  let a : ℝ := inner ℝ z (ω : Space d)
  have hnorm :
      ‖a • (ω : Space d)‖ ^ 2 = a ^ 2 := by
    rw [norm_smul, direction_norm]
    simp [Real.norm_eq_abs, sq_abs]
  have hinner :
      inner ℝ z (a • (ω : Space d)) = a ^ 2 := by
    rw [real_inner_smul_right]
    dsimp [a]
    ring
  have h := norm_sub_sq_real z (a • (ω : Space d))
  change ‖transversePart ω z‖ ^ 2 =
    ‖z‖ ^ 2 - 2 * inner ℝ z (a • (ω : Space d)) +
      ‖a • (ω : Space d)‖ ^ 2
  rw [hinner, hnorm]
  ring

/-- The exact Gram expression for the difference of the two true
orthogonal residuals, including signed axial coefficients. -/
theorem transversePart_difference_norm_sq
    (ω ν : Direction d) (z : Space d) :
    ‖transversePart ω z - transversePart ν z‖ ^ 2 =
      (inner ℝ z (ω : Space d)) ^ 2 +
      (inner ℝ z (ν : Space d)) ^ 2 -
        2 * (inner ℝ z (ω : Space d)) *
          (inner ℝ z (ν : Space d)) *
          (inner ℝ (ω : Space d) (ν : Space d)) := by
  let a : ℝ := inner ℝ z (ω : Space d)
  let b : ℝ := inner ℝ z (ν : Space d)
  let c : ℝ := inner ℝ (ω : Space d) (ν : Space d)
  have hdiff :
      transversePart ω z - transversePart ν z =
        b • (ν : Space d) - a • (ω : Space d) := by
    dsimp [transversePart, a, b]
    abel
  have hnormω :
      ‖a • (ω : Space d)‖ ^ 2 = a ^ 2 := by
    rw [norm_smul, direction_norm]
    simp [Real.norm_eq_abs, sq_abs]
  have hnormν :
      ‖b • (ν : Space d)‖ ^ 2 = b ^ 2 := by
    rw [norm_smul, direction_norm]
    simp [Real.norm_eq_abs, sq_abs]
  have hinner :
      inner ℝ (b • (ν : Space d)) (a • (ω : Space d)) =
        a * b * c := by
    rw [real_inner_smul_left, real_inner_smul_right,
      real_inner_comm (ν : Space d) (ω : Space d)]
    ring
  rw [hdiff, norm_sub_sq_real, hnormω, hnormν, hinner]
  dsimp [a, b, c]
  ring

/-- The actual two-direction difference is bounded above in squared
norm by twice the sum of its separate orthogonal energies.
No spectral or angular hypothesis is used here. -/
theorem transversePart_difference_sq_le_twice_energy
    (ω ν : Direction d) (z : Space d) :
    ‖transversePart ω z - transversePart ν z‖ ^ 2 ≤
      2 * (‖transversePart ω z‖ ^ 2 +
        ‖transversePart ν z‖ ^ 2) := by
  let u := transversePart ω z
  let v := transversePart ν z
  have htriangle : ‖u - v‖ ≤ ‖u‖ + ‖v‖ :=
    norm_sub_le u v
  have hnormu : 0 ≤ ‖u‖ := norm_nonneg _
  have hnormv : 0 ≤ ‖v‖ := norm_nonneg _
  have hnonneg : 0 ≤ ‖u - v‖ := norm_nonneg _
  have hsquare :
      0 ≤ (‖u‖ + ‖v‖ - ‖u - v‖) *
        (‖u‖ + ‖v‖ + ‖u - v‖) :=
    mul_nonneg (sub_nonneg.mpr htriangle)
      (by linarith)
  dsimp [u,v] at *
  nlinarith [sq_nonneg (‖transversePart ω z‖ -
      ‖transversePart ν z‖)]

/-- The projective gap is bounded by the smaller of the two true
unit chord lengths; both induce *independent* signed Gram bounds. -/
theorem projective_chord_sq_bounds
    (ω ν : Direction d) {sigma : ℝ}
    (hsigma : 0 ≤ sigma)
    (hgap : sigma ≤ projectiveDirectionGap ω ν) :
    sigma ^ 2 ≤
      2 - 2 * inner ℝ (ω : Space d) (ν : Space d) ∧
    sigma ^ 2 ≤
      2 + 2 * inner ℝ (ω : Space d) (ν : Space d) ∧
    sigma ^ 2 ≤ 2 := by
  have hdist1 :
      sigma ≤ ‖(ω : Space d) - (ν : Space d)‖ := by
    have h := le_trans hgap
      (min_le_left
        (dist (ω : Space d) (ν : Space d))
        (dist (ω : Space d) (-(ν : Space d))))
    simpa only [projectiveDirectionGap, dist_eq_norm] using h
  have hdist2 :
      sigma ≤ ‖(ω : Space d) + (ν : Space d)‖ := by
    have h := le_trans hgap
      (min_le_right
        (dist (ω : Space d) (ν : Space d))
        (dist (ω : Space d) (-(ν : Space d))))
    simpa only [projectiveDirectionGap, dist_eq_norm, sub_neg_eq_add] using h
  have hsq1 :
      sigma ^ 2 ≤ ‖(ω : Space d) - (ν : Space d)‖ ^ 2 := by
    have hnonneg :
        0 ≤ (‖(ω : Space d) - (ν : Space d)‖ - sigma) *
          (‖(ω : Space d) - (ν : Space d)‖ + sigma) :=
      mul_nonneg (sub_nonneg.mpr hdist1)
        (add_nonneg (norm_nonneg _) hsigma)
    nlinarith
  have hsq2 :
      sigma ^ 2 ≤ ‖(ω : Space d) + (ν : Space d)‖ ^ 2 := by
    have hnonneg :
        0 ≤ (‖(ω : Space d) + (ν : Space d)‖ - sigma) *
          (‖(ω : Space d) + (ν : Space d)‖ + sigma) :=
      mul_nonneg (sub_nonneg.mpr hdist2)
        (add_nonneg (norm_nonneg _) hsigma)
    nlinarith
  have hminus :
      ‖(ω : Space d) - (ν : Space d)‖ ^ 2 =
        2 - 2 * inner ℝ (ω : Space d) (ν : Space d) := by
    rw [norm_sub_sq_real, direction_norm, direction_norm]
    ring
  have hplus :
      ‖(ω : Space d) + (ν : Space d)‖ ^ 2 =
        2 + 2 * inner ℝ (ω : Space d) (ν : Space d) := by
    rw [norm_add_sq_real, direction_norm, direction_norm]
    ring
  constructor
  · nlinarith
  constructor
  · nlinarith
  · nlinarith

/-- The **actual** Euclidean projection frame bound from a true
unoriented/projective chord gap. The explicit constant sigma²/4
is positive whenever sigma>0; it is nonsharp but not hypothetical. -/
theorem projective_transverse_coercivity
    (ω ν : Direction d) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap ω ν)
    (z : Space d) :
    (sigma ^ 2 / 4) * ‖z‖ ^ 2 ≤
      ‖transversePart ω z‖ ^ 2 +
        ‖transversePart ν z‖ ^ 2 := by
  let a : ℝ := inner ℝ z (ω : Space d)
  let b : ℝ := inner ℝ z (ν : Space d)
  let c : ℝ := inner ℝ (ω : Space d) (ν : Space d)
  let E : ℝ := ‖transversePart ω z‖ ^ 2 +
    ‖transversePart ν z‖ ^ 2
  let N : ℝ := ‖z‖ ^ 2
  obtain ⟨hminus, hplus, hsmall⟩ :=
    projective_chord_sq_bounds ω ν hsigma.le hgap
  have henergy : a ^ 2 + b ^ 2 + E = 2 * N := by
    dsimp [a,b,E,N]
    have hω := transversePart_norm_sq ω z
    have hν := transversePart_norm_sq ν z
    nlinarith
  have hgram :
      a ^ 2 + b ^ 2 - 2 * a * b * c ≤ 2 * E := by
    have hident := transversePart_difference_norm_sq ω ν z
    have hbound :=
      transversePart_difference_sq_le_twice_energy ω ν z
    dsimp [a,b,c,E]
    nlinarith
  have hE : 0 ≤ E := by
    dsimp [E]
    exact add_nonneg (sq_nonneg _) (sq_nonneg _)
  exact frame_gap_from_gram_data
    sigma a b c N E hsmall hminus hplus henergy hgram hE

/-- Remove the previously free frame transversality data:
projective σ-separation *constructs* the exact original
TwoDirectionTransversality interface and its positive gamma. -/
def twoDirectionTransversality_of_projective_gap
    (ω ν : Direction d) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap ω ν) :
    TwoDirectionTransversality ω ν where
  gamma := sigma ^ 2 / 4
  gamma_pos := by positivity
  coercive := fun z =>
    projective_transverse_coercivity ω ν hsigma hgap z

end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
