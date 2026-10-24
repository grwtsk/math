# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityResidueConvolution

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9` · SHA-256 `64848f323d403b75f22ba4a260038dc61c539a966e6ac081a6778ef08fdd5ff1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #744. Direct stacked parent: draft PR #742 at exact head
`90bbed74c33774882f970c5e589b887475a78045`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitParityProjectors

/-!
# Shift-parity refinement of the signed residue convolution

The canonical regular-orbit projectors from PR #742 are exact even- and
odd-half-shift selectors.  The earlier signed residue convolution from PR #626
already decomposes exactly as a sum over positive half-shifts `h=(v-u)/2`.

This module refines that signed residue object by the parity of `h`.  Its two
additive Fourier transforms are exactly the normalized even- and odd-shift
projectors from PR #742.

No absolute value is inserted inside a residue bucket.  No positive
variance-plus-diagonal replacement is used.  No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Signed residue bucket containing only even positive half-shifts. -/
def parityEvenHalfShiftSignedResidueBucket
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointEvenShiftSet b,
    parityAffineShiftResidueCorrelation b d r h s

/-- Signed residue bucket containing only odd positive half-shifts. -/
def parityOddHalfShiftSignedResidueBucket
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointOddShiftSet b,
    parityAffineShiftResidueCorrelation b d r h s

/-- Every positive shift belongs to exactly one of the two parity classes. -/
theorem positiveEndpointShiftSet_eq_even_union_odd
    (b : ℕ) :
    positiveEndpointShiftSet b =
      positiveEndpointEvenShiftSet b ∪
        positiveEndpointOddShiftSet b := by
  classical
  ext h
  unfold positiveEndpointEvenShiftSet positiveEndpointOddShiftSet
  by_cases hh : h ∈ positiveEndpointShiftSet b
  · have hpar : h % 2 = 0 ∨ h % 2 = 1 := by omega
    rcases hpar with heven | hodd
    · simp [hh, heven]
    · simp [hh, hodd]
  · simp [hh]

/-- The even- and odd-shift sets are disjoint. -/
theorem positiveEndpointEvenShiftSet_disjoint_odd
    (b : ℕ) :
    Disjoint
      (positiveEndpointEvenShiftSet b)
      (positiveEndpointOddShiftSet b) := by
  classical
  refine Finset.disjoint_left.2 ?_
  intro h heven hodd
  have he := (Finset.mem_filter.mp heven).2
  have ho := (Finset.mem_filter.mp hodd).2
  omega

/-- The original signed residue bucket is exactly the sum of the two
half-shift-parity refinements. -/
theorem paritySignedResidueConvolutionBucket_eq_even_add_odd
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      parityEvenHalfShiftSignedResidueBucket b d r s +
        parityOddHalfShiftSignedResidueBucket b d r s := by
  rw [paritySignedResidueConvolutionBucket_eq_sum_affineShifts]
  rw [positiveEndpointShiftSet_eq_even_union_odd]
  rw [Finset.sum_union
    (positiveEndpointEvenShiftSet_disjoint_odd b)]
  rfl

/-- Fourier transform of the even-half-shift signed residue bucket. -/
def parityEvenHalfShiftSignedResidueFourier
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    parityEvenHalfShiftSignedResidueBucket b d r s *
      ZMod.stdAddChar (k * s)

/-- Fourier transform of the odd-half-shift signed residue bucket. -/
def parityOddHalfShiftSignedResidueFourier
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    parityOddHalfShiftSignedResidueBucket b d r s *
      ZMod.stdAddChar (k * s)

/-- Fourier transform of the even refinement is the sum of the exact
growing-shift affine twists over even half-shifts. -/
theorem parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityEvenHalfShiftSignedResidueFourier b d r k =
      ∑ h ∈ positiveEndpointEvenShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d r h k := by
  classical
  unfold parityEvenHalfShiftSignedResidueFourier
    parityEvenHalfShiftSignedResidueBucket
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  exact sum_shiftResidueCorrelation_mul_char b d r h k

/-- Fourier transform of the odd refinement is the sum of the exact
growing-shift affine twists over odd half-shifts. -/
theorem parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueFourier b d r k =
      ∑ h ∈ positiveEndpointOddShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d r h k := by
  classical
  unfold parityOddHalfShiftSignedResidueFourier
    parityOddHalfShiftSignedResidueBucket
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  exact sum_shiftResidueCorrelation_mul_char b d r h k

/-- The even refined Fourier transform is exactly the normalized even-shift
projector from PR #742. -/
theorem parityEvenHalfShiftSignedResidueFourier_eq_projector
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityEvenHalfShiftSignedResidueFourier b d r k =
      twoKernelEvenShiftProjectorAggregate b d r k := by
  rw [parityEvenHalfShiftSignedResidueFourier_eq_sum_affineTwists]
  unfold twoKernelEvenShiftProjectorAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  exact
    parityGrowingShiftAffineChowlaTwist_eq_halfIndex
      b d r h hr k

/-- The odd refined Fourier transform is exactly the normalized odd-shift
projector from PR #742. -/
theorem parityOddHalfShiftSignedResidueFourier_eq_projector
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueFourier b d r k =
      twoKernelOddShiftProjectorAggregate b d r k := by
  rw [parityOddHalfShiftSignedResidueFourier_eq_sum_affineTwists]
  unfold twoKernelOddShiftProjectorAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  exact
    parityGrowingShiftAffineChowlaTwist_eq_halfIndex
      b d r h hr k

/-- Canonical regular-orbit majorant rewritten directly in the two refined
signed-residue Fourier transforms for each endpoint parity. -/
def twoNonunitRegularShiftParityResidueFourierMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖parityEvenHalfShiftSignedResidueFourier b d 0 k‖ +
    ‖parityOddHalfShiftSignedResidueFourier b d 0 k‖ +
    ‖parityEvenHalfShiftSignedResidueFourier b d 1 k‖ +
    ‖parityOddHalfShiftSignedResidueFourier b d 1 k‖

/-- Exact pointwise equality of the canonical projector and refined
signed-residue majorants. -/
theorem twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoNonunitCanonicalRegularOrbitMajorant b d k =
      twoNonunitRegularShiftParityResidueFourierMajorant b d k := by
  unfold twoNonunitCanonicalRegularOrbitMajorant
    twoNonunitRegularShiftParityResidueFourierMajorant
  rw [parityEvenHalfShiftSignedResidueFourier_eq_projector b d 0 (by norm_num) k,
      parityOddHalfShiftSignedResidueFourier_eq_projector b d 0 (by norm_num) k,
      parityEvenHalfShiftSignedResidueFourier_eq_projector b d 1 (by norm_num) k,
      parityOddHalfShiftSignedResidueFourier_eq_projector b d 1 (by norm_num) k]

/-- Endpoint aggregate in the refined signed-residue Fourier coordinates. -/
def twoNonunitRegularShiftParityResidueEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitRegularShiftParityResidueFourierMajorant b d k
      else 0
    else 0

/-- Exact endpoint equality with the canonical regular projector surface. -/
theorem twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue
    (b : ℕ) :
    twoNonunitCanonicalRegularOrbitEndpointMajorant b =
      twoNonunitRegularShiftParityResidueEndpointMajorant b := by
  classical
  unfold twoNonunitCanonicalRegularOrbitEndpointMajorant
    twoNonunitRegularShiftParityResidueEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    refine congrArg
      (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x) ?_
    apply Finset.sum_congr rfl
    intro k _hk
    exact
      twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier
        b d k
  · simp [hNonunit]

/-- Natural-scale supplier expressed directly on the refined signed-residue
Fourier surface. -/
def DyadicNaturalScaleRegularShiftParityResidueBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularShiftParityResidueEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The refined signed-residue budget is exactly equivalent to the canonical
regular-projector budget. -/
theorem regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget :
    DyadicNaturalScaleRegularShiftParityResidueBudget ↔
      DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget := by
  constructor
  · intro hResidue δ hδ
    obtain ⟨C, hC, hscale⟩ := hResidue δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue]
    exact hscale j b hb
  · intro hCanonical δ hδ
    obtain ⟨C, hC, hscale⟩ := hCanonical δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue]
    exact hscale j b hb

/-- Proof-relevant adapter from the refined residue representation into the
existing canonical regular projector interface. -/
def regularShiftParityResidueToCanonicalProjectorAdapter :
    ToCanonicalRegularOrbitProjectorBudgetAdapter
      DyadicNaturalScaleRegularShiftParityResidueBudget where
  toCanonicalRegularBudget :=
    regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget.mp

/-- Downstream composition through the two pointwise Mertens premises. -/
theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidue
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hResidue : DyadicNaturalScaleRegularShiftParityResidueBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular
    hOrdinary hChiFour hUnit
    (regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget.mp
      hResidue)

/-- Conservative source profile for the next residue-space L2/Parseval layer.
No value is constructed here. -/
structure RegularShiftParityResidueL2SourceData where
  theoremStatement : Prop
  signedBucketsMatched : Prop
  halfShiftParityRefinementMatched : Prop
  bothEndpointParityClassesMatched : Prop
  canonicalRegularFrequencyRestrictionMatched : Prop
  exceptionalOrbitExcludedAndHandledSeparately : Prop
  finiteFourierNormalizationMatched : Prop
  squareModulusWeightMatched : Prop
  effectiveModulusSupportMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Source proposition for a future L2/Parseval or large-sieve estimate. -/
def RegularShiftParityResidueL2Source
    (d : RegularShiftParityResidueL2SourceData) : Prop :=
  d.theoremStatement ∧
    d.signedBucketsMatched ∧
    d.halfShiftParityRefinementMatched ∧
    d.bothEndpointParityClassesMatched ∧
    d.canonicalRegularFrequencyRestrictionMatched ∧
    d.exceptionalOrbitExcludedAndHandledSeparately ∧
    d.finiteFourierNormalizationMatched ∧
    d.squareModulusWeightMatched ∧
    d.effectiveModulusSupportMatched ∧
    d.naturalScaleNormalizationMatched

/-- Proof-producing bridge required from any future residue-space L2 theorem
into the exact refined budget. -/
structure ToRegularShiftParityResidueBudgetAdapter
    (source : Prop) : Type where
  toRegularResidueBudget :
    source → DyadicNaturalScaleRegularShiftParityResidueBudget

abbrev RegularShiftParityResidueL2Adapter
    (d : RegularShiftParityResidueL2SourceData) :=
  ToRegularShiftParityResidueBudgetAdapter
    (RegularShiftParityResidueL2Source d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionBucket_eq_even_add_odd
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityEvenHalfShiftSignedResidueFourier_eq_projector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityOddHalfShiftSignedResidueFourier_eq_projector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitCanonicalRegularOrbitEndpointMajorant_eq_shiftParityResidue
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityResidueBudget_iff_canonicalRegularProjectorBudget
```
