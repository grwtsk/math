/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #671. Direct stacked parent: draft PR #662 at exact head
`1c27e2cd64137cb185851563160d7963f2df7b30`.
-/
import GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitKernelPair

/-!
# Canonical kernel-orbit representatives and the exceptional frequency

On the two-nonunit square-modulus branch, translation by

`H = d^2 / 2 mod d^2`

is a fixed-point-free involution on the full frequency group.  The nonzero
frequency set is not invariant because the exceptional orbit is `{0,H}`.
This module separates `H` exactly and chooses one canonical representative
from every remaining two-element orbit by comparing canonical `ZMod.val`
representatives.

For a regular representative `k`, the two original frequency contributions
at `k` and `k+H` are bounded only after the pair-sum/pair-difference
projectors from the parent module have been formed.  No positive energy is
inserted before that signed transform.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Canonical representatives for every nonexceptional order-two kernel orbit.

A representative and its partner must both be nonzero; the smaller canonical
`ZMod.val` is selected.  Therefore the exceptional orbit `{0,H}` contributes
no representative. -/
def twoKernelRegularOrbitRepresentativeSet
    (d : ℕ) [NeZero d] : Finset (ZMod (d * d)) :=
  Finset.univ.filter (fun k =>
    k ≠ 0 ∧
      twoKernelPartner d k ≠ 0 ∧
      k.val < (twoKernelPartner d k).val)

/-- Translation by the nonzero kernel frequency has no fixed point. -/
theorem twoKernelPartner_ne_self
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPartner d k ≠ k := by
  intro hk
  have hH : twoKernelFrequency d = 0 := by
    apply add_left_cancel (a := k)
    simpa [twoKernelPartner] using hk
  exact twoKernelFrequency_ne_zero d hNonunit hH

/-- Translation by the kernel frequency is injective because it is an
involution on the two-nonunit branch. -/
theorem twoKernelPartner_injective
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    Function.Injective (twoKernelPartner d) := by
  intro k l hkl
  calc
    k = twoKernelPartner d (twoKernelPartner d k) :=
      (twoKernelPartner_involutive d hNonunit k).symm
    _ = twoKernelPartner d (twoKernelPartner d l) :=
      congrArg (twoKernelPartner d) hkl
    _ = l := twoKernelPartner_involutive d hNonunit l

/-- The exceptional frequency is a member of the original nonzero family. -/
theorem twoKernelFrequency_mem_nonzeroSet
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d ∈ nonzeroSquareModulusFrequencySet d := by
  simp [nonzeroSquareModulusFrequencySet,
    twoKernelFrequency_ne_zero d hNonunit]

/-- A regular representative is nonzero. -/
theorem representative_ne_zero
    {d : ℕ} [NeZero d]
    {k : ZMod (d * d)}
    (hk : k ∈ twoKernelRegularOrbitRepresentativeSet d) :
    k ≠ 0 := by
  exact (Finset.mem_filter.mp hk).2.1

/-- The partner of a regular representative is also nonzero. -/
theorem representative_partner_ne_zero
    {d : ℕ} [NeZero d]
    {k : ZMod (d * d)}
    (hk : k ∈ twoKernelRegularOrbitRepresentativeSet d) :
    twoKernelPartner d k ≠ 0 := by
  exact (Finset.mem_filter.mp hk).2.2.1

/-- The partner of a selected representative is never itself selected. -/
theorem partner_not_mem_representativeSet
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    {k : ZMod (d * d)}
    (hk : k ∈ twoKernelRegularOrbitRepresentativeSet d) :
    twoKernelPartner d k ∉ twoKernelRegularOrbitRepresentativeSet d := by
  intro hpartner
  have hklt := (Finset.mem_filter.mp hk).2.2.2
  have hplt := (Finset.mem_filter.mp hpartner).2.2.2
  rw [twoKernelPartner_involutive d hNonunit] at hplt
  exact (Nat.not_lt_of_ge (Nat.le_of_lt hklt)) hplt

/-- Outside the exceptional orbit, exactly one orientation is selected by the
canonical-value order. -/
theorem regularFrequency_representative_or_partner
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d))
    (hk0 : k ≠ 0)
    (hkH : k ≠ twoKernelFrequency d) :
    k ∈ twoKernelRegularOrbitRepresentativeSet d ∨
      twoKernelPartner d k ∈ twoKernelRegularOrbitRepresentativeSet d := by
  have hpartner0 : twoKernelPartner d k ≠ 0 := by
    intro hzero
    have hback := congrArg (twoKernelPartner d) hzero
    rw [twoKernelPartner_involutive d hNonunit,
      twoKernelPartner_zero] at hback
    exact hkH hback
  have hvalne : k.val ≠ (twoKernelPartner d k).val := by
    intro hval
    have heq : k = twoKernelPartner d k := by
      exact ZMod.val_injective (d * d) hval
    exact twoKernelPartner_ne_self d hNonunit k heq.symm
  rcases lt_or_gt_of_ne hvalne with hlt | hgt
  · left
    simp [twoKernelRegularOrbitRepresentativeSet, hk0, hpartner0, hlt]
  · right
    have hback0 :
        twoKernelPartner d (twoKernelPartner d k) ≠ 0 := by
      simpa [twoKernelPartner_involutive d hNonunit] using hk0
    have hbacklt :
        (twoKernelPartner d k).val <
          (twoKernelPartner d (twoKernelPartner d k)).val := by
      simpa [twoKernelPartner_involutive d hNonunit] using hgt
    simp [twoKernelRegularOrbitRepresentativeSet, hpartner0, hk0, hgt,
      twoKernelPartner_involutive d hNonunit]

/-- Every regular representative has a distinct partner. -/
theorem representative_partner_ne
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    {k : ZMod (d * d)}
    (_hk : k ∈ twoKernelRegularOrbitRepresentativeSet d) :
    twoKernelPartner d k ≠ k :=
  twoKernelPartner_ne_self d hNonunit k

/-- Exact finite partition of the nonzero-frequency set into the exceptional
kernel frequency and the two orientations of the regular representatives. -/
theorem nonzeroFrequencySet_eq_exceptional_union_regularOrbits
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    nonzeroSquareModulusFrequencySet d =
      insert (twoKernelFrequency d)
        (twoKernelRegularOrbitRepresentativeSet d ∪
          (twoKernelRegularOrbitRepresentativeSet d).image
            (twoKernelPartner d)) := by
  classical
  ext k
  constructor
  · intro hk
    have hk0 : k ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hk
    by_cases hkH : k = twoKernelFrequency d
    · simp [hkH]
    · rcases regularFrequency_representative_or_partner
        d hNonunit k hk0 hkH with hrep | hpartner
      · simp [hrep]
      · have hpreimage :
            ∃ q ∈ twoKernelRegularOrbitRepresentativeSet d,
              twoKernelPartner d q = k := by
          refine ⟨twoKernelPartner d k, hpartner, ?_⟩
          exact twoKernelPartner_involutive d hNonunit k
        simp [hpreimage]
  · intro hk
    rcases Finset.mem_insert.mp hk with hkH | hkrest
    · subst k
      exact twoKernelFrequency_mem_nonzeroSet d hNonunit
    · rcases Finset.mem_union.mp hkrest with hrep | himage
      · have hk0 := representative_ne_zero hrep
        simp [nonzeroSquareModulusFrequencySet, hk0]
      · rcases Finset.mem_image.mp himage with ⟨q, hq, rfl⟩
        have hq0 := representative_partner_ne_zero hq
        simp [nonzeroSquareModulusFrequencySet, hq0]

/-- The exceptional frequency does not occur in the regular representative
set. -/
theorem exceptional_not_mem_representativeSet
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d ∉ twoKernelRegularOrbitRepresentativeSet d := by
  intro hmem
  exact representative_partner_ne_zero hmem
    (twoKernelPartner_kernel_eq_zero d hNonunit)

/-- The representative set and its partner image are disjoint. -/
theorem representativeSet_disjoint_partnerImage
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    Disjoint
      (twoKernelRegularOrbitRepresentativeSet d)
      ((twoKernelRegularOrbitRepresentativeSet d).image
        (twoKernelPartner d)) := by
  refine Finset.disjoint_left.2 ?_
  intro k hk himage
  rcases Finset.mem_image.mp himage with ⟨q, hq, hqk⟩
  subst k
  exact partner_not_mem_representativeSet d hNonunit hq hk

/-- The exceptional frequency is not contained in the partner image. -/
theorem exceptional_not_mem_partnerImage
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoKernelFrequency d ∉
      (twoKernelRegularOrbitRepresentativeSet d).image
        (twoKernelPartner d) := by
  intro hmem
  rcases Finset.mem_image.mp hmem with ⟨k, hk, hpartner⟩
  have hzero : k = 0 := by
    calc
      k = twoKernelPartner d (twoKernelPartner d k) :=
        (twoKernelPartner_involutive d hNonunit k).symm
      _ = twoKernelPartner d (twoKernelFrequency d) :=
        congrArg (twoKernelPartner d) hpartner
      _ = 0 := twoKernelPartner_kernel_eq_zero d hNonunit
  exact representative_ne_zero hk hzero

/-- Generic exact sum decomposition over the original nonzero-frequency set. -/
theorem sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits
    {M : Type*} [AddCommMonoid M]
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (f : ZMod (d * d) → M) :
    (∑ k ∈ nonzeroSquareModulusFrequencySet d, f k) =
      f (twoKernelFrequency d) +
        ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
          (f k + f (twoKernelPartner d k)) := by
  classical
  rw [nonzeroFrequencySet_eq_exceptional_union_regularOrbits d hNonunit]
  rw [Finset.sum_insert]
  · rw [Finset.sum_union
      (representativeSet_disjoint_partnerImage d hNonunit)]
    rw [Finset.sum_image]
    · rw [← Finset.sum_add_distrib]
    · intro x _hx y _hy hxy
      exact twoKernelPartner_injective d hNonunit hxy
  · intro hmem
    rcases Finset.mem_union.mp hmem with hrep | himage
    · exact exceptional_not_mem_representativeSet d hNonunit hrep
    · exact exceptional_not_mem_partnerImage d hNonunit himage

/-- The doubled exceptional frequency is zero. -/
theorem doubledSquareModulusFrequency_kernel_eq_zero
    (d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    doubledSquareModulusFrequency d (twoKernelFrequency d) = 0 := by
  unfold doubledSquareModulusFrequency
  exact twoKernelFrequency_add_self_eq_zero d hNonunit

/-- Exceptional aggregate at the nonzero kernel frequency. -/
def twoNonunitExceptionalKernelAggregate
    (b d r : ℕ) [NeZero d] : ℂ :=
  halfIndexAffineChowlaShiftAggregate b d r (twoKernelFrequency d)

/-- The exceptional aggregate is an order-two shift-character twist of the
zero base-frequency affine core. -/
theorem twoNonunitExceptionalKernelAggregate_eq_shiftCharacter
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoNonunitExceptionalKernelAggregate b d r =
      ∑ h ∈ positiveEndpointShiftSet b,
        twoKernelShiftCharacter d h *
          halfIndexAffineChowlaCore b d r h 0 := by
  unfold twoNonunitExceptionalKernelAggregate
    halfIndexAffineChowlaShiftAggregate
    affineChowlaShiftPhase twoKernelShiftCharacter
  apply Finset.sum_congr rfl
  intro h _hh
  rw [doubledSquareModulusFrequency_kernel_eq_zero d hNonunit]

/-- Original frequency majorant at the exceptional kernel frequency. -/
def twoNonunitExceptionalKernelFrequencyMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (1 / 2 : ℝ) *
    (‖twoNonunitExceptionalKernelAggregate b d 0‖ +
      ‖twoNonunitExceptionalKernelAggregate b d 1‖)

/-- The exceptional majorant is exactly the inherited half-index majorant at
`H`. -/
theorem twoNonunitExceptionalKernelFrequencyMajorant_eq_halfIndex
    (b d : ℕ) [NeZero d] :
    twoNonunitExceptionalKernelFrequencyMajorant b d =
      halfIndexAffineChowlaFrequencyMajorant b d
        (twoKernelFrequency d) := by
  rfl

/-- Sufficient majorant for one complete regular orbit. -/
def twoNonunitRegularOrbitMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖twoKernelPairPlusAggregate b d 0 k‖ +
      ‖twoKernelPairMinusAggregate b d 0 k‖ +
      ‖twoKernelPairPlusAggregate b d 1 k‖ +
      ‖twoKernelPairMinusAggregate b d 1 k‖)

/-- One regular orbit's two original frequency contributions are bounded only
after the pair projectors have been formed. -/
theorem regularOrbit_frequencyPair_le_projectorMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    halfIndexAffineChowlaFrequencyMajorant b d k +
        halfIndexAffineChowlaFrequencyMajorant b d
          (twoKernelPartner d k) ≤
      twoNonunitRegularOrbitMajorant b d k := by
  have h0a := norm_add_le
    (twoKernelPairPlusAggregate b d 0 k)
    (twoKernelPairMinusAggregate b d 0 k)
  have h0b := norm_sub_le
    (twoKernelPairPlusAggregate b d 0 k)
    (twoKernelPairMinusAggregate b d 0 k)
  have h1a := norm_add_le
    (twoKernelPairPlusAggregate b d 1 k)
    (twoKernelPairMinusAggregate b d 1 k)
  have h1b := norm_sub_le
    (twoKernelPairPlusAggregate b d 1 k)
    (twoKernelPairMinusAggregate b d 1 k)
  unfold halfIndexAffineChowlaFrequencyMajorant
  rw [halfIndexAggregate_eq_half_pairPlus_add_pairMinus,
    halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus,
    halfIndexAggregate_eq_half_pairPlus_add_pairMinus,
    halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus]
  unfold twoNonunitRegularOrbitMajorant
  simp only [norm_mul]
  norm_num at *
  nlinarith

/-- Exact decomposition of one two-nonunit modulus contribution into the
exceptional frequency and complete regular orbits. -/
def twoNonunitOrbitDecomposedModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    (twoNonunitExceptionalKernelFrequencyMajorant b d +
      ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        (halfIndexAffineChowlaFrequencyMajorant b d k +
          halfIndexAffineChowlaFrequencyMajorant b d
            (twoKernelPartner d k)))

/-- Exact equality with the original nonzero-frequency majorant on the
 two-nonunit branch. -/
theorem twoNonunitOrbitDecomposedModulusMajorant_eq_halfIndex
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    twoNonunitOrbitDecomposedModulusMajorant b d =
      halfIndexAffineChowlaNonzeroModulusMajorant b d := by
  unfold twoNonunitOrbitDecomposedModulusMajorant
    halfIndexAffineChowlaNonzeroModulusMajorant
  congr 1
  rw [twoNonunitExceptionalKernelFrequencyMajorant_eq_halfIndex]
  exact
    (sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits
      d hNonunit
      (halfIndexAffineChowlaFrequencyMajorant b d)).symm

/-- Representative-orbit sufficient majorant for one two-nonunit modulus. -/
def twoNonunitOrbitRepresentativeModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    (twoNonunitExceptionalKernelFrequencyMajorant b d +
      ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        twoNonunitRegularOrbitMajorant b d k)

/-- The exact two-nonunit modulus surface is bounded by the exceptional term
plus one projector majorant per regular orbit. -/
theorem halfIndexNonzeroModulusMajorant_le_orbitRepresentative
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    halfIndexAffineChowlaNonzeroModulusMajorant b d ≤
      twoNonunitOrbitRepresentativeModulusMajorant b d := by
  rw [← twoNonunitOrbitDecomposedModulusMajorant_eq_halfIndex
    b d hNonunit]
  unfold twoNonunitOrbitDecomposedModulusMajorant
    twoNonunitOrbitRepresentativeModulusMajorant
  apply mul_le_mul_of_nonneg_left ?_ (by positivity)
  apply add_le_add le_rfl
  apply Finset.sum_le_sum
  intro k _hk
  exact regularOrbit_frequencyPair_le_projectorMajorant b d k

/-- Endpoint contribution of the exceptional kernel frequency. -/
def twoNonunitExceptionalKernelEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          twoNonunitExceptionalKernelFrequencyMajorant b d
      else 0
    else 0

/-- Endpoint contribution from one canonical representative per regular
kernel orbit. -/
def twoNonunitRegularOrbitEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          ∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitRegularOrbitMajorant b d k
      else 0
    else 0

/-- The original two-nonunit endpoint surface is bounded by the separated
exceptional and regular-orbit surfaces. -/
theorem twoNonunitHalfIndexEndpointMajorant_le_exceptional_add_regular
    (b : ℕ) :
    twoNonunitHalfIndexAffineChowlaEndpointMajorant b ≤
      twoNonunitExceptionalKernelEndpointMajorant b +
        twoNonunitRegularOrbitEndpointMajorant b := by
  unfold twoNonunitHalfIndexAffineChowlaEndpointMajorant
    twoNonunitExceptionalKernelEndpointMajorant
    twoNonunitRegularOrbitEndpointMajorant
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hTwo : TwoUnitSquareModulusParameter d
  · simp [hTwo, TwoNonunitSquareModulusParameter]
  · have hNonunit : TwoNonunitSquareModulusParameter d := hTwo
    simp only [hTwo, hNonunit, ↓reduceDIte]
    simpa only [twoNonunitOrbitRepresentativeModulusMajorant, mul_add] using
      halfIndexNonzeroModulusMajorant_le_orbitRepresentative b d hNonunit

/-- Natural-scale supplier for the exceptional kernel frequency. -/
def DyadicNaturalScaleTwoNonunitExceptionalKernelBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitExceptionalKernelEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Natural-scale supplier for the regular orbit representatives. -/
def DyadicNaturalScaleTwoNonunitRegularOrbitBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularOrbitEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exceptional and regular-orbit suppliers together recover the original
 two-nonunit half-index budget. -/
theorem twoNonunitHalfIndexBudget_of_exceptional_and_regular
    (hExceptional :
      DyadicNaturalScaleTwoNonunitExceptionalKernelBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleTwoNonunitHalfIndexBudget := by
  intro δ hδ
  obtain ⟨C₀, hC₀, h₀⟩ := hExceptional δ hδ
  obtain ⟨C₁, hC₁, h₁⟩ := hRegular δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b hb
  exact
    (twoNonunitHalfIndexEndpointMajorant_le_exceptional_add_regular b).trans
      ((add_le_add (h₀ j b hb) (h₁ j b hb)).trans_eq (by ring))

/-- Downstream composition with the independent zero mode and two-unit branch. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_orbitSplit
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hExceptional :
      DyadicNaturalScaleTwoNonunitExceptionalKernelBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches
    hPoint hUnit
    (twoNonunitHalfIndexBudget_of_exceptional_and_regular
      hExceptional hRegular)

/-- Proof-producing adapter for the exceptional frequency supplier. -/
structure ToTwoNonunitExceptionalKernelBudgetAdapter
    (source : Prop) : Type where
  toExceptionalBudget :
    source → DyadicNaturalScaleTwoNonunitExceptionalKernelBudget

/-- Proof-producing adapter for the regular-orbit supplier. -/
structure ToTwoNonunitRegularOrbitBudgetAdapter
    (source : Prop) : Type where
  toRegularBudget :
    source → DyadicNaturalScaleTwoNonunitRegularOrbitBudget

/-- Conservative analytic profile for the exceptional `{0,H}` orbit. -/
structure TwoNonunitExceptionalKernelAnalyticData where
  theoremStatement : Prop
  evenSquareModuliMatched : Prop
  kernelFrequencyRetained : Prop
  zeroBaseFrequencyCoreMatched : Prop
  orderTwoShiftCharacterMatched : Prop
  bothParityClassesMatched : Prop
  endpointModulusAggregationMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Conservative source proposition for the exceptional orbit. -/
def TwoNonunitExceptionalKernelAnalyticSource
    (d : TwoNonunitExceptionalKernelAnalyticData) : Prop :=
  d.theoremStatement ∧
    d.evenSquareModuliMatched ∧
    d.kernelFrequencyRetained ∧
    d.zeroBaseFrequencyCoreMatched ∧
    d.orderTwoShiftCharacterMatched ∧
    d.bothParityClassesMatched ∧
    d.endpointModulusAggregationMatched ∧
    d.naturalScaleNormalizationMatched

abbrev TwoNonunitExceptionalKernelAnalyticAdapter
    (d : TwoNonunitExceptionalKernelAnalyticData) :=
  ToTwoNonunitExceptionalKernelBudgetAdapter
    (TwoNonunitExceptionalKernelAnalyticSource d)

/-- Conservative analytic profile for regular order-two kernel orbits. -/
structure TwoNonunitRegularOrbitAnalyticData where
  theoremStatement : Prop
  canonicalRepresentativesMatched : Prop
  completeRegularOrbitCoverage : Prop
  exceptionalOrbitExcludedAndHandledSeparately : Prop
  pairProjectorCancellationRetained : Prop
  orderTwoShiftCharacterMatched : Prop
  bothParityClassesMatched : Prop
  endpointFrequencyModulusAggregationMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Conservative source proposition for the regular orbit family. -/
def TwoNonunitRegularOrbitAnalyticSource
    (d : TwoNonunitRegularOrbitAnalyticData) : Prop :=
  d.theoremStatement ∧
    d.canonicalRepresentativesMatched ∧
    d.completeRegularOrbitCoverage ∧
    d.exceptionalOrbitExcludedAndHandledSeparately ∧
    d.pairProjectorCancellationRetained ∧
    d.orderTwoShiftCharacterMatched ∧
    d.bothParityClassesMatched ∧
    d.endpointFrequencyModulusAggregationMatched ∧
    d.naturalScaleNormalizationMatched

abbrev TwoNonunitRegularOrbitAnalyticAdapter
    (d : TwoNonunitRegularOrbitAnalyticData) :=
  ToTwoNonunitRegularOrbitBudgetAdapter
    (TwoNonunitRegularOrbitAnalyticSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitExceptionalKernelAggregate_eq_shiftCharacter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoNonunitHalfIndexBudget_of_exceptional_and_regular
