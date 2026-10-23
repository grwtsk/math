/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #633. Direct stacked parent: draft PR #631 at
`6d2674d6b8a7315aefe9298dfddc03ef35b0128a`.
-/
import GRWTSK.NumberTheory.Moebius.SignedResidueConvolutionShiftAffine

/-!
# Half-index normalization of the growing-shift affine Chowla family

The exact affine family from PR #631 is indexed by a parity-restricted base
variable `u`.  On parity `r in {0,1}`, write

`u = 2*m+r`.

The affine forms become

`2*m+r` and `2*m+r+2*h`,

and the additive phase becomes

`e_(d^2)(k*(2*m+h))
 = e_(d^2)(k*h) * e_(d^2)((2*k)*m)`.

This module proves that exact finite reindexing, retains the shift phase inside
the outer shift sum, and exposes the doubled frequency without assuming that
multiplication by two is invertible modulo `d^2`.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact half-index support for parity `r` and positive shift `h`.

The conditions are the literal endpoint constraints after substituting
`u=2*m+r`. -/
def parityHalfIndexAffineBaseSet
    (b r h : ℕ) : Finset ℕ :=
  (Finset.range (b + 1)).filter
    (fun m => 1 ≤ 2 * m + r ∧ 2 * m + r + 2 * h ≤ b)

/-- A parity-restricted affine base maps to the declared half-index support. -/
theorem halfIndex_mem_of_parityAffineBase
    {b r h u : ℕ}
    (hr : r < 2)
    (hu : u ∈ parityAffineShiftBaseSet b r h) :
    u / 2 ∈ parityHalfIndexAffineBaseSet b r h := by
  rcases Finset.mem_filter.mp hu with ⟨huParity, huTop⟩
  rcases Finset.mem_filter.mp huParity with ⟨huI, huMod⟩
  unfold parityHalfIndexAffineBaseSet
  apply Finset.mem_filter.mpr
  constructor
  · apply Finset.mem_range.mpr
    omega
  · constructor <;> omega

/-- A declared half-index maps back to the exact parity-restricted affine
support. -/
theorem parityAffineBase_mem_of_halfIndex
    {b r h m : ℕ}
    (hr : r < 2)
    (hm : m ∈ parityHalfIndexAffineBaseSet b r h) :
    2 * m + r ∈ parityAffineShiftBaseSet b r h := by
  rcases Finset.mem_filter.mp hm with ⟨_hmRange, hmBounds⟩
  unfold parityAffineShiftBaseSet endpointParitySet
  apply Finset.mem_filter.mpr
  constructor
  · apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_Icc.mpr
      constructor <;> omega
    · omega
  · exact hmBounds.2

/-- On parity `r<2`, reconstructing from the half-index recovers the original
base variable. -/
theorem two_mul_half_add_parity_eq
    {u r : ℕ}
    (hr : r < 2)
    (hu : u % 2 = r) :
    2 * (u / 2) + r = u := by
  omega

/-- Dividing the reconstructed parity variable by two recovers the half-index. -/
theorem reconstructedParity_half_eq
    (m r : ℕ)
    (hr : r < 2) :
    (2 * m + r) / 2 = m := by
  omega

/-- Generic exact finite sum reindex from the parity-restricted base variable
to the half-index. -/
theorem sum_parityAffineShiftBaseSet_eq_halfIndex
    {α : Type*} [AddCommMonoid α]
    (b r h : ℕ)
    (hr : r < 2)
    (f : ℕ → α) :
    (∑ u ∈ parityAffineShiftBaseSet b r h, f u) =
      ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
        f (2 * m + r) := by
  classical
  apply Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m + r)
  · intro u hu
    exact halfIndex_mem_of_parityAffineBase hr hu
  · intro m hm
    exact parityAffineBase_mem_of_halfIndex hr hm
  · intro u hu
    have huParity :=
      (Finset.mem_filter.mp
        (Finset.mem_filter.mp hu).1).2
    exact two_mul_half_add_parity_eq hr huParity
  · intro m _hm
    exact reconstructedParity_half_eq m r hr
  · intro u hu
    have huParity :=
      (Finset.mem_filter.mp
        (Finset.mem_filter.mp hu).1).2
    rw [two_mul_half_add_parity_eq hr huParity]

/-- Lower affine form in the half-index variable. -/
def halfIndexLowerAffineForm
    (r m : ℕ) : ℕ :=
  2 * m + r

/-- Upper affine form in the half-index variable. -/
def halfIndexUpperAffineForm
    (r h m : ℕ) : ℕ :=
  2 * m + r + 2 * h

/-- The upper form is the lower form translated by the exact positive even
shift. -/
theorem halfIndexUpperAffineForm_eq_lower_add_shift
    (r h m : ℕ) :
    halfIndexUpperAffineForm r h m =
      halfIndexLowerAffineForm r m + 2 * h := by
  rfl

/-- Frequency doubling is retained as a map, not treated as a permutation of
`ZMod (d^2)`. -/
def doubledSquareModulusFrequency
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ZMod (d * d) :=
  k + k

/-- Constant shift phase extracted from one affine twist. -/
def affineChowlaShiftPhase
    (d h : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ZMod.stdAddChar (k * (h : ZMod (d * d)))

/-- Exact half-index additive-twisted binary Chowla core. -/
def halfIndexAffineChowlaCore
    (b d r h : ℕ) [NeZero d]
    (ell : ZMod (d * d)) : ℂ :=
  2 * ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
    ((moebiusReal (halfIndexLowerAffineForm r m) : ℂ) *
      (moebiusReal (halfIndexUpperAffineForm r h m) : ℂ)) *
      ZMod.stdAddChar (ell * (m : ZMod (d * d)))

/-- On a reconstructed parity variable, the affine midpoint coordinate is
`2*m+h`. -/
theorem parityAffineShiftResidueCoordinate_reconstructed
    (d m r h : ℕ) [NeZero d]
    (hr : r < 2) :
    parityAffineShiftResidueCoordinate d (2 * m + r) h =
      (m : ZMod (d * d)) +
        (m : ZMod (d * d)) +
        (h : ZMod (d * d)) := by
  unfold parityAffineShiftResidueCoordinate parityResidueCoordinate
  rw [reconstructedParity_half_eq m r hr]

/-- Exact factorization of the additive phase into a shift phase and a doubled
base frequency. -/
theorem stdAddChar_affineShift_eq_shift_mul_doubled
    (d m r h : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    ZMod.stdAddChar
        (k * parityAffineShiftResidueCoordinate d (2 * m + r) h) =
      affineChowlaShiftPhase d h k *
        ZMod.stdAddChar
          (doubledSquareModulusFrequency d k *
            (m : ZMod (d * d))) := by
  rw [parityAffineShiftResidueCoordinate_reconstructed d m r h hr]
  unfold affineChowlaShiftPhase doubledSquareModulusFrequency
  have harg :
      k * ((m : ZMod (d * d)) +
          (m : ZMod (d * d)) +
          (h : ZMod (d * d))) =
        k * (h : ZMod (d * d)) +
          (k + k) * (m : ZMod (d * d)) := by
    ring
  rw [harg, AddChar.map_add_eq_mul]

/-- The exact growing-shift affine twist is a shift phase times the half-index
fixed-form core at doubled frequency. -/
theorem parityGrowingShiftAffineChowlaTwist_eq_halfIndex
    (b d r h : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityGrowingShiftAffineChowlaTwist b d r h k =
      affineChowlaShiftPhase d h k *
        halfIndexAffineChowlaCore b d r h
          (doubledSquareModulusFrequency d k) := by
  classical
  unfold parityGrowingShiftAffineChowlaTwist
  rw [sum_parityAffineShiftBaseSet_eq_halfIndex
    b r h hr]
  unfold halfIndexAffineChowlaCore
    halfIndexLowerAffineForm halfIndexUpperAffineForm
  calc
    2 * ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
        ((moebiusReal (2 * m + r) : ℂ) *
          (moebiusReal (2 * m + r + 2 * h) : ℂ)) *
          ZMod.stdAddChar
            (k * parityAffineShiftResidueCoordinate d (2 * m + r) h) =
      2 * ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
        affineChowlaShiftPhase d h k *
          (((moebiusReal (2 * m + r) : ℂ) *
            (moebiusReal (2 * m + r + 2 * h) : ℂ)) *
            ZMod.stdAddChar
              (doubledSquareModulusFrequency d k *
                (m : ZMod (d * d)))) := by
          apply congrArg (fun z : ℂ => 2 * z)
          apply Finset.sum_congr rfl
          intro m _hm
          rw [stdAddChar_affineShift_eq_shift_mul_doubled
            d m r h hr k]
          ring
    _ = affineChowlaShiftPhase d h k *
        (2 * ∑ m ∈ parityHalfIndexAffineBaseSet b r h,
          ((moebiusReal (2 * m + r) : ℂ) *
            (moebiusReal (2 * m + r + 2 * h) : ℂ)) *
            ZMod.stdAddChar
              (doubledSquareModulusFrequency d k *
                (m : ZMod (d * d)))) := by
          rw [Finset.mul_sum]
          ring

/-- The complete shift-weighted half-index correlation for one parity class. -/
def halfIndexAffineChowlaShiftAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointShiftSet b,
    affineChowlaShiftPhase d h k *
      halfIndexAffineChowlaCore b d r h
        (doubledSquareModulusFrequency d k)

/-- Exact equality between the old outer shift sum and the normalized
half-index aggregate. -/
theorem sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    (∑ h ∈ positiveEndpointShiftSet b,
      parityGrowingShiftAffineChowlaTwist b d r h k) =
      halfIndexAffineChowlaShiftAggregate b d r k := by
  unfold halfIndexAffineChowlaShiftAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  exact
    parityGrowingShiftAffineChowlaTwist_eq_halfIndex
      b d r h hr k

/-- Pointwise frequency majorant in the half-index fixed-form normalization. -/
def halfIndexAffineChowlaFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖halfIndexAffineChowlaShiftAggregate b d 0 k‖ +
      ‖halfIndexAffineChowlaShiftAggregate b d 1 k‖)

/-- Exact equality of half-index and growing-shift affine frequency surfaces. -/
theorem halfIndexAffineChowlaFrequencyMajorant_eq_growingShift
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaFrequencyMajorant b d k =
      parityGrowingShiftAffineChowlaFrequencyMajorant b d k := by
  unfold halfIndexAffineChowlaFrequencyMajorant
    parityGrowingShiftAffineChowlaFrequencyMajorant
  rw [sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate
      b d 0 (by norm_num) k,
    sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate
      b d 1 (by norm_num) k]

/-- Normalized nonzero-frequency majorant for one square modulus. -/
def halfIndexAffineChowlaNonzeroModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      halfIndexAffineChowlaFrequencyMajorant b d k

/-- Exact equality at one square modulus. -/
theorem halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift
    (b d : ℕ) [NeZero d] :
    halfIndexAffineChowlaNonzeroModulusMajorant b d =
      parityGrowingShiftAffineChowlaNonzeroModulusMajorant b d := by
  unfold halfIndexAffineChowlaNonzeroModulusMajorant
    parityGrowingShiftAffineChowlaNonzeroModulusMajorant
  apply congrArg
  apply Finset.sum_congr rfl
  intro k _hk
  exact
    halfIndexAffineChowlaFrequencyMajorant_eq_growingShift b d k

/-- Endpoint aggregate in the half-index fixed-form normalization. -/
def halfIndexAffineChowlaEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      halfIndexAffineChowlaNonzeroModulusMajorant b d
    else 0

/-- Exact equality of endpoint consumer surfaces. -/
theorem halfIndexAffineChowlaEndpointMajorant_eq_growingShift
    (b : ℕ) :
    halfIndexAffineChowlaEndpointMajorant b =
      parityGrowingShiftAffineChowlaEndpointMajorant b := by
  unfold halfIndexAffineChowlaEndpointMajorant
    parityGrowingShiftAffineChowlaEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  exact
    halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift b d

/-- Natural-scale supplier in the half-index fixed-form normalization. -/
def DyadicNaturalScaleHalfIndexAffineChowlaBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      halfIndexAffineChowlaEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The half-index supplier is exactly equivalent to the growing-shift affine
supplier from PR #631. -/
theorem dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift :
    DyadicNaturalScaleHalfIndexAffineChowlaBudget ↔
      DyadicNaturalScaleGrowingShiftAffineChowlaBudget := by
  constructor
  · intro hHalf δ hδ
    obtain ⟨C, hC, hscale⟩ := hHalf δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← halfIndexAffineChowlaEndpointMajorant_eq_growingShift]
    exact hscale j b hb
  · intro hGrowing δ hδ
    obtain ⟨C, hC, hscale⟩ := hGrowing δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [halfIndexAffineChowlaEndpointMajorant_eq_growingShift]
    exact hscale j b hb

/-- Downstream composition with the independent pointwise-Mertens zero-mode
premise. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hHalf : DyadicNaturalScaleHalfIndexAffineChowlaBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla
    hPoint
    (dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift.mp
      hHalf)

/-- Generic proof-producing adapter into the exact half-index affine budget. -/
structure ToHalfIndexAffineChowlaBudgetAdapter
    (source : Prop) : Type where
  toHalfIndexBudget :
    source → DyadicNaturalScaleHalfIndexAffineChowlaBudget

/-- Conservative fixed-form source profile for the normalized interface.

No named fixed-form theorem is asserted to supply these additional uniformity
fields. -/
structure FixedFormHalfIndexAffineChowlaData where
  fixedAffineFormTheorem : Prop
  formsTwoMPlusConstantsMatched : Prop
  additiveTwistOrResidueCompatibility : Prop
  growingShiftUniformity : Prop
  growingSquareModulusUniformity : Prop
  doubledFrequencyCoverage : Prop
  parityClassUniformity : Prop
  exactEndpointSupportUniformity : Prop
  frequencyModulusEndpointAggregation : Prop
  oneConstantPerExponent : Prop

/-- Proposition exposed by a fixed-form source plus every missing bridge. -/
def FixedFormHalfIndexAffineChowlaSource
    (d : FixedFormHalfIndexAffineChowlaData) : Prop :=
  d.fixedAffineFormTheorem ∧
    d.formsTwoMPlusConstantsMatched ∧
    d.additiveTwistOrResidueCompatibility ∧
    d.growingShiftUniformity ∧
    d.growingSquareModulusUniformity ∧
    d.doubledFrequencyCoverage ∧
    d.parityClassUniformity ∧
    d.exactEndpointSupportUniformity ∧
    d.frequencyModulusEndpointAggregation ∧
    d.oneConstantPerExponent

abbrev FixedFormHalfIndexAffineChowlaAdapter
    (d : FixedFormHalfIndexAffineChowlaData) :=
  ToHalfIndexAffineChowlaBudgetAdapter
    (FixedFormHalfIndexAffineChowlaSource d)

/-- Hostile boundary: doubled-frequency coverage is not inferred from a theorem
stated only for a selected or invertibly reindexed frequency family. -/
structure DoubledFrequencyCoverageAdapter
    (selected doubled : Prop) : Type where
  cover : selected → doubled

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityGrowingShiftAffineChowlaTwist_eq_halfIndex
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexAffineChowlaEndpointMajorant_eq_growingShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift
