/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #768. Direct stacked parent: draft PR #766 at exact head
`0fa380d95ea1d8325232468ada707c68acb16db2`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZModDFTParseval

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

def parityEvenHalfShiftSignedResidueEnergy
    (b d r : ℕ) [NeZero d] : ℝ :=
  ∑ s : ZMod (d * d),
    ‖parityEvenHalfShiftSignedResidueBucket b d r s‖ ^ 2

def parityOddHalfShiftSignedResidueEnergy
    (b d r : ℕ) [NeZero d] : ℝ :=
  ∑ s : ZMod (d * d),
    ‖parityOddHalfShiftSignedResidueBucket b d r s‖ ^ 2

theorem evenHalfShiftFullFrequencyEnergy_eq_residue
    (b d r : ℕ) [NeZero d] :
    (∑ k : ZMod (d * d),
      ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityEvenHalfShiftSignedResidueEnergy b d r := by
  change
    (∑ k : ZMod (d * d),
      ‖stdAddCharResidueFourier d
        (parityEvenHalfShiftSignedResidueBucket b d r) k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityEvenHalfShiftSignedResidueEnergy b d r
  exact
    stdAddCharSquareModulusParseval d inferInstance
      (parityEvenHalfShiftSignedResidueBucket b d r)

theorem oddHalfShiftFullFrequencyEnergy_eq_residue
    (b d r : ℕ) [NeZero d] :
    (∑ k : ZMod (d * d),
      ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityOddHalfShiftSignedResidueEnergy b d r := by
  change
    (∑ k : ZMod (d * d),
      ‖stdAddCharResidueFourier d
        (parityOddHalfShiftSignedResidueBucket b d r) k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityOddHalfShiftSignedResidueEnergy b d r
  exact
    stdAddCharSquareModulusParseval d inferInstance
      (parityOddHalfShiftSignedResidueBucket b d r)

def twoNonunitRegularShiftParityResidueL2Majorant
    (b d : ℕ) [NeZero d] : ℝ :=
  Real.sqrt (parityEvenHalfShiftSignedResidueEnergy b d 0) +
    Real.sqrt (parityOddHalfShiftSignedResidueEnergy b d 0) +
    Real.sqrt (parityEvenHalfShiftSignedResidueEnergy b d 1) +
    Real.sqrt (parityOddHalfShiftSignedResidueEnergy b d 1)

theorem sqrt_squareModulus_mul_energy
    (d : ℕ) (E : ℝ) (_hE : 0 ≤ E) :
    Real.sqrt ((((d * d : ℕ) : ℝ)) * E) =
      (d : ℝ) * Real.sqrt E := by
  push_cast
  rw [show (d : ℝ) * (d : ℝ) * E = ((d : ℝ) ^ 2) * E by ring]
  rw [Real.sqrt_mul (sq_nonneg (d : ℝ))]
  rw [Real.sqrt_sq_eq_abs, abs_of_nonneg (by positivity)]

theorem fullFrequencyL2Majorant_eq_d_mul_residueL2
    (b d : ℕ) [NeZero d] :
    twoNonunitRegularShiftParityFullFrequencyL2Majorant b d =
      (d : ℝ) *
        twoNonunitRegularShiftParityResidueL2Majorant b d := by
  unfold twoNonunitRegularShiftParityFullFrequencyL2Majorant
    twoNonunitRegularShiftParityResidueL2Majorant
  rw [evenHalfShiftFullFrequencyEnergy_eq_residue b d 0,
      oddHalfShiftFullFrequencyEnergy_eq_residue b d 0,
      evenHalfShiftFullFrequencyEnergy_eq_residue b d 1,
      oddHalfShiftFullFrequencyEnergy_eq_residue b d 1]
  rw [sqrt_squareModulus_mul_energy d _ (by
        unfold parityEvenHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityOddHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityEvenHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityOddHalfShiftSignedResidueEnergy
        positivity)]
  ring

def twoNonunitRegularShiftParityResidueL2EndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        twoNonunitRegularShiftParityResidueL2Majorant b d
      else 0
    else 0

theorem fullFrequencyL2EndpointMajorant_eq_residueL2
    (b : ℕ) :
    twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant b =
      twoNonunitRegularShiftParityResidueL2EndpointMajorant b := by
  unfold twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant
    twoNonunitRegularShiftParityResidueL2EndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    rw [fullFrequencyL2Majorant_eq_d_mul_residueL2]
    have hdreal : (d : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hdpos)
    field_simp
  · simp [hNonunit]

def DyadicNaturalScaleRegularShiftParityResidueL2Budget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularShiftParityResidueL2EndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

theorem regularFullFrequencyL2Budget_iff_residueL2 :
    DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget ↔
      DyadicNaturalScaleRegularShiftParityResidueL2Budget := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hscale⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← fullFrequencyL2EndpointMajorant_eq_residueL2]
    exact hscale j b hb
  · intro h δ hδ
    obtain ⟨C, hC, hscale⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [fullFrequencyL2EndpointMajorant_eq_residueL2]
    exact hscale j b hb

structure ToRegularShiftParityResidueL2BudgetAdapter
    (source : Prop) : Type where
  toResidueL2 :
    source → DyadicNaturalScaleRegularShiftParityResidueL2Budget

theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidueL2
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hResidueL2 : DyadicNaturalScaleRegularShiftParityResidueL2Budget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFullFrequencyL2
    hOrdinary hChiFour hUnit
    (regularFullFrequencyL2Budget_iff_residueL2.mpr hResidueL2)

structure RegularSignedResidueEnergySourceData where
  theoremStatement : Prop
  signedEvenBucketMatched : Prop
  signedOddBucketMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveSquareModuliMatched : Prop
  positiveVarianceNotSubstituted : Prop
  naturalScaleNormalizationMatched : Prop

def RegularSignedResidueEnergySource
    (d : RegularSignedResidueEnergySourceData) : Prop :=
  d.theoremStatement ∧
    d.signedEvenBucketMatched ∧
    d.signedOddBucketMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveSquareModuliMatched ∧
    d.positiveVarianceNotSubstituted ∧
    d.naturalScaleNormalizationMatched

abbrev RegularSignedResidueEnergyAdapter
    (d : RegularSignedResidueEnergySourceData) :=
  ToRegularShiftParityResidueL2BudgetAdapter
    (RegularSignedResidueEnergySource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.evenHalfShiftFullFrequencyEnergy_eq_residue
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullFrequencyL2Majorant_eq_d_mul_residueL2
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullFrequencyL2EndpointMajorant_eq_residueL2
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularFullFrequencyL2Budget_iff_residueL2
