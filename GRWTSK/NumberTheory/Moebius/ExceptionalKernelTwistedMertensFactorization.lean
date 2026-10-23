/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #681. Direct stacked parent: draft PR #672 at
`f631c32bc02beb54a909bdcbf357ac559104e53b`.
-/
import GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives

/-!
# Exceptional doubling-kernel frequency as a twisted Mertens square

The exceptional nonzero frequency on the two-nonunit square-modulus branch is

`H = d^2 / 2 mod d^2`.

The parent source identifies its parity-`r` aggregate as

`A_r(H) = sum_h eta_d(h) * U_r(h,0)`,

where `eta_d` is an order-two additive character.  This module shows that the
same aggregate is exactly

`T_r(b,d)^2 - Q_r(b)`,

where `T_r` is a one-point Möbius sum twisted by the kernel character and `Q_r`
is the exact parity squarefree diagonal.

The proof reuses the already-scripted signed-residue Fourier identity and the
exact shift/half-index reindexing.  No absolute value is inserted before the
square-minus-diagonal identity.  No identification of `eta_d` with `(-1)^h` or
with a named Dirichlet character is used.

A dyadic square-root-energy premise for the twisted one-point sums is then
shown sufficient for the exceptional endpoint budget.  The premise itself is
not constructed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The one-point parity Mertens prefix twisted by the exceptional order-two
kernel character.  This is the existing one-point Fourier sum evaluated at
`H=d^2/2`. -/
def exceptionalKernelTwistedMertensPrefix
    (b d r : ℕ) [NeZero d] : ℂ :=
  parityOnePointMobiusFourierSum b d r
    (twoKernelFrequency d)

/-- The kernel character is multiplicative with respect to addition in its
natural-number argument. -/
theorem twoKernelShiftCharacter_add
    (d m n : ℕ) [NeZero d] :
    twoKernelShiftCharacter d (m + n) =
      twoKernelShiftCharacter d m *
        twoKernelShiftCharacter d n := by
  unfold twoKernelShiftCharacter
  push_cast
  rw [mul_add, AddChar.map_add_eq_mul]

/-- On the two-nonunit branch, the character of a positive difference factors
as the product of the two endpoint characters.

Only the additive-character law and the order-two identity are used. -/
theorem twoKernelShiftCharacter_sub_eq_mul
    (d m n : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (hmn : m ≤ n) :
    twoKernelShiftCharacter d (n - m) =
      twoKernelShiftCharacter d m *
        twoKernelShiftCharacter d n := by
  have hadd := twoKernelShiftCharacter_add d m (n - m)
  have hsum : m + (n - m) = n := Nat.add_sub_of_le hmn
  rw [hsum] at hadd
  have hmSq := twoKernelShiftCharacter_sq d m hNonunit
  calc
    twoKernelShiftCharacter d (n - m) =
        1 * twoKernelShiftCharacter d (n - m) := by ring
    _ = twoKernelShiftCharacter d m ^ 2 *
          twoKernelShiftCharacter d (n - m) := by rw [hmSq]
    _ = twoKernelShiftCharacter d m *
          (twoKernelShiftCharacter d m *
            twoKernelShiftCharacter d (n - m)) := by ring
    _ = twoKernelShiftCharacter d m *
          twoKernelShiftCharacter d n := by rw [← hadd]

/-- The square of one exceptional twisted Mertens term is its squarefree
indicator term. -/
theorem exceptionalKernelTwistedMertensTerm_sq
    (d u : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    parityOnePointMobiusFourierTerm d
        (twoKernelFrequency d) u ^ 2 =
      (moebiusReal u : ℂ) ^ 2 := by
  unfold parityOnePointMobiusFourierTerm
  have heta := twoKernelShiftCharacter_sq d (u / 2) hNonunit
  change
    ((moebiusReal u : ℂ) *
      twoKernelShiftCharacter d (u / 2)) ^ 2 =
      (moebiusReal u : ℂ) ^ 2
  rw [mul_pow, heta, mul_one]

/-- At the exceptional frequency, the one-point Fourier diagonal is exactly
the real parity squarefree diagonal, cast to `ℂ`. -/
theorem parityOnePointMobiusFourierDiagonal_kernel_eq_squarefree
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    parityOnePointMobiusFourierDiagonal b d r
        (twoKernelFrequency d) =
      (paritySquarefreeDiagonal b r : ℂ) := by
  unfold parityOnePointMobiusFourierDiagonal
    paritySquarefreeDiagonal
  push_cast
  apply Finset.sum_congr rfl
  intro u _hu
  exact exceptionalKernelTwistedMertensTerm_sq d u hNonunit

/-- The exceptional half-index aggregate is exactly the signed residue Fourier
transform at the kernel frequency. -/
theorem twoNonunitExceptionalKernelAggregate_eq_signedFourier
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    twoNonunitExceptionalKernelAggregate b d r =
      paritySignedResidueConvolutionFourier b d r
        (twoKernelFrequency d) := by
  unfold twoNonunitExceptionalKernelAggregate
  calc
    halfIndexAffineChowlaShiftAggregate b d r
        (twoKernelFrequency d) =
      ∑ h ∈ positiveEndpointShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d r h
          (twoKernelFrequency d) :=
        (sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate
          b d r hr (twoKernelFrequency d)).symm
    _ = paritySignedResidueConvolutionFourier b d r
        (twoKernelFrequency d) :=
      (paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists
        b d r (twoKernelFrequency d)).symm

/-- Load-bearing exact identity for the exceptional orbit.

The binary exceptional aggregate is a one-point twisted Mertens square minus
the exact squarefree diagonal. -/
theorem twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (hr : r < 2) :
    twoNonunitExceptionalKernelAggregate b d r =
      exceptionalKernelTwistedMertensPrefix b d r ^ 2 -
        (paritySquarefreeDiagonal b r : ℂ) := by
  rw [twoNonunitExceptionalKernelAggregate_eq_signedFourier b d r hr,
    paritySignedResidueConvolutionFourier_eq_square_sub_diagonal]
  unfold exceptionalKernelTwistedMertensPrefix
  rw [parityOnePointMobiusFourierDiagonal_kernel_eq_squarefree
    b d r hNonunit]

/-- Exceptional pointwise majorant written directly in the one-point twisted
Mertens normalization. -/
def exceptionalKernelTwistedMertensFrequencyMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (1 / 2 : ℝ) *
    (‖exceptionalKernelTwistedMertensPrefix b d 0 ^ 2 -
        (paritySquarefreeDiagonal b 0 : ℂ)‖ +
      ‖exceptionalKernelTwistedMertensPrefix b d 1 ^ 2 -
        (paritySquarefreeDiagonal b 1 : ℂ)‖)

/-- Exact equality of the exceptional frequency surfaces. -/
theorem exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensFrequencyMajorant b d =
      twoNonunitExceptionalKernelFrequencyMajorant b d := by
  unfold exceptionalKernelTwistedMertensFrequencyMajorant
    twoNonunitExceptionalKernelFrequencyMajorant
  rw [twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
      b d 0 hNonunit (by norm_num),
    twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
      b d 1 hNonunit (by norm_num)]

/-- Endpoint exceptional contribution in the twisted one-point normalization. -/
def exceptionalKernelTwistedMertensEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          exceptionalKernelTwistedMertensFrequencyMajorant b d
      else 0
    else 0

/-- Exact equality with the exceptional endpoint surface from PR #672. -/
theorem exceptionalKernelTwistedMertensEndpointMajorant_eq_existing
    (b : ℕ) :
    exceptionalKernelTwistedMertensEndpointMajorant b =
      twoNonunitExceptionalKernelEndpointMajorant b := by
  unfold exceptionalKernelTwistedMertensEndpointMajorant
    twoNonunitExceptionalKernelEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    rw [exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing
      b d hNonunit]
  · simp [hNonunit]

/-- Uniform dyadic square-root-energy premise for the exceptional one-point
twisted Mertens sums.

This proposition is not constructed in this module. -/
def DyadicTwoKernelTwistedMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b d r : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      ∀ (hdMem : d ∈ effectiveEndpointSquareModulusSet b),
      TwoNonunitSquareModulusParameter d →
      r < 2 →
      let : NeZero d := ⟨by
        have hd := (Finset.mem_filter.mp hdMem).1
        exact ne_of_gt (Finset.mem_Ico.mp hd).1⟩
      ‖exceptionalKernelTwistedMertensPrefix b d r‖ ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Pointwise exceptional frequency control from the twisted Mertens energy
premise and the elementary squarefree diagonal bound. -/
theorem exceptionalKernelTwistedMertensFrequencyMajorant_le
    (_hEnergy : DyadicTwoKernelTwistedMertensSquareRootEnergy)
    {δ : ℝ} (hδ : 0 < δ)
    {C : ℝ}
    (_hC : 0 ≤ C)
    (hscale :
      ∀ j b d r : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        ∀ (hdMem : d ∈ effectiveEndpointSquareModulusSet b),
        TwoNonunitSquareModulusParameter d →
        r < 2 →
        let : NeZero d := ⟨by
          have hd := (Finset.mem_filter.mp hdMem).1
          exact ne_of_gt (Finset.mem_Ico.mp hd).1⟩
        ‖exceptionalKernelTwistedMertensPrefix b d r‖ ^ 2 ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ))
    {j b d : ℕ}
    (hb : b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)))
    (hd : d ∈ effectiveEndpointSquareModulusSet b)
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    let : NeZero d := ⟨by
      have hd' := (Finset.mem_filter.mp hd).1
      exact ne_of_gt (Finset.mem_Ico.mp hd').1⟩
    exceptionalKernelTwistedMertensFrequencyMajorant b d ≤
      (C + 2) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  let : NeZero d := ⟨ne_of_gt (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1⟩
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 1 ≤ X := by
    dsimp [X]
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (pow_ne_zero j two_ne_zero)
  have hXδ : 1 ≤ X ^ δ := Real.one_le_rpow hX hδ.le
  have hbtop : (b : ℝ) ≤ 2 * X := by
    have hI := Finset.mem_Ico.mp hb
    dsimp [X]
    rw [pow_succ] at hI
    exact_mod_cast (by simpa only [mul_comm] using Nat.le_of_lt hI.2 : b ≤ 2 * 2 ^ j)
  have h0 := hscale j b d 0 hb hd hNonunit (by norm_num)
  have h1 := hscale j b d 1 hb hd hNonunit (by norm_num)
  have hq0 := paritySquarefreeDiagonal_le_endpoint b 0
  have hq1 := paritySquarefreeDiagonal_le_endpoint b 1
  have hq0n := paritySquarefreeDiagonal_nonneg b 0
  have hq1n := paritySquarefreeDiagonal_nonneg b 1
  unfold exceptionalKernelTwistedMertensFrequencyMajorant
  have hz0 :
      ‖exceptionalKernelTwistedMertensPrefix b d 0 ^ 2 -
          (paritySquarefreeDiagonal b 0 : ℂ)‖ ≤
        C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
    calc
      ‖exceptionalKernelTwistedMertensPrefix b d 0 ^ 2 -
          (paritySquarefreeDiagonal b 0 : ℂ)‖ ≤
        ‖exceptionalKernelTwistedMertensPrefix b d 0‖ ^ 2 +
          paritySquarefreeDiagonal b 0 := by
            convert! norm_sub_le
              (exceptionalKernelTwistedMertensPrefix b d 0 ^ 2)
              (paritySquarefreeDiagonal b 0 : ℂ) using 1
            simp only [norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq0n]
      _ ≤ C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
        nlinarith
  have hz1 :
      ‖exceptionalKernelTwistedMertensPrefix b d 1 ^ 2 -
          (paritySquarefreeDiagonal b 1 : ℂ)‖ ≤
        C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
    calc
      ‖exceptionalKernelTwistedMertensPrefix b d 1 ^ 2 -
          (paritySquarefreeDiagonal b 1 : ℂ)‖ ≤
        ‖exceptionalKernelTwistedMertensPrefix b d 1‖ ^ 2 +
          paritySquarefreeDiagonal b 1 := by
            convert! norm_sub_le
              (exceptionalKernelTwistedMertensPrefix b d 1 ^ 2)
              (paritySquarefreeDiagonal b 1 : ℂ) using 1
            simp only [norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq1n]
      _ ≤ C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
        nlinarith
  nlinarith

/-- The one-point twisted Mertens square-root-energy premise supplies the
existing exceptional-kernel natural-scale budget. -/
theorem exceptionalKernelBudget_of_twistedMertensSquareRootEnergy
    (hEnergy : DyadicTwoKernelTwistedMertensSquareRootEnergy) :
    DyadicNaturalScaleTwoNonunitExceptionalKernelBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hEnergy δ hδ
  refine ⟨2 * (C + 2), by positivity, ?_⟩
  intro j b hb
  rw [← exceptionalKernelTwistedMertensEndpointMajorant_eq_existing]
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  unfold exceptionalKernelTwistedMertensEndpointMajorant
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        let : NeZero d := ⟨ne_of_gt hd⟩
        if _hNonunit : TwoNonunitSquareModulusParameter d then
          (((d * d : ℕ) : ℝ))⁻¹ *
            exceptionalKernelTwistedMertensFrequencyMajorant b d
        else 0
      else 0) ≤
      effectiveSquareModulusReciprocalMass b *
        ((C + 2) * X * (X ^ δ)) := by
          unfold effectiveSquareModulusReciprocalMass
          rw [Finset.sum_mul]
          apply Finset.sum_le_sum
          intro d hd
          have hdpos :
              0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
          simp only [dif_pos hdpos]
          let : NeZero d := ⟨ne_of_gt hdpos⟩
          by_cases hNonunit : TwoNonunitSquareModulusParameter d
          · simp only [hNonunit, dif_pos]
            apply mul_le_mul_of_nonneg_left ?_ (by positivity)
            simpa [X] using
              exceptionalKernelTwistedMertensFrequencyMajorant_le
                hEnergy hδ hC hscale hb hd hNonunit
          · simp only [hNonunit, ↓reduceDIte]
            positivity
    _ ≤ 2 * ((C + 2) * X * (X ^ δ)) := by
      exact mul_le_mul_of_nonneg_right
        (effectiveSquareModulusReciprocalMass_le_two b)
        (by positivity)
    _ = (2 * (C + 2)) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      dsimp [X]
      ring

/-- Downstream composition with the unchanged regular-orbit and two-unit
suppliers. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_twistedExceptional_regular
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hTwisted : DyadicTwoKernelTwistedMertensSquareRootEnergy)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_orbitSplit
    hPoint hUnit
    (exceptionalKernelBudget_of_twistedMertensSquareRootEnergy hTwisted)
    hRegular

/-- Generic proof-producing adapter into the exceptional twisted-Mertens
square-root-energy premise. -/
structure ToTwoKernelTwistedMertensSquareRootEnergyAdapter
    (source : Prop) : Type where
  toTwistedEnergy :
    source → DyadicTwoKernelTwistedMertensSquareRootEnergy

/-- Conservative source profile for a future ordinary or Dirichlet-character
Mertens theorem supplying the kernel twist.

No identification with a named character or external theorem is made here. -/
structure CharacterTwistedMertensSourceData where
  theoremStatement : Prop
  orderTwoCharacterIdentified : Prop
  bothParityClassesMatched : Prop
  effectiveTwoNonunitModuliMatched : Prop
  squareRootPlusEpsilonScaleMatched : Prop
  oneConstantOnDyadicFamilies : Prop
  endpointConventionMatched : Prop

/-- Conservative source proposition for the future character-twisted Mertens
adapter. -/
def CharacterTwistedMertensSource
    (d : CharacterTwistedMertensSourceData) : Prop :=
  d.theoremStatement ∧
    d.orderTwoCharacterIdentified ∧
    d.bothParityClassesMatched ∧
    d.effectiveTwoNonunitModuliMatched ∧
    d.squareRootPlusEpsilonScaleMatched ∧
    d.oneConstantOnDyadicFamilies ∧
    d.endpointConventionMatched

abbrev CharacterTwistedMertensAdapter
    (d : CharacterTwistedMertensSourceData) :=
  ToTwoKernelTwistedMertensSquareRootEnergyAdapter
    (CharacterTwistedMertensSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.exceptionalKernelBudget_of_twistedMertensSquareRootEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_twistedExceptional_regular
