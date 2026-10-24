# Complete source: GRWTSK.NumberTheory.Moebius.ModFourCharacterMertensEnergyEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f4fd6387300544531090b83a6d529798e538efc` · SHA-256 `5eeb605f917dfe4b73f82cba4f0790347396666c90bbc67434409cfecfcc96a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #724. Direct stacked parent: draft PR #701 at
`a8d7518867a20dc369847e978b203784d67bfa7d`.
-/
import GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition

/-!
# Mod-four residue energy and character-coordinate energy

The parent source gives the exact finite transform

`OddMertens = M_1 + M_3`,
`ChiFourMertens = M_1 - M_3`,

and the integral inverse relations

`2*M_1 = OddMertens + ChiFourMertens`,
`2*M_3 = OddMertens - ChiFourMertens`.

This module proves that square-root energy for the two unit residue prefixes is
logically equivalent, with explicit constant losses, to square-root energy in
the principal odd and nonprincipal `chi_4` character coordinates.

No Mertens estimate, Dirichlet-L theorem, GRH theorem, or RH theorem is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Square-root energy for the principal mod-four character coordinate, namely
the odd Mertens prefix. -/
def DyadicOddMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityMertensPrefix b 1 ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The existing two-parity energy supplies its odd component. -/
theorem oddMertensEnergy_of_parity
    (hParity : DyadicParityMertensSquareRootEnergy) :
    DyadicOddMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hParity δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact hscale j b 1 hb (by norm_num)

/-- The pointwise ordinary-Mertens envelope already transported in PR #618
therefore supplies the principal odd character coordinate. -/
theorem oddMertensEnergy_of_pointwise
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicOddMertensSquareRootEnergy :=
  oddMertensEnergy_of_parity
    (parityMertensSquareRootEnergy_of_pointwise hPoint)

/-- Common control of the two unit residue classes controls their sum, the odd
Mertens prefix.  The explicit constant loss is four. -/
theorem oddMertensEnergy_of_modFourUnitResidues
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy) :
    DyadicOddMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hResidues δ hδ
  refine ⟨4 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j b hb
  have h1 := hscale j b 1 hb (Or.inl rfl)
  have h3 := hscale j b 3 hb (Or.inr rfl)
  rw [parityMertensPrefix_odd_eq_modFour_one_add_three]
  calc
    (modFourMertensPrefix b 1 + modFourMertensPrefix b 3) ^ 2 ≤
        2 * modFourMertensPrefix b 1 ^ 2 +
          2 * modFourMertensPrefix b 3 ^ 2 := by
      nlinarith [sq_nonneg
        (modFourMertensPrefix b 1 - modFourMertensPrefix b 3)]
    _ ≤ 4 *
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      nlinarith
    _ = (4 * C) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- The two character-coordinate energy statements. -/
def DyadicModFourCharacterMertensSquareRootEnergy : Prop :=
  DyadicOddMertensSquareRootEnergy ∧
    DyadicChiFourTwistedMertensSquareRootEnergy

/-- Residue-class energy supplies both the principal odd and nonprincipal
`chi_4` character coordinates. -/
theorem modFourCharacterEnergy_of_unitResidues
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy) :
    DyadicModFourCharacterMertensSquareRootEnergy :=
  ⟨oddMertensEnergy_of_modFourUnitResidues hResidues,
    chiFourEnergy_of_modFourUnitResidues hResidues⟩

/-- Principal odd energy together with discrepancy energy controls each unit
residue prefix.  The integral inverse transform is used before squaring.

The transported dyadic constant is `C_odd + C_disc`. -/
theorem modFourUnitResidueEnergy_of_odd_and_discrepancy
    (hOdd : DyadicOddMertensSquareRootEnergy)
    (hDisc : DyadicModFourMertensDiscrepancySquareRootEnergy) :
    DyadicModFourUnitResidueMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C₀, hC₀, hOddScale⟩ := hOdd δ hδ
  obtain ⟨C₁, hC₁, hDiscScale⟩ := hDisc δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b a hb ha
  have hO := hOddScale j b hb
  have hD := hDiscScale j b hb
  let T : ℝ :=
    (((2 ^ j : ℕ) : ℝ)) * (((2 ^ j : ℕ) : ℝ) ^ δ)
  have hT : 0 ≤ T := by
    dsimp [T]
    positivity
  rcases ha with rfl | rfl
  · have hEqSq := congrArg (fun x : ℝ => x ^ 2)
      (two_mul_modFourMertensPrefix_one b)
    have hSum :
        (parityMertensPrefix b 1 +
          modFourUnitMertensDiscrepancy b) ^ 2 ≤
        2 * parityMertensPrefix b 1 ^ 2 +
          2 * modFourUnitMertensDiscrepancy b ^ 2 := by
      nlinarith [sq_nonneg
        (parityMertensPrefix b 1 -
          modFourUnitMertensDiscrepancy b)]
    dsimp [T] at hT
    nlinarith
  · have hEqSq := congrArg (fun x : ℝ => x ^ 2)
      (two_mul_modFourMertensPrefix_three b)
    have hDiff :
        (parityMertensPrefix b 1 -
          modFourUnitMertensDiscrepancy b) ^ 2 ≤
        2 * parityMertensPrefix b 1 ^ 2 +
          2 * modFourUnitMertensDiscrepancy b ^ 2 := by
      nlinarith [sq_nonneg
        (parityMertensPrefix b 1 +
          modFourUnitMertensDiscrepancy b)]
    dsimp [T] at hT
    nlinarith

/-- The character-coordinate proposition supplies the common unit-residue
energy. -/
theorem modFourUnitResidueEnergy_of_characterEnergy
    (hCharacter : DyadicModFourCharacterMertensSquareRootEnergy) :
    DyadicModFourUnitResidueMertensSquareRootEnergy :=
  modFourUnitResidueEnergy_of_odd_and_discrepancy
    hCharacter.1
    (dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy.mp
      hCharacter.2)

/-- Load-bearing equivalence: the two mod-four unit residue energies and the
principal/nonprincipal character energies carry the same square-root-scale
information, up to explicit constant changes. -/
theorem dyadicModFourUnitResidueEnergy_iff_characterEnergy :
    DyadicModFourUnitResidueMertensSquareRootEnergy ↔
      DyadicModFourCharacterMertensSquareRootEnergy := by
  constructor
  · exact modFourCharacterEnergy_of_unitResidues
  · exact modFourUnitResidueEnergy_of_characterEnergy

/-- Existing pointwise ordinary-Mertens control plus the independent `chi_4`
energy premise constructs the common mod-four unit-residue energy. -/
theorem modFourUnitResidueEnergy_of_pointwise_and_chiFour
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy) :
    DyadicModFourUnitResidueMertensSquareRootEnergy :=
  modFourUnitResidueEnergy_of_characterEnergy
    ⟨oddMertensEnergy_of_pointwise hPoint, hChi⟩

/-- Conditional downstream composition with the unchanged two-unit and regular
orbit suppliers. -/
theorem naturalScaleCongruenceL1_of_characterEnergies_twoUnit_regular
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular
    hPoint
    (modFourUnitResidueEnergy_of_pointwise_and_chiFour hPoint hChi)
    hUnit hRegular

/-- Proof-producing adapter into the two mod-four character-coordinate energy
statements. -/
structure ToModFourCharacterMertensSquareRootEnergyAdapter
    (source : Prop) : Type where
  toCharacterEnergy :
    source → DyadicModFourCharacterMertensSquareRootEnergy

/-- Conservative profile for future principal and nonprincipal Dirichlet-
Mertens theorems at modulus four. -/
structure ModFourCharacterMertensSourceData where
  principalOddTheorem : Prop
  chiFourTheorem : Prop
  exactPrincipalCoordinateMatched : Prop
  exactChiFourCharacterMatched : Prop
  positiveEndpointConventionMatched : Prop
  squareRootPlusEpsilonScaleMatched : Prop
  oneConstantOnDyadicFamilies : Prop
  finiteInitialRangeCovered : Prop

/-- Source proposition for a future character-pair Mertens adapter. -/
def ModFourCharacterMertensSource
    (d : ModFourCharacterMertensSourceData) : Prop :=
  d.principalOddTheorem ∧
    d.chiFourTheorem ∧
    d.exactPrincipalCoordinateMatched ∧
    d.exactChiFourCharacterMatched ∧
    d.positiveEndpointConventionMatched ∧
    d.squareRootPlusEpsilonScaleMatched ∧
    d.oneConstantOnDyadicFamilies ∧
    d.finiteInitialRangeCovered

abbrev ModFourCharacterMertensAdapter
    (d : ModFourCharacterMertensSourceData) :=
  ToModFourCharacterMertensSquareRootEnergyAdapter
    (ModFourCharacterMertensSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicModFourUnitResidueEnergy_iff_characterEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.modFourUnitResidueEnergy_of_pointwise_and_chiFour
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_characterEnergies_twoUnit_regular
```
