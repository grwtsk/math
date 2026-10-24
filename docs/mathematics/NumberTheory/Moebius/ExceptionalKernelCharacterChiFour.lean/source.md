# Complete source: GRWTSK.NumberTheory.Moebius.ExceptionalKernelCharacterChiFour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c86320aa4fcaa58bb6a06247fa559e8be971d437` · SHA-256 `10f6d2ee84b24716d6371bbb995aad8a787449955ac1ce2ce35edbf3c3e3286c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #691. Direct stacked parent: draft PR #684 at
`4fa5525141e96deec298c39c0ee68c0fde625e9f`.
-/
import GRWTSK.NumberTheory.Moebius.ExceptionalKernelTwistedMertensFactorization
import Mathlib.NumberTheory.LegendreSymbol.ZModChar

/-!
# Exceptional kernel character and the mod-four Mertens split

On every two-nonunit square modulus, the exceptional kernel character is the
unique nontrivial order-two additive character.  This module proves directly
that

`eta_d(m)=(-1)^m`.

The two parity pieces of the exceptional one-point prefix then become:

* parity zero: the odd ordinary-Mertens prefix at endpoint `floor(b/2)`;
* parity one: the ordinary `chi_4`-twisted Mertens prefix at endpoint `b`.

The proof uses Mathlib's existing `ZMod.χ₄`; no competing character is defined.
The square-root estimate for the `chi_4` twist remains an explicit analytic
premise.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The exceptional order-two character is nontrivial at one. -/
theorem twoKernelShiftCharacter_one_ne_one
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelShiftCharacter d 1 ≠ 1 := by
  intro hOne
  have hchar :
      ZMod.stdAddChar (twoKernelFrequency d) =
        ZMod.stdAddChar (0 : ZMod (d * d)) := by
    simpa [twoKernelShiftCharacter] using hOne
  have hzero : twoKernelFrequency d = 0 :=
    ZMod.injective_stdAddChar hchar
  exact twoKernelFrequency_ne_zero d hNonunit hzero

/-- The exceptional character takes the value `-1` at one. -/
theorem twoKernelShiftCharacter_one_eq_neg_one
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelShiftCharacter d 1 = -1 := by
  have hsq := twoKernelShiftCharacter_sq d 1 hNonunit
  rcases (sq_eq_one_iff.mp hsq) with hOne | hNeg
  · exact (twoKernelShiftCharacter_one_ne_one d hNonunit hOne).elim
  · exact hNeg

/-- Arithmetic identification of the exceptional order-two character. -/
theorem twoKernelShiftCharacter_eq_neg_one_pow
    (d m : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelShiftCharacter d m = (-1 : ℂ) ^ m := by
  induction m with
  | zero =>
      simp [twoKernelShiftCharacter]
  | succ m ih =>
      rw [twoKernelShiftCharacter_add d m 1,
        ih,
        twoKernelShiftCharacter_one_eq_neg_one d hNonunit,
        pow_succ]

/-- The exceptional prefix written with the explicit alternating sign. -/
theorem exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d r =
      ∑ u ∈ endpointParitySet b r,
        (moebiusReal u : ℂ) * (-1 : ℂ) ^ (u / 2) := by
  unfold exceptionalKernelTwistedMertensPrefix
    parityOnePointMobiusFourierSum
    parityOnePointMobiusFourierTerm
  apply Finset.sum_congr rfl
  intro u _hu
  change
    (moebiusReal u : ℂ) * twoKernelShiftCharacter d (u / 2) = _
  rw [twoKernelShiftCharacter_eq_neg_one_pow d (u / 2) hNonunit]

/-- The standard mod-four character-twisted Mertens prefix. -/
def chiFourTwistedMertensPrefix
    (b : ℕ) : ℂ :=
  ∑ u ∈ Finset.Icc 1 b,
    (moebiusReal u : ℂ) * ((ZMod.χ₄ u : ℤ) : ℂ)

/-- Reindex the exceptional even-parity prefix through positive halves. -/
theorem exceptionalKernelTwistedMertensPrefix_even_eq_halfSum
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d 0 =
      ∑ m ∈ Finset.Icc 1 (b / 2),
        (moebiusReal (2 * m) : ℂ) * (-1 : ℂ) ^ m := by
  classical
  rw [exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
    b d 0 hNonunit]
  unfold endpointParitySet
  refine Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m) ?_ ?_ ?_ ?_ ?_
  · intro u hu
    have hu' := Finset.mem_filter.mp hu
    have huI := Finset.mem_Icc.mp hu'.1
    have huEven := hu'.2
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro m hm
    have hmI := Finset.mem_Icc.mp hm
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    omega
  · intro m _hm
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    have huEq : 2 * (u / 2) = u := by omega
    rw [huEq]

/-- The even parity exceptional prefix is the odd ordinary-Mertens prefix at
half scale.  The squarefree-zero case in `mu(2m)` is retained. -/
theorem exceptionalKernelTwistedMertensPrefix_even_eq_odd_half
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d 0 =
      (parityMertensPrefix (b / 2) 1 : ℂ) := by
  rw [exceptionalKernelTwistedMertensPrefix_even_eq_halfSum
    b d hNonunit]
  calc
    (∑ m ∈ Finset.Icc 1 (b / 2),
      (moebiusReal (2 * m) : ℂ) * (-1 : ℂ) ^ m) =
      ∑ m ∈ Finset.Icc 1 (b / 2),
        if m % 2 = 1 then (moebiusReal m : ℂ) else 0 := by
          apply Finset.sum_congr rfl
          intro m _hm
          rw [moebiusReal_two_mul_eq_parity]
          by_cases hodd : m % 2 = 1
          · have hmOdd : Odd m := by
              refine ⟨m / 2, ?_⟩
              omega
            simp [hodd, Odd.neg_one_pow hmOdd]
          · simp [hodd]
    _ = (parityMertensPrefix (b / 2) 1 : ℂ) := by
          unfold parityMertensPrefix endpointParitySet
          push_cast
          rw [Finset.sum_filter]

/-- The odd parity exceptional prefix is the standard `chi_4`-twisted Mertens
prefix.  Even arguments vanish through the actual Mathlib character. -/
theorem exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d 1 =
      chiFourTwistedMertensPrefix b := by
  rw [exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
    b d 1 hNonunit]
  unfold endpointParitySet chiFourTwistedMertensPrefix
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro u _hu
  by_cases hodd : u % 2 = 1
  · rw [if_pos hodd]
    have hchi :
        ((ZMod.χ₄ u : ℤ) : ℂ) = (-1 : ℂ) ^ (u / 2) := by
      exact_mod_cast (ZMod.χ₄_eq_neg_one_pow hodd)
    rw [hchi]
  · have heven : u % 2 = 0 := by
      have hmodlt : u % 2 < 2 := Nat.mod_lt _ (by norm_num)
      omega
    have hchi0 : ZMod.χ₄ u = 0 := by
      rw [ZMod.χ₄_nat_eq_if_mod_four]
      simp [heven]
    simp [hodd, hchi0]

/-- Ambient-scale square-root energy for the half-scale odd ordinary-Mertens
prefix. -/
def DyadicHalfScaleOddMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityMertensPrefix (b / 2) 1 ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Square-root energy for the standard mod-four twisted Mertens prefix. -/
def DyadicChiFourTwistedMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      ‖chiFourTwistedMertensPrefix b‖ ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Parity-Mertens square-root energy supplies the required half-scale odd
prefix at the common ambient scale. -/
theorem halfScaleOddMertensEnergy_of_parity
    (hParity : DyadicParityMertensSquareRootEnergy) :
    DyadicHalfScaleOddMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hParity δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  cases j with
  | zero =>
      have hbI := Finset.mem_Ico.mp hb
      have hbEq : b = 1 := by norm_num at hbI ⊢; omega
      subst b
      simpa [parityMertensPrefix, endpointParitySet] using hC
  | succ j =>
      have hbHalf :
          b / 2 ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) := by
        apply Finset.mem_Ico.mpr
        have hbI := Finset.mem_Ico.mp hb
        simp only [pow_succ] at hbI ⊢
        omega
      have hsmall := hscale j (b / 2) 1 hbHalf (by norm_num)
      have hbase :
          (((2 ^ j : ℕ) : ℝ)) ≤
            (((2 ^ (j + 1) : ℕ) : ℝ)) := by
        norm_num [pow_succ]
      have hbaseδ :
          (((2 ^ j : ℕ) : ℝ) ^ δ) ≤
            (((2 ^ (j + 1) : ℕ) : ℝ) ^ δ) := by
        exact Real.rpow_le_rpow (by positivity) hbase hδ.le
      calc
        parityMertensPrefix (b / 2) 1 ^ 2 ≤
            C * (((2 ^ j : ℕ) : ℝ)) *
              (((2 ^ j : ℕ) : ℝ) ^ δ) := hsmall
        _ ≤ C * (((2 ^ (j + 1) : ℕ) : ℝ)) *
              (((2 ^ (j + 1) : ℕ) : ℝ) ^ δ) := by
            gcongr

/-- The two standard one-point energy statements supply the modulus-indexed
exceptional twisted-Mertens energy from PR #684. -/
theorem twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour
    (hOdd : DyadicHalfScaleOddMertensSquareRootEnergy)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy) :
    DyadicTwoKernelTwistedMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C₀, hC₀, hOddScale⟩ := hOdd δ hδ
  obtain ⟨C₁, hC₁, hChiScale⟩ := hChi δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b d r hb hd hNonunit hr
  let : NeZero d := ⟨by
    have hd' := (Finset.mem_filter.mp hd).1
    exact ne_of_gt (Finset.mem_Ico.mp hd').1⟩
  dsimp only
  have hrCases : r = 0 ∨ r = 1 := by omega
  rcases hrCases with rfl | rfl
  · rw [exceptionalKernelTwistedMertensPrefix_even_eq_odd_half
      b d hNonunit, Complex.norm_real, Real.norm_eq_abs, sq_abs]
    exact (hOddScale j b hb).trans (by gcongr; linarith)
  · rw [exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
      b d hNonunit]
    exact (hChiScale j b hb).trans (by gcongr; linarith)

/-- Existing pointwise ordinary-Mertens control plus the independent `chi_4`
energy premise supplies the exceptional kernel energy. -/
theorem twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy) :
    DyadicTwoKernelTwistedMertensSquareRootEnergy :=
  twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour
    (halfScaleOddMertensEnergy_of_parity
      (parityMertensSquareRootEnergy_of_pointwise hPoint))
    hChi

/-- Conditional downstream composition with the unchanged two-unit and regular
orbit suppliers. -/
theorem naturalScaleCongruenceL1_of_pointwise_chiFour_twoUnit_regular
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_twistedExceptional_regular
    hPoint hUnit
    (twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour
      hPoint hChi)
    hRegular

/-- Proof-producing adapter into the standard `chi_4`-twisted Mertens energy. -/
structure ToChiFourTwistedMertensSquareRootEnergyAdapter
    (source : Prop) : Type where
  toChiFourEnergy :
    source → DyadicChiFourTwistedMertensSquareRootEnergy

/-- Conservative source profile for a future Dirichlet-Mertens or GRH-level
supplier.  No such theorem is constructed here. -/
structure ChiFourTwistedMertensSourceData where
  theoremStatement : Prop
  exactMathlibCharacterMatched : Prop
  ordinaryEndpointConventionMatched : Prop
  squareRootPlusEpsilonScaleMatched : Prop
  oneConstantOnDyadicFamilies : Prop
  finiteInitialRangeCovered : Prop

/-- Source proposition for a future `chi_4`-twisted Mertens adapter. -/
def ChiFourTwistedMertensSource
    (d : ChiFourTwistedMertensSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactMathlibCharacterMatched ∧
    d.ordinaryEndpointConventionMatched ∧
    d.squareRootPlusEpsilonScaleMatched ∧
    d.oneConstantOnDyadicFamilies ∧
    d.finiteInitialRangeCovered

abbrev ChiFourTwistedMertensAdapter
    (d : ChiFourTwistedMertensSourceData) :=
  ToChiFourTwistedMertensSquareRootEnergyAdapter
    (ChiFourTwistedMertensSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelShiftCharacter_eq_neg_one_pow
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.exceptionalKernelTwistedMertensPrefix_even_eq_odd_half
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour
```
