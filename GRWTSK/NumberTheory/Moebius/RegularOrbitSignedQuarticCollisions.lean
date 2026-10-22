/- 
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #772. Direct stacked parent: draft PR #770 at exact head
`d54b766fa3c15369580489d6ac87c7b7c3185c42`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitSignedResidueEnergy

/-!
# Regular signed residue energy as quartic affine collisions

The remaining regular obstruction is a residue-space L2 norm of signed
Möbius buckets.  Every bucket summand is real.  This module exposes the
underlying real bucket and expands its square exactly.

For a finite half-shift set `H`, the residue energy becomes a signed quartic
sum over `h,g in H` and affine bases `u,v`, restricted by equality of the
two affine residue coordinates.

No absolute value is inserted into the quartic collision sum.
No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Generic real signed residue bucket for an arbitrary finite half-shift
family. -/
def parityHalfShiftSignedResidueRealBucket
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (s : ZMod (d * d)) : ℝ :=
  2 * ∑ h ∈ H,
    ∑ u ∈ parityAffineShiftBaseSet b r h,
      if parityAffineShiftResidueCoordinate d u h = s then
        moebiusReal u * moebiusReal (u + 2 * h)
      else 0

/-- Complex version of the same generic bucket. -/
def parityHalfShiftSignedResidueComplexBucket
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (s : ZMod (d * d)) : ℂ :=
  ∑ h ∈ H,
    parityAffineShiftResidueCorrelation b d r h s

/-- The generic complex bucket is the coercion of the real signed bucket. -/
theorem parityHalfShiftSignedResidueComplexBucket_eq_real
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (s : ZMod (d * d)) :
    parityHalfShiftSignedResidueComplexBucket b d r H s =
      (parityHalfShiftSignedResidueRealBucket b d r H s : ℂ) := by
  classical
  unfold parityHalfShiftSignedResidueComplexBucket
    parityHalfShiftSignedResidueRealBucket
    parityAffineShiftResidueCorrelation
  push_cast
  simp_rw [Finset.mul_sum]
  ring

/-- Even refined bucket as the generic half-shift bucket. -/
theorem parityEvenHalfShiftSignedResidueBucket_eq_generic
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) :
    parityEvenHalfShiftSignedResidueBucket b d r s =
      parityHalfShiftSignedResidueComplexBucket
        b d r (positiveEndpointEvenShiftSet b) s := by
  rfl

/-- Odd refined bucket as the generic half-shift bucket. -/
theorem parityOddHalfShiftSignedResidueBucket_eq_generic
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueBucket b d r s =
      parityHalfShiftSignedResidueComplexBucket
        b d r (positiveEndpointOddShiftSet b) s := by
  rfl

/-- Exact signed quartic affine collision sum for one half-shift family.

The equality of affine residue coordinates is retained literally. -/
def parityHalfShiftSignedQuarticCollision
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if parityAffineShiftResidueCoordinate d u h =
              parityAffineShiftResidueCoordinate d v g then
            moebiusReal u *
              moebiusReal (u + 2 * h) *
              moebiusReal v *
              moebiusReal (v + 2 * g)
          else 0

/-- The real bucket energy is exactly the signed quartic collision sum. -/
theorem sum_sq_realBucket_eq_signedQuarticCollision
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      parityHalfShiftSignedResidueRealBucket b d r H s ^ 2) =
      parityHalfShiftSignedQuarticCollision b d r H := by
  classical
  unfold parityHalfShiftSignedResidueRealBucket
    parityHalfShiftSignedQuarticCollision
  simp_rw [pow_two]
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  ring_nf
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  apply Finset.sum_congr rfl
  intro u _hu
  apply Finset.sum_congr rfl
  intro v _hv
  by_cases hcoord :
      parityAffineShiftResidueCoordinate d u h =
        parityAffineShiftResidueCoordinate d v g
  · rw [hcoord]
    simp
  · have hne :
        ∀ s : ZMod (d * d),
          ¬ (parityAffineShiftResidueCoordinate d u h = s ∧
            parityAffineShiftResidueCoordinate d v g = s) := by
      intro s hs
      exact hcoord (hs.1.trans hs.2.symm)
    simp [hcoord, hne]

/-- Generic complex residue energy equals the signed quartic collision sum. -/
theorem sum_norm_sq_complexBucket_eq_signedQuarticCollision
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      ‖parityHalfShiftSignedResidueComplexBucket b d r H s‖ ^ 2) =
      parityHalfShiftSignedQuarticCollision b d r H := by
  simp_rw [parityHalfShiftSignedResidueComplexBucket_eq_real]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact sum_sq_realBucket_eq_signedQuarticCollision b d r H

/-- Even-half-shift residue energy is exactly its signed quartic collision. -/
theorem parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision
    (b d r : ℕ) [NeZero d] :
    parityEvenHalfShiftSignedResidueEnergy b d r =
      parityHalfShiftSignedQuarticCollision
        b d r (positiveEndpointEvenShiftSet b) := by
  unfold parityEvenHalfShiftSignedResidueEnergy
  simp_rw [parityEvenHalfShiftSignedResidueBucket_eq_generic]
  exact
    sum_norm_sq_complexBucket_eq_signedQuarticCollision
      b d r (positiveEndpointEvenShiftSet b)

/-- Odd-half-shift residue energy is exactly its signed quartic collision. -/
theorem parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision
    (b d r : ℕ) [NeZero d] :
    parityOddHalfShiftSignedResidueEnergy b d r =
      parityHalfShiftSignedQuarticCollision
        b d r (positiveEndpointOddShiftSet b) := by
  unfold parityOddHalfShiftSignedResidueEnergy
  simp_rw [parityOddHalfShiftSignedResidueBucket_eq_generic]
  exact
    sum_norm_sq_complexBucket_eq_signedQuarticCollision
      b d r (positiveEndpointOddShiftSet b)

/-- Four signed quartic collision square roots for one modulus. -/
def twoNonunitRegularSignedQuarticCollisionMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  Real.sqrt
      (parityHalfShiftSignedQuarticCollision
        b d 0 (positiveEndpointEvenShiftSet b)) +
    Real.sqrt
      (parityHalfShiftSignedQuarticCollision
        b d 0 (positiveEndpointOddShiftSet b)) +
    Real.sqrt
      (parityHalfShiftSignedQuarticCollision
        b d 1 (positiveEndpointEvenShiftSet b)) +
    Real.sqrt
      (parityHalfShiftSignedQuarticCollision
        b d 1 (positiveEndpointOddShiftSet b))

/-- Exact equality of the residue-L2 and signed quartic collision majorants. -/
theorem residueL2Majorant_eq_signedQuarticCollision
    (b d : ℕ) [NeZero d] :
    twoNonunitRegularShiftParityResidueL2Majorant b d =
      twoNonunitRegularSignedQuarticCollisionMajorant b d := by
  unfold twoNonunitRegularShiftParityResidueL2Majorant
    twoNonunitRegularSignedQuarticCollisionMajorant
  rw [parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision,
      parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision,
      parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision,
      parityOddHalfShiftSignedResidueEnergy_eq_quarticCollision]

/-- Endpoint surface in the exact signed quartic collision coordinates. -/
def twoNonunitRegularSignedQuarticCollisionEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        twoNonunitRegularSignedQuarticCollisionMajorant b d
      else 0
    else 0

/-- Exact endpoint equality with the residue-L2 surface from PR #770. -/
theorem residueL2EndpointMajorant_eq_signedQuarticCollision
    (b : ℕ) :
    twoNonunitRegularShiftParityResidueL2EndpointMajorant b =
      twoNonunitRegularSignedQuarticCollisionEndpointMajorant b := by
  unfold twoNonunitRegularShiftParityResidueL2EndpointMajorant
    twoNonunitRegularSignedQuarticCollisionEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    exact residueL2Majorant_eq_signedQuarticCollision b d
  · simp [hNonunit]

/-- Natural-scale supplier for the exact signed quartic collision surface. -/
def DyadicNaturalScaleRegularSignedQuarticCollisionBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularSignedQuarticCollisionEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence of the residue-L2 and quartic-collision suppliers. -/
theorem regularResidueL2Budget_iff_signedQuarticCollision :
    DyadicNaturalScaleRegularShiftParityResidueL2Budget ↔
      DyadicNaturalScaleRegularSignedQuarticCollisionBudget := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hscale⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← residueL2EndpointMajorant_eq_signedQuarticCollision]
    exact hscale j b hb
  · intro h δ hδ
    obtain ⟨C, hC, hscale⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [residueL2EndpointMajorant_eq_signedQuarticCollision]
    exact hscale j b hb

/-- Conservative source profile for the genuinely arithmetic quartic
collision estimate. -/
structure RegularSignedQuarticCollisionSourceData where
  theoremStatement : Prop
  affineResidueCollisionMatched : Prop
  mobiusQuarticSignsMatched : Prop
  evenHalfShiftFamilyMatched : Prop
  oddHalfShiftFamilyMatched : Prop
  bothEndpointParityClassesMatched : Prop
  effectiveSquareModuliMatched : Prop
  positiveCollisionCountNotSubstituted : Prop
  naturalScaleNormalizationMatched : Prop

def RegularSignedQuarticCollisionSource
    (d : RegularSignedQuarticCollisionSourceData) : Prop :=
  d.theoremStatement ∧
    d.affineResidueCollisionMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenHalfShiftFamilyMatched ∧
    d.oddHalfShiftFamilyMatched ∧
    d.bothEndpointParityClassesMatched ∧
    d.effectiveSquareModuliMatched ∧
    d.positiveCollisionCountNotSubstituted ∧
    d.naturalScaleNormalizationMatched

structure ToRegularSignedQuarticCollisionBudgetAdapter
    (source : Prop) : Type where
  toQuarticBudget :
    source → DyadicNaturalScaleRegularSignedQuarticCollisionBudget

abbrev RegularSignedQuarticCollisionAdapter
    (d : RegularSignedQuarticCollisionSourceData) :=
  ToRegularSignedQuarticCollisionBudgetAdapter
    (RegularSignedQuarticCollisionSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_sq_realBucket_eq_signedQuarticCollision
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityEvenHalfShiftSignedResidueEnergy_eq_quarticCollision
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.residueL2EndpointMajorant_eq_signedQuarticCollision
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularResidueL2Budget_iff_signedQuarticCollision
