# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1ccaa4993b87f4561c29feeb50392beaece4c04` · SHA-256 `72ad10c5dc5501230977cbe09cfc01fb099624f3eabaf0cc978c0be543bee29e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #753. Direct stacked parent: draft PR #752 at exact head
`23db7e74f2c51956ecbeac3b4972bb8ac97f777c`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitFrequencyL2Reduction
import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality

/-!
# Canonical regular-frequency L2 to full-frequency L2

The regular branch has already been reduced to four canonical-frequency L2
norms over the representative set `R_d`.

This module performs the exact subset enlargement from `R_d` to the complete
frequency group `ZMod (d*d)`. Since each squared norm is nonnegative, every
canonical energy is bounded by the corresponding full-frequency energy.

This isolates the next theorem boundary cleanly: an exact Parseval identity for
the repository's literal transform

`F(k) = sum_s C(s) * ZMod.stdAddChar (k*s)`.

Mathlib contains finite-character orthogonality, but no normalization bridge is
asserted here until it is proved against this exact transform.

No Parseval identity and no analytic residue-energy estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- A nonnegative square-energy over the canonical representatives is bounded
by the same energy over every frequency. -/
theorem sum_sq_regularRepresentatives_le_univ
    (d : ℕ) [NeZero d]
    (f : ZMod (d * d) → ℂ) :
    (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d, ‖f k‖ ^ 2) ≤
      ∑ k : ZMod (d * d), ‖f k‖ ^ 2 := by
  exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
    (fun _ _ _ => sq_nonneg _)

/-- Corresponding square-root L2 monotonicity. -/
theorem sqrt_sum_sq_regularRepresentatives_le_univ
    (d : ℕ) [NeZero d]
    (f : ZMod (d * d) → ℂ) :
    Real.sqrt
        (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d, ‖f k‖ ^ 2) ≤
      Real.sqrt (∑ k : ZMod (d * d), ‖f k‖ ^ 2) := by
  exact Real.sqrt_le_sqrt
    (sum_sq_regularRepresentatives_le_univ d f)

/-- Sum of the four complete-frequency L2 norms for the refined signed
half-shift-parity Fourier transforms. -/
def twoNonunitRegularShiftParityFullFrequencyL2Majorant
    (b d : ℕ) [NeZero d] : ℝ :=
  Real.sqrt
      (∑ k : ZMod (d * d),
        ‖parityEvenHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) +
    Real.sqrt
      (∑ k : ZMod (d * d),
        ‖parityOddHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) +
    Real.sqrt
      (∑ k : ZMod (d * d),
        ‖parityEvenHalfShiftSignedResidueFourier b d 1 k‖ ^ 2) +
    Real.sqrt
      (∑ k : ZMod (d * d),
        ‖parityOddHalfShiftSignedResidueFourier b d 1 k‖ ^ 2)

/-- Canonical-frequency L2 is bounded termwise by complete-frequency L2. -/
theorem regularShiftParityFrequencyL2Majorant_le_fullFrequency
    (b d : ℕ) [NeZero d] :
    twoNonunitRegularShiftParityFrequencyL2Majorant b d ≤
      twoNonunitRegularShiftParityFullFrequencyL2Majorant b d := by
  unfold twoNonunitRegularShiftParityFrequencyL2Majorant
    twoNonunitRegularShiftParityFullFrequencyL2Majorant
  have h0e :=
    sqrt_sum_sq_regularRepresentatives_le_univ d
      (fun k => parityEvenHalfShiftSignedResidueFourier b d 0 k)
  have h0o :=
    sqrt_sum_sq_regularRepresentatives_le_univ d
      (fun k => parityOddHalfShiftSignedResidueFourier b d 0 k)
  have h1e :=
    sqrt_sum_sq_regularRepresentatives_le_univ d
      (fun k => parityEvenHalfShiftSignedResidueFourier b d 1 k)
  have h1o :=
    sqrt_sum_sq_regularRepresentatives_le_univ d
      (fun k => parityOddHalfShiftSignedResidueFourier b d 1 k)
  linarith

/-- Endpoint surface after replacing canonical-frequency energies by full
frequency energies. The reciprocal-`d` weight from PR #752 is unchanged. -/
def twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        ((d : ℝ))⁻¹ *
          twoNonunitRegularShiftParityFullFrequencyL2Majorant b d
      else 0
    else 0

/-- Exact subset enlargement at the endpoint level. -/
theorem regularShiftParityFrequencyL2EndpointMajorant_le_fullFrequency
    (b : ℕ) :
    twoNonunitRegularShiftParityFrequencyL2EndpointMajorant b ≤
      twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant b := by
  unfold twoNonunitRegularShiftParityFrequencyL2EndpointMajorant
    twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    exact mul_le_mul_of_nonneg_left
      (regularShiftParityFrequencyL2Majorant_le_fullFrequency b d)
      (by positivity)
  · simp [hNonunit]

/-- Natural-scale supplier for the complete-frequency L2 endpoint surface. -/
def DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Complete-frequency L2 control supplies the canonical-frequency L2 budget. -/
theorem regularShiftParityFrequencyL2Budget_of_fullFrequency
    (hFull : DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget) :
    DyadicNaturalScaleRegularShiftParityFrequencyL2Budget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hFull δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (regularShiftParityFrequencyL2EndpointMajorant_le_fullFrequency b).trans
      (hscale j b hb)

/-- Proof-relevant subset-enlargement adapter. -/
def regularFullFrequencyL2ToCanonicalFrequencyL2Adapter :
    ToRegularShiftParityFrequencyL2BudgetAdapter
      DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget where
  toFrequencyL2Budget :=
    regularShiftParityFrequencyL2Budget_of_fullFrequency

/-- Downstream composition through the preceding reductions. -/
theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFullFrequencyL2
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hFull : DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFrequencyL2
    hOrdinary hChiFour hUnit
    (regularShiftParityFrequencyL2Budget_of_fullFrequency hFull)

/-- Exact generic transform whose Parseval normalization must be proved in the
next layer. -/
def stdAddCharResidueFourier
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ)
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    C s * ZMod.stdAddChar (k * s)

/-- The exact Parseval proposition required by this branch.

It is intentionally typed rather than inhabited: Mathlib's finite-character
orthogonality must first be connected to this literal `stdAddChar (k*s)`
normalization. -/
def StdAddCharSquareModulusParseval : Prop :=
  ∀ d : ℕ, ∀ _hd : NeZero d,
    ∀ C : ZMod (d * d) → ℂ,
      (∑ k : ZMod (d * d),
        ‖stdAddCharResidueFourier d C k‖ ^ 2) =
      ((d * d : ℕ) : ℝ) *
        (∑ s : ZMod (d * d), ‖C s‖ ^ 2)

/-- Conservative source profile for the exact Parseval bridge. -/
structure StdAddCharSquareModulusParsevalSourceData where
  theoremStatement : Prop
  exactTransformMatched : Prop
  multiplicationArgumentMatched : Prop
  stdAddCharNormalizationMatched : Prop
  fullFrequencySetMatched : Prop
  fullResidueSetMatched : Prop
  realNormSquareNormalizationMatched : Prop
  modulusFactorExactlyDSquared : Prop

/-- Source proposition for a future exact Parseval theorem. -/
def StdAddCharSquareModulusParsevalSource
    (d : StdAddCharSquareModulusParsevalSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactTransformMatched ∧
    d.multiplicationArgumentMatched ∧
    d.stdAddCharNormalizationMatched ∧
    d.fullFrequencySetMatched ∧
    d.fullResidueSetMatched ∧
    d.realNormSquareNormalizationMatched ∧
    d.modulusFactorExactlyDSquared

/-- Any external or Mathlib orthogonality theorem must explicitly construct
this bridge before it can be used as Parseval evidence here. -/
structure ToStdAddCharSquareModulusParsevalAdapter
    (source : Prop) : Type where
  toParseval :
    source → StdAddCharSquareModulusParseval

abbrev StdAddCharSquareModulusParsevalAdapter
    (d : StdAddCharSquareModulusParsevalSourceData) :=
  ToStdAddCharSquareModulusParsevalAdapter
    (StdAddCharSquareModulusParsevalSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_sq_regularRepresentatives_le_univ
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityFrequencyL2Majorant_le_fullFrequency
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityFrequencyL2EndpointMajorant_le_fullFrequency
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityFrequencyL2Budget_of_fullFrequency
```
