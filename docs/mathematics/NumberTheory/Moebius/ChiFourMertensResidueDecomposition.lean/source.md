# Complete source: GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a786e01e3018eff6dc3d8165971ac537a28fecac` · SHA-256 `3654eeb1677597fe6e2863f6221d867fef92542662885ce468fd471d2f4a636e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #698. Direct stacked parent: draft PR #697 at
`4e0226093aa9781c374d3577f5ee1a86e0c704e9`.
-/
import GRWTSK.NumberTheory.Moebius.ExceptionalKernelCharacterChiFour

/-!
# The chi-four Mertens prefix as a mod-four residue discrepancy

The exceptional-kernel branch has been reduced to the standard one-point sum

`sum_(1 <= n <= b) mu(n) * chi_4(n)`.

Mathlib's `ZMod.χ₄` is zero on even residues, one on residue one modulo four,
and minus one on residue three modulo four.  Therefore the exact remaining
arithmetic observable is the signed discrepancy

`M_1(b) - M_3(b)`,

where `M_a(b)` is the Möbius prefix restricted to `n = a mod 4`.

This module proves that finite identity, records the companion odd-prefix sum
`M_1+M_3`, and transports a common square-root-energy estimate for the two
unit residue classes to the existing `chi_4` energy premise.

No arithmetic-progression Mertens estimate, GRH theorem, or RH theorem is
proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Real Möbius prefix in one residue class modulo four, with the repository's
positive endpoint convention. -/
def modFourMertensPrefix
    (b a : ℕ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 b).filter (fun n => n % 4 = a),
    moebiusReal n

/-- Signed discrepancy between the two unit residue classes modulo four. -/
def modFourUnitMertensDiscrepancy
    (b : ℕ) : ℝ :=
  modFourMertensPrefix b 1 - modFourMertensPrefix b 3

/-- Pointwise signed residue form of the mod-four character weight. -/
def modFourUnitSignedMobiusTerm
    (n : ℕ) : ℝ :=
  if n % 4 = 1 then moebiusReal n
  else if n % 4 = 3 then -moebiusReal n
  else 0

/-- Mathlib's actual `chi_4` weight equals the signed unit-residue selector.
Even residues vanish through the character definition itself. -/
theorem chiFourMobiusTerm_eq_modFourSigned
    (n : ℕ) :
    (moebiusReal n : ℂ) * ((ZMod.χ₄ n : ℤ) : ℂ) =
      (modFourUnitSignedMobiusTerm n : ℂ) := by
  unfold modFourUnitSignedMobiusTerm
  by_cases h1 : n % 4 = 1
  · rw [ZMod.χ₄_nat_one_mod_four h1]
    simp [h1]
  · by_cases h3 : n % 4 = 3
    · rw [ZMod.χ₄_nat_three_mod_four h3]
      simp [h3]
    · have hlt : n % 4 < 4 := Nat.mod_lt _ (by norm_num)
      have hres : n % 4 = 0 ∨ n % 4 = 2 := by
        omega
      have hmod2 : (n % 4) % 2 = n % 2 :=
        Nat.mod_mod_of_dvd n (by norm_num : 2 ∣ 4)
      have heven : n % 2 = 0 := by
        rw [← hmod2]
        rcases hres with h0 | h2
        · simp [h0]
        · simp [h2]
      rw [ZMod.χ₄_nat_eq_if_mod_four]
      simp [heven, h1, h3]

/-- Exact finite identity: the `chi_4`-twisted Mertens prefix is the difference
of the residue-one and residue-three Möbius prefixes. -/
theorem chiFourTwistedMertensPrefix_eq_modFourDiscrepancy
    (b : ℕ) :
    chiFourTwistedMertensPrefix b =
      (modFourUnitMertensDiscrepancy b : ℂ) := by
  unfold chiFourTwistedMertensPrefix
    modFourUnitMertensDiscrepancy
    modFourMertensPrefix
  push_cast
  rw [Finset.sum_filter, Finset.sum_filter,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _hn
  rw [chiFourMobiusTerm_eq_modFourSigned]
  unfold modFourUnitSignedMobiusTerm
  by_cases h1 : n % 4 = 1
  · simp [h1]
  · by_cases h3 : n % 4 = 3
    · simp [h3]
    · simp [h1, h3]

/-- The odd Mertens prefix is the sum of the two unit residue prefixes modulo
four. -/
theorem parityMertensPrefix_odd_eq_modFour_one_add_three
    (b : ℕ) :
    parityMertensPrefix b 1 =
      modFourMertensPrefix b 1 + modFourMertensPrefix b 3 := by
  unfold parityMertensPrefix endpointParitySet modFourMertensPrefix
  rw [Finset.sum_filter, Finset.sum_filter, Finset.sum_filter,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _hn
  by_cases h1 : n % 4 = 1
  · have hmod2 : (n % 4) % 2 = n % 2 :=
      Nat.mod_mod_of_dvd n (by norm_num : 2 ∣ 4)
    have hodd : n % 2 = 1 := by
      rw [← hmod2]
      simp [h1]
    simp [h1, hodd]
  · by_cases h3 : n % 4 = 3
    · have hmod2 : (n % 4) % 2 = n % 2 :=
        Nat.mod_mod_of_dvd n (by norm_num : 2 ∣ 4)
      have hodd : n % 2 = 1 := by
        rw [← hmod2]
        simp [h3]
      simp [h3, hodd]
    · have hlt : n % 4 < 4 := Nat.mod_lt _ (by norm_num)
      have hres : n % 4 = 0 ∨ n % 4 = 2 := by
        omega
      have hmod2 : (n % 4) % 2 = n % 2 :=
        Nat.mod_mod_of_dvd n (by norm_num : 2 ∣ 4)
      have heven : n % 2 = 0 := by
        rw [← hmod2]
        rcases hres with h0 | h2
        · simp [h0]
        · simp [h2]
      simp [h1, h3, heven]

/-- Integral linear reconstruction of the residue-one prefix from the odd
prefix and the `chi_4` discrepancy. -/
theorem two_mul_modFourMertensPrefix_one
    (b : ℕ) :
    2 * modFourMertensPrefix b 1 =
      parityMertensPrefix b 1 +
        modFourUnitMertensDiscrepancy b := by
  rw [parityMertensPrefix_odd_eq_modFour_one_add_three]
  unfold modFourUnitMertensDiscrepancy
  ring

/-- Integral linear reconstruction of the residue-three prefix from the odd
prefix and the `chi_4` discrepancy. -/
theorem two_mul_modFourMertensPrefix_three
    (b : ℕ) :
    2 * modFourMertensPrefix b 3 =
      parityMertensPrefix b 1 -
        modFourUnitMertensDiscrepancy b := by
  rw [parityMertensPrefix_odd_eq_modFour_one_add_three]
  unfold modFourUnitMertensDiscrepancy
  ring

/-- Exact dyadic square-root-energy statement for the mod-four discrepancy. -/
def DyadicModFourMertensDiscrepancySquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      modFourUnitMertensDiscrepancy b ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The discrepancy-energy statement is exactly the existing `chi_4`-twisted
Mertens energy statement. -/
theorem dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy :
    DyadicChiFourTwistedMertensSquareRootEnergy ↔
      DyadicModFourMertensDiscrepancySquareRootEnergy := by
  constructor
  · intro hChi δ hδ
    obtain ⟨C, hC, hscale⟩ := hChi δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    have h := hscale j b hb
    rwa [chiFourTwistedMertensPrefix_eq_modFourDiscrepancy,
      Complex.norm_real, Real.norm_eq_abs, sq_abs] at h
  · intro hDisc δ hδ
    obtain ⟨C, hC, hscale⟩ := hDisc δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [chiFourTwistedMertensPrefix_eq_modFourDiscrepancy,
      Complex.norm_real, Real.norm_eq_abs, sq_abs]
    exact hscale j b hb

/-- Stronger common square-root-energy statement for both unit residue classes
modulo four. -/
def DyadicModFourUnitResidueMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b a : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      (a = 1 ∨ a = 3) →
      modFourMertensPrefix b a ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Common square-root control of the two unit residue prefixes controls their
signed discrepancy.  The explicit constant loss is four. -/
theorem modFourDiscrepancyEnergy_of_unitResidues
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy) :
    DyadicModFourMertensDiscrepancySquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hResidues δ hδ
  refine ⟨4 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j b hb
  have h1 := hscale j b 1 hb (Or.inl rfl)
  have h3 := hscale j b 3 hb (Or.inr rfl)
  unfold modFourUnitMertensDiscrepancy
  calc
    (modFourMertensPrefix b 1 - modFourMertensPrefix b 3) ^ 2 ≤
        2 * modFourMertensPrefix b 1 ^ 2 +
          2 * modFourMertensPrefix b 3 ^ 2 := by
      nlinarith [sq_nonneg
        (modFourMertensPrefix b 1 + modFourMertensPrefix b 3)]
    _ ≤ 4 *
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      nlinarith
    _ = (4 * C) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- The stronger mod-four arithmetic-progression supplier therefore supplies
the exact `chi_4`-twisted Mertens energy. -/
theorem chiFourEnergy_of_modFourUnitResidues
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy) :
    DyadicChiFourTwistedMertensSquareRootEnergy :=
  dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy.mpr
    (modFourDiscrepancyEnergy_of_unitResidues hResidues)

/-- Conditional downstream composition with the unchanged zero-mode,
two-unit, and regular-orbit premises. -/
theorem naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hResidues : DyadicModFourUnitResidueMertensSquareRootEnergy)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwise_chiFour_twoUnit_regular
    hPoint
    (chiFourEnergy_of_modFourUnitResidues hResidues)
    hUnit hRegular

/-- Proof-producing adapter into the common mod-four unit-residue Mertens
energy statement. -/
structure ToModFourUnitResidueMertensSquareRootEnergyAdapter
    (source : Prop) : Type where
  toResidueEnergy :
    source → DyadicModFourUnitResidueMertensSquareRootEnergy

/-- Conservative source profile for a future arithmetic-progression Mertens or
GRH-level theorem at modulus four. -/
structure ModFourAPMertensSourceData where
  theoremStatement : Prop
  residueOnePrefixMatched : Prop
  residueThreePrefixMatched : Prop
  positiveEndpointConventionMatched : Prop
  squareRootPlusEpsilonScaleMatched : Prop
  oneConstantOnDyadicFamilies : Prop
  finiteInitialRangeCovered : Prop

/-- Source proposition for a future mod-four AP Mertens adapter. -/
def ModFourAPMertensSource
    (d : ModFourAPMertensSourceData) : Prop :=
  d.theoremStatement ∧
    d.residueOnePrefixMatched ∧
    d.residueThreePrefixMatched ∧
    d.positiveEndpointConventionMatched ∧
    d.squareRootPlusEpsilonScaleMatched ∧
    d.oneConstantOnDyadicFamilies ∧
    d.finiteInitialRangeCovered

abbrev ModFourAPMertensAdapter
    (d : ModFourAPMertensSourceData) :=
  ToModFourUnitResidueMertensSquareRootEnergyAdapter
    (ModFourAPMertensSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.chiFourTwistedMertensPrefix_eq_modFourDiscrepancy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMertensPrefix_odd_eq_modFour_one_add_three
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicChiFourTwistedMertensEnergy_iff_modFourDiscrepancy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwise_modFourResidues_twoUnit_regular
```
