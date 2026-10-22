/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #706. Direct stacked parent: draft PR #701 at
`a8d7518867a20dc369847e978b203784d67bfa7d`.
-/
import GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition

/-!
# Regular doubling-kernel projectors as even/odd shift selectors

The two-nonunit kernel-pair source forms the exact projectors

`P_r(k)=A_r(k)+A_r(k+H)` and `M_r(k)=A_r(k)-A_r(k+H)`.

Their shift weights are `1+eta_d(h)` and `1-eta_d(h)`.  The exceptional
character identification from PR #697 proves

`eta_d(h)=(-1)^h`.

Consequently the pair-sum projector is exactly twice the complete even-shift
sum, and the pair-difference projector is exactly twice the complete odd-shift
sum.  This module proves those identities before any norm is applied and
splits the canonical regular-orbit endpoint budget into separate even- and
odd-shift suppliers.

No binary-correlation estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive endpoint shifts of even parity. -/
def evenPositiveEndpointShiftSet
    (b : ℕ) : Finset ℕ :=
  (positiveEndpointShiftSet b).filter (fun h : ℕ => Even h)

/-- Positive endpoint shifts of odd parity. -/
def oddPositiveEndpointShiftSet
    (b : ℕ) : Finset ℕ :=
  (positiveEndpointShiftSet b).filter (fun h : ℕ => Odd h)

/-- The even and odd positive-shift sets cover the exact inherited shift set. -/
theorem evenPositiveEndpointShiftSet_union_odd
    (b : ℕ) :
    evenPositiveEndpointShiftSet b ∪
        oddPositiveEndpointShiftSet b =
      positiveEndpointShiftSet b := by
  ext h
  constructor
  · intro hh
    rcases Finset.mem_union.mp hh with he | ho
    · exact (Finset.mem_filter.mp he).1
    · exact (Finset.mem_filter.mp ho).1
  · intro hh
    rcases Nat.even_or_odd h with he | ho
    · exact Finset.mem_union.mpr <|
        Or.inl (Finset.mem_filter.mpr ⟨hh, he⟩)
    · exact Finset.mem_union.mpr <|
        Or.inr (Finset.mem_filter.mpr ⟨hh, ho⟩)

/-- The two shift-parity sets are disjoint. -/
theorem evenPositiveEndpointShiftSet_disjoint_odd
    (b : ℕ) :
    Disjoint
      (evenPositiveEndpointShiftSet b)
      (oddPositiveEndpointShiftSet b) := by
  refine Finset.disjoint_left.mpr ?_
  intro h he ho
  have hEven := (Finset.mem_filter.mp he).2
  have hOdd := (Finset.mem_filter.mp ho).2
  exact (Nat.not_even_iff_odd.mpr hOdd) hEven

/-- The pair-sum scalar is the exact even-shift selector. -/
theorem one_add_twoKernelShiftCharacter_eq_evenSelector
    (d h : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    1 + twoKernelShiftCharacter d h =
      if Even h then (2 : ℂ) else 0 := by
  rw [twoKernelShiftCharacter_eq_neg_one_pow d h hNonunit]
  rcases Nat.even_or_odd h with hEven | hOdd
  · rw [hEven.neg_one_pow]
    simp [hEven]
  · have hNotEven : ¬ Even h :=
      Nat.not_even_iff_odd.mpr hOdd
    rw [hOdd.neg_one_pow]
    simp [hNotEven]

/-- The pair-difference scalar is the exact odd-shift selector. -/
theorem one_sub_twoKernelShiftCharacter_eq_oddSelector
    (d h : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    1 - twoKernelShiftCharacter d h =
      if Odd h then (2 : ℂ) else 0 := by
  rw [twoKernelShiftCharacter_eq_neg_one_pow d h hNonunit]
  rcases Nat.even_or_odd h with hEven | hOdd
  · have hNotOdd : ¬ Odd h :=
      Nat.not_odd_iff_even.mpr hEven
    rw [hEven.neg_one_pow]
    simp [hNotOdd]
  · rw [hOdd.neg_one_pow]
    simp [hOdd]

/-- Complete even-shift half-index aggregate for one Möbius parity and one
canonical regular frequency. -/
def twoKernelEvenShiftAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ evenPositiveEndpointShiftSet b,
    affineChowlaShiftPhase d h k *
      halfIndexAffineChowlaCore b d r h
        (doubledSquareModulusFrequency d k)

/-- Complete odd-shift half-index aggregate for one Möbius parity and one
canonical regular frequency. -/
def twoKernelOddShiftAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ h ∈ oddPositiveEndpointShiftSet b,
    affineChowlaShiftPhase d h k *
      halfIndexAffineChowlaCore b d r h
        (doubledSquareModulusFrequency d k)

/-- Exact regular-orbit pair-sum identity: the plus projector is twice the
complete even-shift sum. -/
theorem twoKernelPairPlusAggregate_eq_two_mul_evenShift
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairPlusAggregate b d r k =
      2 * twoKernelEvenShiftAggregate b d r k := by
  rw [twoKernelPairPlusAggregate_eq_projector
    b d r hNonunit k]
  unfold twoKernelEvenShiftAggregate
  calc
    (∑ h ∈ positiveEndpointShiftSet b,
      affineChowlaShiftPhase d h k *
        (1 + twoKernelShiftCharacter d h) *
        halfIndexAffineChowlaCore b d r h
          (doubledSquareModulusFrequency d k)) =
      ∑ h ∈ positiveEndpointShiftSet b,
        if Even h then
          2 *
            (affineChowlaShiftPhase d h k *
              halfIndexAffineChowlaCore b d r h
                (doubledSquareModulusFrequency d k))
        else 0 := by
          apply Finset.sum_congr rfl
          intro h _hh
          rw [one_add_twoKernelShiftCharacter_eq_evenSelector
            d h hNonunit]
          by_cases hEven : Even h <;> simp [hEven] <;> ring
    _ = 2 * ∑ h ∈ evenPositiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
          unfold evenPositiveEndpointShiftSet
          rw [Finset.mul_sum, Finset.sum_filter]

/-- Exact regular-orbit pair-difference identity: the minus projector is twice
the complete odd-shift sum. -/
theorem twoKernelPairMinusAggregate_eq_two_mul_oddShift
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairMinusAggregate b d r k =
      2 * twoKernelOddShiftAggregate b d r k := by
  rw [twoKernelPairMinusAggregate_eq_projector
    b d r hNonunit k]
  unfold twoKernelOddShiftAggregate
  calc
    (∑ h ∈ positiveEndpointShiftSet b,
      affineChowlaShiftPhase d h k *
        (1 - twoKernelShiftCharacter d h) *
        halfIndexAffineChowlaCore b d r h
          (doubledSquareModulusFrequency d k)) =
      ∑ h ∈ positiveEndpointShiftSet b,
        if Odd h then
          2 *
            (affineChowlaShiftPhase d h k *
              halfIndexAffineChowlaCore b d r h
                (doubledSquareModulusFrequency d k))
        else 0 := by
          apply Finset.sum_congr rfl
          intro h _hh
          rw [one_sub_twoKernelShiftCharacter_eq_oddSelector
            d h hNonunit]
          by_cases hOdd : Odd h <;> simp [hOdd] <;> ring
    _ = 2 * ∑ h ∈ oddPositiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
          unfold oddPositiveEndpointShiftSet
          rw [Finset.mul_sum, Finset.sum_filter]

/-- Even-shift contribution from one complete canonical regular orbit. -/
def twoNonunitEvenShiftOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖twoKernelEvenShiftAggregate b d 0 k‖ +
    ‖twoKernelEvenShiftAggregate b d 1 k‖

/-- Odd-shift contribution from one complete canonical regular orbit. -/
def twoNonunitOddShiftOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  ‖twoKernelOddShiftAggregate b d 0 k‖ +
    ‖twoKernelOddShiftAggregate b d 1 k‖

/-- Exact normalization of the existing regular-orbit projector majorant as
the sum of the even- and odd-shift contributions. -/
theorem twoNonunitRegularOrbitMajorant_eq_even_add_odd
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoNonunitRegularOrbitMajorant b d k =
      twoNonunitEvenShiftOrbitMajorant b d k +
        twoNonunitOddShiftOrbitMajorant b d k := by
  unfold twoNonunitRegularOrbitMajorant
    twoNonunitEvenShiftOrbitMajorant
    twoNonunitOddShiftOrbitMajorant
  rw [twoKernelPairPlusAggregate_eq_two_mul_evenShift
      b d 0 hNonunit k,
    twoKernelPairMinusAggregate_eq_two_mul_oddShift
      b d 0 hNonunit k,
    twoKernelPairPlusAggregate_eq_two_mul_evenShift
      b d 1 hNonunit k,
    twoKernelPairMinusAggregate_eq_two_mul_oddShift
      b d 1 hNonunit k]
  simp only [norm_mul, norm_ofNat]
  norm_num
  ring

/-- Endpoint contribution from even shifts in the canonical regular orbits. -/
def twoNonunitEvenShiftEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitEvenShiftOrbitMajorant b d k
      else 0
    else 0

/-- Endpoint contribution from odd shifts in the canonical regular orbits. -/
def twoNonunitOddShiftEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitOddShiftOrbitMajorant b d k
      else 0
    else 0

/-- Exact endpoint decomposition of the canonical regular-orbit budget by
shift parity. -/
theorem twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd
    (b : ℕ) :
    twoNonunitRegularOrbitEndpointMajorant b =
      twoNonunitEvenShiftEndpointMajorant b +
        twoNonunitOddShiftEndpointMajorant b := by
  unfold twoNonunitRegularOrbitEndpointMajorant
    twoNonunitEvenShiftEndpointMajorant
    twoNonunitOddShiftEndpointMajorant
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    rw [← mul_add, ← Finset.sum_add_distrib]
    apply congrArg
    apply Finset.sum_congr rfl
    intro k _hk
    exact twoNonunitRegularOrbitMajorant_eq_even_add_odd
      b d hNonunit k
  · simp [hNonunit]

/-- Natural-scale supplier for the even-shift regular-orbit family. -/
def DyadicNaturalScaleTwoNonunitEvenShiftBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitEvenShiftEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Natural-scale supplier for the odd-shift regular-orbit family. -/
def DyadicNaturalScaleTwoNonunitOddShiftBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitOddShiftEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Even- and odd-shift suppliers together recover the canonical regular-orbit
budget. -/
theorem regularOrbitBudget_of_even_and_odd_shift
    (hEven : DyadicNaturalScaleTwoNonunitEvenShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddShiftBudget) :
    DyadicNaturalScaleTwoNonunitRegularOrbitBudget := by
  intro δ hδ
  obtain ⟨C₀, hC₀, h₀⟩ := hEven δ hδ
  obtain ⟨C₁, hC₁, h₁⟩ := hOdd δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b hb
  rw [twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd]
  exact
    (add_le_add (h₀ j b hb) (h₁ j b hb)).trans_eq (by ring)

/-- Conditional composition with the existing zero-mode, mod-four exceptional,
and two-unit premises. -/
theorem naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_shiftParity
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hEven : DyadicNaturalScaleTwoNonunitEvenShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddShiftBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular
    hPoint hResidues hUnit
    (regularOrbitBudget_of_even_and_odd_shift hEven hOdd)

/-- Proof-producing adapter into the even-shift regular-orbit budget. -/
structure ToTwoNonunitEvenShiftBudgetAdapter
    (source : Prop) : Type where
  toEvenShiftBudget :
    source → DyadicNaturalScaleTwoNonunitEvenShiftBudget

/-- Proof-producing adapter into the odd-shift regular-orbit budget. -/
structure ToTwoNonunitOddShiftBudgetAdapter
    (source : Prop) : Type where
  toOddShiftBudget :
    source → DyadicNaturalScaleTwoNonunitOddShiftBudget

/-- Conservative source profile for an even-shift binary-correlation theorem. -/
structure TwoNonunitEvenShiftAnalyticData where
  theoremStatement : Prop
  canonicalRegularRepresentativesMatched : Prop
  exceptionalOrbitHandledSeparately : Prop
  evenShiftFamilyMatched : Prop
  cancellationInsideCompleteEvenShiftSumRetained : Prop
  bothMobiusParityClassesMatched : Prop
  doubledCoreFrequencyMatched : Prop
  squareModulusFrequencyEndpointAggregationMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Source proposition for a future even-shift analytic adapter. -/
def TwoNonunitEvenShiftAnalyticSource
    (d : TwoNonunitEvenShiftAnalyticData) : Prop :=
  d.theoremStatement ∧
    d.canonicalRegularRepresentativesMatched ∧
    d.exceptionalOrbitHandledSeparately ∧
    d.evenShiftFamilyMatched ∧
    d.cancellationInsideCompleteEvenShiftSumRetained ∧
    d.bothMobiusParityClassesMatched ∧
    d.doubledCoreFrequencyMatched ∧
    d.squareModulusFrequencyEndpointAggregationMatched ∧
    d.naturalScaleNormalizationMatched

abbrev TwoNonunitEvenShiftAnalyticAdapter
    (d : TwoNonunitEvenShiftAnalyticData) :=
  ToTwoNonunitEvenShiftBudgetAdapter
    (TwoNonunitEvenShiftAnalyticSource d)

/-- Conservative source profile for an odd-shift binary-correlation theorem. -/
structure TwoNonunitOddShiftAnalyticData where
  theoremStatement : Prop
  canonicalRegularRepresentativesMatched : Prop
  exceptionalOrbitHandledSeparately : Prop
  oddShiftFamilyMatched : Prop
  cancellationInsideCompleteOddShiftSumRetained : Prop
  bothMobiusParityClassesMatched : Prop
  doubledCoreFrequencyMatched : Prop
  squareModulusFrequencyEndpointAggregationMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Source proposition for a future odd-shift analytic adapter. -/
def TwoNonunitOddShiftAnalyticSource
    (d : TwoNonunitOddShiftAnalyticData) : Prop :=
  d.theoremStatement ∧
    d.canonicalRegularRepresentativesMatched ∧
    d.exceptionalOrbitHandledSeparately ∧
    d.oddShiftFamilyMatched ∧
    d.cancellationInsideCompleteOddShiftSumRetained ∧
    d.bothMobiusParityClassesMatched ∧
    d.doubledCoreFrequencyMatched ∧
    d.squareModulusFrequencyEndpointAggregationMatched ∧
    d.naturalScaleNormalizationMatched

abbrev TwoNonunitOddShiftAnalyticAdapter
    (d : TwoNonunitOddShiftAnalyticData) :=
  ToTwoNonunitOddShiftBudgetAdapter
    (TwoNonunitOddShiftAnalyticSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairPlusAggregate_eq_two_mul_evenShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairMinusAggregate_eq_two_mul_oddShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitRegularOrbitEndpointMajorant_eq_even_add_odd
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularOrbitBudget_of_even_and_odd_shift
