# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitParityProjectors

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9a15e1021f4c46f86154eeffa69fb74cc277925` · SHA-256 `48640033c8d5cff0dadfaae48c102895103480feacd6f7747830b68707e3e94c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #740. Direct stacked parent: draft PR #735 at exact head
`a3d0ea5770e5006c7f8e242356ed4f7d23b3f7d3`.
-/
import GRWTSK.NumberTheory.Moebius.ChiFourMertensPointwiseToDyadic

/-!
# Canonical parity projectors for the regular two-nonunit orbit

The regular two-nonunit branch already forms the order-two kernel pair
projectors before any norm is taken.  The later exceptional-character
identification proves, on every two-nonunit square modulus,

`twoKernelShiftCharacter d h = (-1)^h`.

Therefore the pair-sum and pair-difference projectors are exact parity
selectors in the positive shift variable:

* pair-sum = twice the even-shift projected aggregate;
* pair-difference = twice the odd-shift projected aggregate.

This module scripts that exact finite normalization and lifts it through the
canonical regular-orbit and effective-modulus sums.  The resulting
`DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget` is proved exactly
equivalent to the inherited regular-orbit budget.

No regular-orbit analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive endpoint shifts of even parity. -/
def positiveEndpointEvenShiftSet (b : ℕ) : Finset ℕ :=
  (positiveEndpointShiftSet b).filter (fun h => h % 2 = 0)

/-- Positive endpoint shifts of odd parity. -/
def positiveEndpointOddShiftSet (b : ℕ) : Finset ℕ :=
  (positiveEndpointShiftSet b).filter (fun h => h % 2 = 1)

/-- Normalized even-shift projector aggregate for one endpoint parity and one
canonical regular frequency.  The factor two from `1 + (-1)^h` is not
included here. -/
def twoKernelEvenShiftProjectorAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointEvenShiftSet b,
    affineChowlaShiftPhase d h k *
      halfIndexAffineChowlaCore b d r h
        (doubledSquareModulusFrequency d k)

/-- Normalized odd-shift projector aggregate for one endpoint parity and one
canonical regular frequency.  The factor two from `1 - (-1)^h` is not
included here. -/
def twoKernelOddShiftProjectorAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointOddShiftSet b,
    affineChowlaShiftPhase d h k *
      halfIndexAffineChowlaCore b d r h
        (doubledSquareModulusFrequency d k)

/-- The pair-sum projector is exactly twice the even-shift projected
aggregate.  No norm or absolute value is introduced before the projection. -/
theorem twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairPlusAggregate b d r k =
      (2 : ℂ) * twoKernelEvenShiftProjectorAggregate b d r k := by
  classical
  rw [twoKernelPairPlusAggregate_eq_projector b d r hNonunit k]
  unfold twoKernelEvenShiftProjectorAggregate
    positiveEndpointEvenShiftSet
  rw [Finset.sum_filter, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [twoKernelShiftCharacter_eq_neg_one_pow d h hNonunit]
  by_cases heven : h % 2 = 0
  · have hform : h = 2 * (h / 2) := by
      omega
    have hsign : (-1 : ℂ) ^ h = 1 := by
      rw [hform, pow_mul]
      norm_num
    simp [heven, hsign]
    ring
  · have hodd : h % 2 = 1 := by
      omega
    have hform : h = 2 * (h / 2) + 1 := by
      omega
    have hsign : (-1 : ℂ) ^ h = -1 := by
      rw [hform, pow_add, pow_mul]
      norm_num
    simp [hodd, hsign]

/-- The pair-difference projector is exactly twice the odd-shift projected
aggregate.  No norm or absolute value is introduced before the projection. -/
theorem twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairMinusAggregate b d r k =
      (2 : ℂ) * twoKernelOddShiftProjectorAggregate b d r k := by
  classical
  rw [twoKernelPairMinusAggregate_eq_projector b d r hNonunit k]
  unfold twoKernelOddShiftProjectorAggregate
    positiveEndpointOddShiftSet
  rw [Finset.sum_filter, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [twoKernelShiftCharacter_eq_neg_one_pow d h hNonunit]
  by_cases hodd : h % 2 = 1
  · have hform : h = 2 * (h / 2) + 1 := by
      omega
    have hsign : (-1 : ℂ) ^ h = -1 := by
      rw [hform, pow_add, pow_mul]
      norm_num
    simp [hodd, hsign]
    ring
  · have heven : h % 2 = 0 := by
      omega
    have hform : h = 2 * (h / 2) := by
      omega
    have hsign : (-1 : ℂ) ^ h = 1 := by
      rw [hform, pow_mul]
      norm_num
    simp [heven, hsign]

/-- Canonical normalized majorant for one complete regular orbit.

The four terms are the two shift-parity projectors for each of the two
endpoint parity classes. -/
def twoNonunitCanonicalRegularOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖twoKernelEvenShiftProjectorAggregate b d 0 k‖ +
    ‖twoKernelOddShiftProjectorAggregate b d 0 k‖ +
    ‖twoKernelEvenShiftProjectorAggregate b d 1 k‖ +
    ‖twoKernelOddShiftProjectorAggregate b d 1 k‖

/-- After the parity selector is made explicit, the inherited factor one-half
cancels exactly against the factor two in each pair projector. -/
theorem twoNonunitRegularOrbitMajorant_eq_canonicalParityProjectors
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoNonunitRegularOrbitMajorant b d k =
      twoNonunitCanonicalRegularOrbitMajorant b d k := by
  unfold twoNonunitRegularOrbitMajorant
    twoNonunitCanonicalRegularOrbitMajorant
  rw [twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
        b d 0 hNonunit k,
      twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
        b d 0 hNonunit k,
      twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
        b d 1 hNonunit k,
      twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
        b d 1 hNonunit k]
  norm_num [norm_mul]
  ring

/-- Endpoint majorant written directly in the canonical parity-projector
coordinates.  The exceptional orbit remains excluded because the same
canonical representative set from PR #672 is reused unchanged. -/
def twoNonunitCanonicalRegularOrbitEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitCanonicalRegularOrbitMajorant b d k
      else 0
    else 0

/-- Exact endpoint equality between the inherited regular-orbit surface and
the canonical parity-projector surface. -/
theorem twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors
    (b : ℕ) :
    twoNonunitRegularOrbitEndpointMajorant b =
      twoNonunitCanonicalRegularOrbitEndpointMajorant b := by
  classical
  unfold twoNonunitRegularOrbitEndpointMajorant
    twoNonunitCanonicalRegularOrbitEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hTwo : TwoUnitSquareModulusParameter d
  · simp [hTwo, TwoNonunitSquareModulusParameter]
  · have hNonunit : TwoNonunitSquareModulusParameter d := hTwo
    simp only [hNonunit, dif_pos]
    refine congrArg
      (fun x : ℝ => (((d * d : ℕ) : ℝ))⁻¹ * x) ?_
    apply Finset.sum_congr rfl
    intro k _hk
    exact
      twoNonunitRegularOrbitMajorant_eq_canonicalParityProjectors
        b d hNonunit k

/-- Natural-scale analytic premise expressed in the canonical parity-projector
coordinates.  No value of this proposition is constructed here. -/
def DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitCanonicalRegularOrbitEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The canonical parity-projector budget is exactly equivalent to the
previous regular-orbit budget; this is an equality transport, not a new
analytic estimate. -/
theorem canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget :
    DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget ↔
      DyadicNaturalScaleTwoNonunitRegularOrbitBudget := by
  constructor
  · intro hCanonical δ hδ
    obtain ⟨C, hC, hscale⟩ := hCanonical δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors b]
    exact hscale j b hb
  · intro hRegular δ hδ
    obtain ⟨C, hC, hscale⟩ := hRegular δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors b]
    exact hscale j b hb

/-- Proof-relevant adapter from the canonical parity-projector premise into
the existing regular-orbit budget interface. -/
def canonicalRegularOrbitProjectorToRegularBudgetAdapter :
    ToTwoNonunitRegularOrbitBudgetAdapter
      DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget where
  toRegularBudget :=
    canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget.mp

/-- Downstream composition after both one-point Mertens branches have been
reduced to their standard square-root-plus-epsilon premises. -/
theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hCanonical :
      DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regular
    hOrdinary hChiFour hUnit
    (canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget.mp
      hCanonical)

/-- Proof-producing bridge from any future theorem to the exact canonical
regular-orbit projector budget. -/
structure ToCanonicalRegularOrbitProjectorBudgetAdapter
    (source : Prop) : Type where
  toCanonicalRegularBudget :
    source → DyadicNaturalScaleCanonicalRegularOrbitProjectorBudget

/-- Conservative source profile for a future analytic theorem controlling the
canonical parity-projector family. -/
structure CanonicalRegularOrbitProjectorSourceData where
  theoremStatement : Prop
  canonicalRepresentativesMatched : Prop
  exceptionalOrbitExcludedAndHandledSeparately : Prop
  pairProjectorsFormedBeforeNorms : Prop
  kernelCharacterIdentifiedAsParity : Prop
  evenShiftProjectorMatched : Prop
  oddShiftProjectorMatched : Prop
  bothEndpointParityClassesMatched : Prop
  effectiveSquareModulusAggregationMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Source proposition for a future canonical regular-orbit projector
estimate. -/
def CanonicalRegularOrbitProjectorSource
    (d : CanonicalRegularOrbitProjectorSourceData) : Prop :=
  d.theoremStatement ∧
    d.canonicalRepresentativesMatched ∧
    d.exceptionalOrbitExcludedAndHandledSeparately ∧
    d.pairProjectorsFormedBeforeNorms ∧
    d.kernelCharacterIdentifiedAsParity ∧
    d.evenShiftProjectorMatched ∧
    d.oddShiftProjectorMatched ∧
    d.bothEndpointParityClassesMatched ∧
    d.effectiveSquareModulusAggregationMatched ∧
    d.naturalScaleNormalizationMatched

abbrev CanonicalRegularOrbitProjectorAnalyticAdapter
    (d : CanonicalRegularOrbitProjectorSourceData) :=
  ToCanonicalRegularOrbitProjectorBudgetAdapter
    (CanonicalRegularOrbitProjectorSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairMinusAggregate_eq_two_mul_oddShiftProjector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitRegularOrbitEndpointMajorant_eq_canonicalParityProjectors
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalRegularOrbitProjectorBudget_iff_regularOrbitBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_canonicalRegular
```
