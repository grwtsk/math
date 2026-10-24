# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitHalfShiftReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef8cbe12fc85e532e9c650074cb5d49d96bcbc32` · SHA-256 `ef10a853f5aab46d1f542efbe46e1de2d2b4e8e1223bef498f25e3466c492265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #718. Direct stacked parent: draft PR #710 at
`52c627ee421c8be835c72ba1028d8d1f815cfbe1`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityProjectors

/-!
# Half-shift reindexing of the regular doubling-kernel projectors

PR #710 identifies the two regular kernel projectors as complete even- and
odd-shift sums.  This module reindexes those exact sums by

`h = 2*t` and `h = 2*t+1`.

The outer phase then has the exact forms

`e_(d^2)(k*(2*t)) = e_(d^2)((2*k)*t)`

and

`e_(d^2)(k*(2*t+1))
  = e_(d^2)(k) * e_(d^2)((2*k)*t)`.

Thus both reindexed sums expose the same doubled frequency already used by the
half-index binary Chowla core.  The odd branch carries one unit-norm constant
phase outside the complete shift sum.

No frequency map to `ZMod (d^2/2)` and no analytic estimate are constructed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive half-shifts indexing every positive even shift up to the endpoint. -/
def positiveEvenHalfShiftSet (b : ℕ) : Finset ℕ :=
  Finset.Icc 1 (b / 2)

/-- Nonnegative half-shifts indexing every positive odd shift up to the endpoint. -/
def nonnegativeOddHalfShiftSet (b : ℕ) : Finset ℕ :=
  Finset.range ((b + 1) / 2)

/-- Exact finite reindexing of the even positive shifts by `h=2*t`. -/
theorem sum_evenPositiveEndpointShiftSet_eq_halfShift
    {α : Type*} [AddCommMonoid α]
    (b : ℕ) (f : ℕ → α) :
    (∑ h ∈ evenPositiveEndpointShiftSet b, f h) =
      ∑ t ∈ positiveEvenHalfShiftSet b, f (2 * t) := by
  classical
  apply Finset.sum_bij'
    (fun h _hh => h / 2)
    (fun t _ht => 2 * t)
  · intro h hh
    rcases Finset.mem_filter.mp hh with ⟨hhRange, hEven⟩
    rcases hEven with ⟨q, hq⟩
    unfold positiveEvenHalfShiftSet
    apply Finset.mem_Icc.mpr
    have hhI := Finset.mem_Ico.mp hhRange
    omega
  · intro t ht
    have htI := Finset.mem_Icc.mp ht
    unfold evenPositiveEndpointShiftSet positiveEndpointShiftSet
    apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_Ico.mpr
      omega
    · exact ⟨t, by omega⟩
  · intro h hh
    have hEven := (Finset.mem_filter.mp hh).2
    rcases hEven with ⟨q, hq⟩
    omega
  · intro t _ht
    omega
  · intro h hh
    have hEven := (Finset.mem_filter.mp hh).2
    rcases hEven with ⟨q, hq⟩
    congr 1
    omega

/-- Exact finite reindexing of the odd positive shifts by `h=2*t+1`. -/
theorem sum_oddPositiveEndpointShiftSet_eq_halfShift
    {α : Type*} [AddCommMonoid α]
    (b : ℕ) (f : ℕ → α) :
    (∑ h ∈ oddPositiveEndpointShiftSet b, f h) =
      ∑ t ∈ nonnegativeOddHalfShiftSet b, f (2 * t + 1) := by
  classical
  apply Finset.sum_bij'
    (fun h _hh => (h - 1) / 2)
    (fun t _ht => 2 * t + 1)
  · intro h hh
    rcases Finset.mem_filter.mp hh with ⟨hhRange, hOdd⟩
    rcases hOdd with ⟨q, hq⟩
    unfold nonnegativeOddHalfShiftSet
    apply Finset.mem_range.mpr
    have hhI := Finset.mem_Ico.mp hhRange
    omega
  · intro t ht
    have htRange := Finset.mem_range.mp ht
    unfold oddPositiveEndpointShiftSet positiveEndpointShiftSet
    apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_Ico.mpr
      omega
    · exact ⟨t, by omega⟩
  · intro h hh
    have hOdd := (Finset.mem_filter.mp hh).2
    rcases hOdd with ⟨q, hq⟩
    omega
  · intro t _ht
    omega
  · intro h hh
    have hOdd := (Finset.mem_filter.mp hh).2
    rcases hOdd with ⟨q, hq⟩
    congr 1
    omega

/-- The phase on an even shift uses only the doubled frequency. -/
theorem affineChowlaShiftPhase_two_mul
    (d t : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    affineChowlaShiftPhase d (2 * t) k =
      ZMod.stdAddChar
        (doubledSquareModulusFrequency d k *
          (t : ZMod (d * d))) := by
  unfold affineChowlaShiftPhase doubledSquareModulusFrequency
  congr 1
  push_cast
  ring

/-- The phase on an odd shift is a constant phase times the same doubled-
frequency half-shift phase. -/
theorem affineChowlaShiftPhase_two_mul_add_one
    (d t : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    affineChowlaShiftPhase d (2 * t + 1) k =
      affineChowlaShiftPhase d 1 k *
        ZMod.stdAddChar
          (doubledSquareModulusFrequency d k *
            (t : ZMod (d * d))) := by
  unfold affineChowlaShiftPhase doubledSquareModulusFrequency
  have harg :
      k * ((2 * t + 1 : ℕ) : ZMod (d * d)) =
        k * (1 : ZMod (d * d)) +
          (k + k) * (t : ZMod (d * d)) := by
    push_cast
    ring
  rw [harg, AddChar.map_add_eq_mul]

/-- Reindexed complete even-shift aggregate. -/
def twoKernelEvenHalfShiftAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ t ∈ positiveEvenHalfShiftSet b,
    ZMod.stdAddChar
        (doubledSquareModulusFrequency d k *
          (t : ZMod (d * d))) *
      halfIndexAffineChowlaCore b d r (2 * t)
        (doubledSquareModulusFrequency d k)

/-- Reindexed complete odd-shift aggregate after extracting the constant phase
`e_(d^2)(k)`. -/
def twoKernelOddHalfShiftAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ t ∈ nonnegativeOddHalfShiftSet b,
    ZMod.stdAddChar
        (doubledSquareModulusFrequency d k *
          (t : ZMod (d * d))) *
      halfIndexAffineChowlaCore b d r (2 * t + 1)
        (doubledSquareModulusFrequency d k)

/-- Exact equality between the inherited even-shift aggregate and its
half-shift reindexing. -/
theorem twoKernelEvenShiftAggregate_eq_halfShift
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoKernelEvenShiftAggregate b d r k =
      twoKernelEvenHalfShiftAggregate b d r k := by
  unfold twoKernelEvenShiftAggregate
    twoKernelEvenHalfShiftAggregate
  rw [sum_evenPositiveEndpointShiftSet_eq_halfShift]
  apply Finset.sum_congr rfl
  intro t _ht
  rw [affineChowlaShiftPhase_two_mul]

/-- Exact equality between the inherited odd-shift aggregate and a constant
unit phase times its half-shift reindexing. -/
theorem twoKernelOddShiftAggregate_eq_phase_mul_halfShift
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoKernelOddShiftAggregate b d r k =
      affineChowlaShiftPhase d 1 k *
        twoKernelOddHalfShiftAggregate b d r k := by
  unfold twoKernelOddShiftAggregate
    twoKernelOddHalfShiftAggregate
  rw [sum_oddPositiveEndpointShiftSet_eq_halfShift,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro t _ht
  rw [affineChowlaShiftPhase_two_mul_add_one]
  ring

/-- The extracted odd-shift phase has norm one. -/
theorem norm_affineChowlaShiftPhase_one
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    ‖affineChowlaShiftPhase d 1 k‖ = 1 := by
  unfold affineChowlaShiftPhase
  exact ZMod.stdAddChar.norm_apply _

/-- Half-shift normalization of one canonical regular orbit's even component. -/
def twoNonunitEvenHalfShiftOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖twoKernelEvenHalfShiftAggregate b d 0 k‖ +
    ‖twoKernelEvenHalfShiftAggregate b d 1 k‖

/-- Half-shift normalization of one canonical regular orbit's odd component. -/
def twoNonunitOddHalfShiftOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖twoKernelOddHalfShiftAggregate b d 0 k‖ +
    ‖twoKernelOddHalfShiftAggregate b d 1 k‖

/-- Exact equality of the even-shift orbit surfaces. -/
theorem twoNonunitEvenShiftOrbitMajorant_eq_halfShift
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoNonunitEvenShiftOrbitMajorant b d k =
      twoNonunitEvenHalfShiftOrbitMajorant b d k := by
  unfold twoNonunitEvenShiftOrbitMajorant
    twoNonunitEvenHalfShiftOrbitMajorant
  rw [twoKernelEvenShiftAggregate_eq_halfShift,
    twoKernelEvenShiftAggregate_eq_halfShift]

/-- Exact equality of the odd-shift orbit surfaces; the extracted phase has
unit norm and disappears only after the complete odd-shift sum is formed. -/
theorem twoNonunitOddShiftOrbitMajorant_eq_halfShift
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoNonunitOddShiftOrbitMajorant b d k =
      twoNonunitOddHalfShiftOrbitMajorant b d k := by
  unfold twoNonunitOddShiftOrbitMajorant
    twoNonunitOddHalfShiftOrbitMajorant
  rw [twoKernelOddShiftAggregate_eq_phase_mul_halfShift,
    twoKernelOddShiftAggregate_eq_phase_mul_halfShift,
    norm_mul, norm_mul,
    norm_affineChowlaShiftPhase_one,
    one_mul, one_mul]

/-- Endpoint surface for the reindexed even half-shifts. -/
def twoNonunitEvenHalfShiftEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitEvenHalfShiftOrbitMajorant b d k
      else 0
    else 0

/-- Endpoint surface for the reindexed odd half-shifts. -/
def twoNonunitOddHalfShiftEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitOddHalfShiftOrbitMajorant b d k
      else 0
    else 0

/-- Exact endpoint equality for the even branch. -/
theorem twoNonunitEvenHalfShiftEndpointMajorant_eq_existing
    (b : ℕ) :
    twoNonunitEvenHalfShiftEndpointMajorant b =
      twoNonunitEvenShiftEndpointMajorant b := by
  unfold twoNonunitEvenHalfShiftEndpointMajorant
    twoNonunitEvenShiftEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    apply congrArg
    apply Finset.sum_congr rfl
    intro k _hk
    exact (twoNonunitEvenShiftOrbitMajorant_eq_halfShift b d k).symm
  · simp [hNonunit]

/-- Exact endpoint equality for the odd branch. -/
theorem twoNonunitOddHalfShiftEndpointMajorant_eq_existing
    (b : ℕ) :
    twoNonunitOddHalfShiftEndpointMajorant b =
      twoNonunitOddShiftEndpointMajorant b := by
  unfold twoNonunitOddHalfShiftEndpointMajorant
    twoNonunitOddShiftEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    apply congrArg
    apply Finset.sum_congr rfl
    intro k _hk
    exact (twoNonunitOddShiftOrbitMajorant_eq_halfShift b d k).symm
  · simp [hNonunit]

/-- Natural-scale supplier in the even half-shift normalization. -/
def DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitEvenHalfShiftEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Natural-scale supplier in the odd half-shift normalization. -/
def DyadicNaturalScaleTwoNonunitOddHalfShiftBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitOddHalfShiftEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence of the even-shift and even-half-shift budgets. -/
theorem dyadicEvenHalfShiftBudget_iff_evenShift :
    DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget ↔
      DyadicNaturalScaleTwoNonunitEvenShiftBudget := by
  constructor
  · intro hHalf δ hδ
    obtain ⟨C, hC, hscale⟩ := hHalf δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← twoNonunitEvenHalfShiftEndpointMajorant_eq_existing]
    exact hscale j b hb
  · intro hEven δ hδ
    obtain ⟨C, hC, hscale⟩ := hEven δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [twoNonunitEvenHalfShiftEndpointMajorant_eq_existing]
    exact hscale j b hb

/-- Exact equivalence of the odd-shift and odd-half-shift budgets. -/
theorem dyadicOddHalfShiftBudget_iff_oddShift :
    DyadicNaturalScaleTwoNonunitOddHalfShiftBudget ↔
      DyadicNaturalScaleTwoNonunitOddShiftBudget := by
  constructor
  · intro hHalf δ hδ
    obtain ⟨C, hC, hscale⟩ := hHalf δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← twoNonunitOddHalfShiftEndpointMajorant_eq_existing]
    exact hscale j b hb
  · intro hOdd δ hδ
    obtain ⟨C, hC, hscale⟩ := hOdd δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [twoNonunitOddHalfShiftEndpointMajorant_eq_existing]
    exact hscale j b hb

/-- The two half-shift suppliers recover the canonical regular-orbit budget. -/
theorem regularOrbitBudget_of_evenHalf_and_oddHalf
    (hEven : DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddHalfShiftBudget) :
    DyadicNaturalScaleTwoNonunitRegularOrbitBudget :=
  regularOrbitBudget_of_even_and_odd_shift
    (dyadicEvenHalfShiftBudget_iff_evenShift.mp hEven)
    (dyadicOddHalfShiftBudget_iff_oddShift.mp hOdd)

/-- Conditional downstream composition with the unchanged zero mode,
exceptional orbit, and two-unit branch. -/
theorem naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_halfShift
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hEven : DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddHalfShiftBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_shiftParity
    hPoint hResidues hUnit
    (dyadicEvenHalfShiftBudget_iff_evenShift.mp hEven)
    (dyadicOddHalfShiftBudget_iff_oddShift.mp hOdd)

/-- Proof-producing adapter into both reindexed regular-orbit budgets. -/
structure ToTwoNonunitHalfShiftBudgetsAdapter
    (source : Prop) : Type where
  toEvenHalfShift :
    source → DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget
  toOddHalfShift :
    source → DyadicNaturalScaleTwoNonunitOddHalfShiftBudget

/-- Conservative data required before frequencies at `2*k mod d^2` may be
descended to a half-modulus frequency family.  This is a boundary record only;
no descent theorem is constructed here. -/
structure HalfConductorDescentData where
  theoremStatement : Prop
  halfModulusPositive : Prop
  doubledFrequencyImageCharacterized : Prop
  canonicalOrbitRepresentativesMatchImageFibres : Prop
  evenHalfShiftPhaseDescends : Prop
  oddHalfShiftPhaseDescends : Prop
  halfIndexCoreTransported : Prop
  exceptionalFrequencyExcludedAndHandledSeparately : Prop
  endpointFrequencyNormalizationMatched : Prop

/-- Source proposition for a future half-conductor descent theorem. -/
def HalfConductorDescentSource
    (d : HalfConductorDescentData) : Prop :=
  d.theoremStatement ∧
    d.halfModulusPositive ∧
    d.doubledFrequencyImageCharacterized ∧
    d.canonicalOrbitRepresentativesMatchImageFibres ∧
    d.evenHalfShiftPhaseDescends ∧
    d.oddHalfShiftPhaseDescends ∧
    d.halfIndexCoreTransported ∧
    d.exceptionalFrequencyExcludedAndHandledSeparately ∧
    d.endpointFrequencyNormalizationMatched

abbrev HalfConductorDescentAdapter
    (d : HalfConductorDescentData) :=
  ToTwoNonunitHalfShiftBudgetsAdapter
    (HalfConductorDescentSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelEvenShiftAggregate_eq_halfShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelOddShiftAggregate_eq_phase_mul_halfShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularOrbitBudget_of_evenHalf_and_oddHalf
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_halfShift
```
