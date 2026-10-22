/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #660. Direct stacked parent: draft PR #648 at
`e092fd7a19f3455e08056786225f8ef66c8d6e92`.
-/
import GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoUnitSplit

/-!
# Order-two kernel pairing on the two-nonunit square-modulus branch

For a positive square-modulus parameter `d` on which multiplication by two is
not invertible, `N=d*d` is even.  The frequency

`H=N/2 mod N`

is an order-two element in the kernel of frequency doubling.  Consequently
`k` and `k+H` have the same doubled frequency in the half-index Chowla core,
while their outer shift phases differ by the order-two additive character

`eta_d(h)=e_N(H*h)`.

This module forms the exact pair-sum and pair-difference transforms before
norms are taken.  The resulting kernel-pair budget is a sufficient, generally
stronger, source for the existing two-nonunit budget.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Complementary square-modulus branch on which multiplication by two is not
a unit. -/
def TwoNonunitSquareModulusParameter (d : ℕ) : Prop :=
  ¬ TwoUnitSquareModulusParameter d

/-- The square modulus is even on the two-nonunit branch. -/
theorem squareModulus_even_of_twoNonunit
    (d : ℕ)
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    Even (d * d) := by
  unfold TwoNonunitSquareModulusParameter
    TwoUnitSquareModulusParameter at hNonunit
  rw [Nat.coprime_two_left] at hNonunit
  exact Nat.not_odd_iff_even.mp hNonunit

/-- The order-two frequency in the kernel of doubling. -/
def twoKernelFrequency
    (d : ℕ) [NeZero d] : ZMod (d * d) :=
  (((d * d) / 2 : ℕ) : ZMod (d * d))

/-- The kernel frequency has additive order dividing two. -/
theorem twoKernelFrequency_add_self_eq_zero
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d + twoKernelFrequency d = 0 := by
  have hEven := squareModulus_even_of_twoNonunit d hNonunit
  rcases hEven with ⟨q, hq⟩
  have hhalf : (d * d) / 2 = q := by omega
  unfold twoKernelFrequency
  rw [hhalf, ← Nat.cast_add, ← hq]
  simp

/-- The kernel frequency is genuinely nonzero on the positive two-nonunit
branch. -/
theorem twoKernelFrequency_ne_zero
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d ≠ 0 := by
  have hdpos : 0 < d := Nat.pos_of_ne_zero (NeZero.ne d)
  have hd2 : 2 ≤ d := by
    by_contra h
    have hd1 : d = 1 := by omega
    subst d
    exact hNonunit (by norm_num [TwoUnitSquareModulusParameter])
  have hhalfpos : 0 < (d * d) / 2 := by omega
  have hhalflt : (d * d) / 2 < d * d := by omega
  intro hz
  have hdvd : d * d ∣ (d * d) / 2 :=
    (ZMod.natCast_eq_zero_iff ((d * d) / 2) (d * d)).1 hz
  have hle : d * d ≤ (d * d) / 2 :=
    Nat.le_of_dvd hhalfpos hdvd
  omega

/-- Translation by the order-two kernel frequency. -/
def twoKernelPartner
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ZMod (d * d) :=
  k + twoKernelFrequency d

/-- The kernel partner map is an involution. -/
theorem twoKernelPartner_involutive
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPartner d (twoKernelPartner d k) = k := by
  unfold twoKernelPartner
  rw [add_assoc, twoKernelFrequency_add_self_eq_zero d hNonunit,
    add_zero]

/-- Partner frequencies have the same doubled frequency. -/
theorem doubledSquareModulusFrequency_partner
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    doubledSquareModulusFrequency d (twoKernelPartner d k) =
      doubledSquareModulusFrequency d k := by
  unfold doubledSquareModulusFrequency twoKernelPartner
  calc
    (k + twoKernelFrequency d) + (k + twoKernelFrequency d) =
      (k + k) +
        (twoKernelFrequency d + twoKernelFrequency d) := by ring
    _ = k + k := by
      rw [twoKernelFrequency_add_self_eq_zero d hNonunit, add_zero]

/-- The exceptional kernel orbit is `{0,H}`.  It is not an orbit wholly inside
the nonzero-frequency set. -/
theorem twoKernelPartner_zero
    (d : ℕ) [NeZero d] :
    twoKernelPartner d 0 = twoKernelFrequency d := by
  simp [twoKernelPartner]

/-- The kernel partner of `H` is zero. -/
theorem twoKernelPartner_kernel_eq_zero
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelPartner d (twoKernelFrequency d) = 0 := by
  unfold twoKernelPartner
  exact twoKernelFrequency_add_self_eq_zero d hNonunit

/-- Order-two shift character induced by the doubling kernel. -/
def twoKernelShiftCharacter
    (d h : ℕ) [NeZero d] : ℂ :=
  ZMod.stdAddChar
    (twoKernelFrequency d * (h : ZMod (d * d)))

/-- The kernel shift character has square one.  No identification with
`(-1)^h` is used. -/
theorem twoKernelShiftCharacter_sq
    (d h : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelShiftCharacter d h ^ 2 = 1 := by
  unfold twoKernelShiftCharacter
  rw [pow_two, ← AddChar.map_add_eq_mul]
  have harg :
      twoKernelFrequency d * (h : ZMod (d * d)) +
          twoKernelFrequency d * (h : ZMod (d * d)) = 0 := by
    calc
      twoKernelFrequency d * (h : ZMod (d * d)) +
          twoKernelFrequency d * (h : ZMod (d * d)) =
        (twoKernelFrequency d + twoKernelFrequency d) *
          (h : ZMod (d * d)) := by ring
      _ = 0 := by
        rw [twoKernelFrequency_add_self_eq_zero d hNonunit, zero_mul]
  rw [harg]
  simp

/-- Shift phase at the partner frequency factors through the order-two kernel
character. -/
theorem affineChowlaShiftPhase_partner
    (d h : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    affineChowlaShiftPhase d h (twoKernelPartner d k) =
      affineChowlaShiftPhase d h k *
        twoKernelShiftCharacter d h := by
  unfold affineChowlaShiftPhase twoKernelPartner
    twoKernelShiftCharacter
  have harg :
      (k + twoKernelFrequency d) * (h : ZMod (d * d)) =
        k * (h : ZMod (d * d)) +
          twoKernelFrequency d * (h : ZMod (d * d)) := by ring
  rw [harg, AddChar.map_add_eq_mul]

/-- Exact partner-frequency expansion of the half-index shift aggregate. -/
theorem halfIndexAffineChowlaShiftAggregate_partner
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaShiftAggregate b d r
        (twoKernelPartner d k) =
      ∑ h ∈ positiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          twoKernelShiftCharacter d h *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
  unfold halfIndexAffineChowlaShiftAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  rw [affineChowlaShiftPhase_partner,
    doubledSquareModulusFrequency_partner d hNonunit k]
  ring

/-- Pair-sum transform at one parity and frequency. -/
def twoKernelPairPlusAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  halfIndexAffineChowlaShiftAggregate b d r k +
    halfIndexAffineChowlaShiftAggregate b d r
      (twoKernelPartner d k)

/-- Pair-difference transform at one parity and frequency. -/
def twoKernelPairMinusAggregate
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  halfIndexAffineChowlaShiftAggregate b d r k -
    halfIndexAffineChowlaShiftAggregate b d r
      (twoKernelPartner d k)

/-- Pair-sum projector formula. -/
theorem twoKernelPairPlusAggregate_eq_projector
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairPlusAggregate b d r k =
      ∑ h ∈ positiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          (1 + twoKernelShiftCharacter d h) *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
  unfold twoKernelPairPlusAggregate
  rw [halfIndexAffineChowlaShiftAggregate_partner
    b d r hNonunit k]
  unfold halfIndexAffineChowlaShiftAggregate
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h _hh
  ring

/-- Pair-difference projector formula. -/
theorem twoKernelPairMinusAggregate_eq_projector
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairMinusAggregate b d r k =
      ∑ h ∈ positiveEndpointShiftSet b,
        affineChowlaShiftPhase d h k *
          (1 - twoKernelShiftCharacter d h) *
          halfIndexAffineChowlaCore b d r h
            (doubledSquareModulusFrequency d k) := by
  unfold twoKernelPairMinusAggregate
  rw [halfIndexAffineChowlaShiftAggregate_partner
    b d r hNonunit k]
  unfold halfIndexAffineChowlaShiftAggregate
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro h _hh
  ring

/-- Recover the original aggregate from the pair projectors. -/
theorem halfIndexAggregate_eq_half_pairPlus_add_pairMinus
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaShiftAggregate b d r k =
      (1 / 2 : ℂ) *
        (twoKernelPairPlusAggregate b d r k +
          twoKernelPairMinusAggregate b d r k) := by
  unfold twoKernelPairPlusAggregate twoKernelPairMinusAggregate
  ring

/-- Recover the partner aggregate from the pair projectors. -/
theorem halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaShiftAggregate b d r
        (twoKernelPartner d k) =
      (1 / 2 : ℂ) *
        (twoKernelPairPlusAggregate b d r k -
          twoKernelPairMinusAggregate b d r k) := by
  unfold twoKernelPairPlusAggregate twoKernelPairMinusAggregate
  ring

/-- Cancellation-preserving pointwise majorant built from the order-two pair
projectors. -/
def twoNonunitKernelPairFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 4 : ℝ) *
    (‖twoKernelPairPlusAggregate b d 0 k‖ +
      ‖twoKernelPairMinusAggregate b d 0 k‖ +
      ‖twoKernelPairPlusAggregate b d 1 k‖ +
      ‖twoKernelPairMinusAggregate b d 1 k‖)

/-- The kernel-pair projector majorant bounds the original half-index frequency
majorant pointwise. -/
theorem halfIndexAffineChowlaFrequencyMajorant_le_kernelPair
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaFrequencyMajorant b d k ≤
      twoNonunitKernelPairFrequencyMajorant b d k := by
  have h0 :
      ‖halfIndexAffineChowlaShiftAggregate b d 0 k‖ ≤
        (1 / 2 : ℝ) *
          (‖twoKernelPairPlusAggregate b d 0 k‖ +
            ‖twoKernelPairMinusAggregate b d 0 k‖) := by
    rw [halfIndexAggregate_eq_half_pairPlus_add_pairMinus]
    rw [norm_mul]
    norm_num
    exact mul_le_mul_of_nonneg_left
      (norm_add_le _ _) (by norm_num)
  have h1 :
      ‖halfIndexAffineChowlaShiftAggregate b d 1 k‖ ≤
        (1 / 2 : ℝ) *
          (‖twoKernelPairPlusAggregate b d 1 k‖ +
            ‖twoKernelPairMinusAggregate b d 1 k‖) := by
    rw [halfIndexAggregate_eq_half_pairPlus_add_pairMinus]
    rw [norm_mul]
    norm_num
    exact mul_le_mul_of_nonneg_left
      (norm_add_le _ _) (by norm_num)
  unfold halfIndexAffineChowlaFrequencyMajorant
    twoNonunitKernelPairFrequencyMajorant
  nlinarith

/-- Endpoint majorant on the two-nonunit branch using the order-two kernel
pair projectors.  The complete original nonzero-frequency set is retained, so
the exceptional kernel frequency is not dropped. -/
def twoNonunitKernelPairEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ nonzeroSquareModulusFrequencySet d,
            twoNonunitKernelPairFrequencyMajorant b d k
      else 0
    else 0

/-- The original two-nonunit endpoint contribution is bounded by the
kernel-pair projector contribution. -/
theorem twoNonunitHalfIndexEndpointMajorant_le_kernelPair
    (b : ℕ) :
    twoNonunitHalfIndexAffineChowlaEndpointMajorant b ≤
      twoNonunitKernelPairEndpointMajorant b := by
  unfold twoNonunitHalfIndexAffineChowlaEndpointMajorant
    twoNonunitKernelPairEndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hTwo : TwoUnitSquareModulusParameter d
  · simp [hTwo, TwoNonunitSquareModulusParameter]
  · have hNonunit : TwoNonunitSquareModulusParameter d := hTwo
    simp only [hTwo, dif_neg, hNonunit, dif_pos]
    apply mul_le_mul_of_nonneg_left ?_ (by positivity)
    apply Finset.sum_le_sum
    intro k _hk
    exact halfIndexAffineChowlaFrequencyMajorant_le_kernelPair b d k

/-- Natural-scale supplier for the order-two kernel-pair majorant. -/
def DyadicNaturalScaleTwoNonunitKernelPairBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitKernelPairEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The order-two kernel-pair budget supplies the original two-nonunit branch. -/
theorem twoNonunitHalfIndexBudget_of_kernelPair
    (hPair : DyadicNaturalScaleTwoNonunitKernelPairBudget) :
    DyadicNaturalScaleTwoNonunitHalfIndexBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hPair δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (twoNonunitHalfIndexEndpointMajorant_le_kernelPair b).trans
      (hscale j b hb)

/-- Downstream composition with the independent pointwise-Mertens zero mode
and the two-unit branch. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_kernelPair
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hPair : DyadicNaturalScaleTwoNonunitKernelPairBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches
    hPoint hUnit (twoNonunitHalfIndexBudget_of_kernelPair hPair)

/-- Proof-producing adapter into the two-nonunit kernel-pair budget. -/
structure ToTwoNonunitKernelPairBudgetAdapter
    (source : Prop) : Type where
  toKernelPairBudget :
    source → DyadicNaturalScaleTwoNonunitKernelPairBudget

/-- Conservative analytic source profile for an order-two kernel-pair theorem. -/
structure TwoNonunitKernelPairAnalyticData where
  theoremStatement : Prop
  evenSquareModuliMatched : Prop
  completeNonzeroFrequencyFamilyMatched : Prop
  exceptionalKernelFrequencyRetained : Prop
  orderTwoShiftCharacterMatched : Prop
  pairSumDifferenceCancellationRetained : Prop
  bothParityClassesMatched : Prop
  endpointFrequencyModulusAggregation : Prop
  naturalScaleNormalizationMatched : Prop

/-- Conservative source proposition for the kernel-pair analytic branch. -/
def TwoNonunitKernelPairAnalyticSource
    (d : TwoNonunitKernelPairAnalyticData) : Prop :=
  d.theoremStatement ∧
    d.evenSquareModuliMatched ∧
    d.completeNonzeroFrequencyFamilyMatched ∧
    d.exceptionalKernelFrequencyRetained ∧
    d.orderTwoShiftCharacterMatched ∧
    d.pairSumDifferenceCancellationRetained ∧
    d.bothParityClassesMatched ∧
    d.endpointFrequencyModulusAggregation ∧
    d.naturalScaleNormalizationMatched

abbrev TwoNonunitKernelPairAnalyticAdapter
    (d : TwoNonunitKernelPairAnalyticData) :=
  ToTwoNonunitKernelPairBudgetAdapter
    (TwoNonunitKernelPairAnalyticSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.doubledSquareModulusFrequency_partner
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoKernelPairPlusAggregate_eq_projector
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitHalfIndexBudget_of_kernelPair
