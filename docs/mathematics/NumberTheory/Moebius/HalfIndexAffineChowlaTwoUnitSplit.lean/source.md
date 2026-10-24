# Complete source: GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoUnitSplit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `791e4238fb1bb06bed50920b4787f79f26e49705` · SHA-256 `32316532aa500a148b79c76b412784722950a05f79bf65341a511a72aa617863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #642. Direct stacked parent: draft PR #637 at
`b8f4f643424aa25c775fbd246cd368481d1e68de`.
-/
import GRWTSK.NumberTheory.Moebius.GrowingShiftAffineChowlaHalfIndex
import Mathlib.Data.ZMod.Units

/-!
# Two-unit and two-nonunit square-modulus frequency split

The half-index normalization from PR #637 exposes the doubled frequency

`k ↦ 2*k` in `ZMod (d*d)`.

Multiplication by two is an equivalence exactly on the square-modulus
parameters for which `2` is a unit.  This module reindexes the complete
nonzero-frequency sum on that branch and isolates the complementary branch
without dropping it.

The formal branch predicate is

`Nat.Coprime 2 (d*d)`.

Mathematically this is the odd-`d` branch.  The complementary branch contains
the even square moduli and retains the original doubled-frequency surface.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The square-modulus parameters on which multiplication by two is a unit. -/
def TwoUnitSquareModulusParameter (d : ℕ) : Prop :=
  Nat.Coprime 2 (d * d)

instance (d : ℕ) : Decidable (TwoUnitSquareModulusParameter d) :=
  inferInstanceAs (Decidable (Nat.Coprime 2 (d * d)))

/-- Inverse frequency for the multiplication-by-two map. -/
def halfSquareModulusFrequency
    (d : ℕ) [NeZero d]
    (ell : ZMod (d * d)) : ZMod (d * d) :=
  (2 : ZMod (d * d))⁻¹ * ell

/-- The element two is a unit on the declared branch. -/
theorem two_isUnit_squareModulus
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d) :
    IsUnit (2 : ZMod (d * d)) := by
  exact (ZMod.isUnit_iff_coprime 2 (d * d)).2 hTwo

/-- Doubling after halving recovers the original frequency on the two-unit
branch. -/
theorem doubled_halfSquareModulusFrequency
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    doubledSquareModulusFrequency d
        (halfSquareModulusFrequency d ell) = ell := by
  have hunit := two_isUnit_squareModulus d hTwo
  have hmul :
      (2 : ZMod (d * d)) * (2 : ZMod (d * d))⁻¹ = 1 :=
    ZMod.mul_inv_of_unit _ hunit
  unfold doubledSquareModulusFrequency halfSquareModulusFrequency
  calc
    (2 : ZMod (d * d))⁻¹ * ell +
        (2 : ZMod (d * d))⁻¹ * ell =
      (2 : ZMod (d * d)) *
        ((2 : ZMod (d * d))⁻¹ * ell) := by ring
    _ = ((2 : ZMod (d * d)) *
          (2 : ZMod (d * d))⁻¹) * ell := by ring
    _ = ell := by rw [hmul, one_mul]

/-- Halving after doubling recovers the original frequency on the two-unit
branch. -/
theorem half_doubledSquareModulusFrequency
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    halfSquareModulusFrequency d
        (doubledSquareModulusFrequency d k) = k := by
  have hunit := two_isUnit_squareModulus d hTwo
  have hmul :
      (2 : ZMod (d * d))⁻¹ * (2 : ZMod (d * d)) = 1 :=
    ZMod.inv_mul_of_unit _ hunit
  unfold doubledSquareModulusFrequency halfSquareModulusFrequency
  calc
    (2 : ZMod (d * d))⁻¹ * (k + k) =
      ((2 : ZMod (d * d))⁻¹ *
        (2 : ZMod (d * d))) * k := by ring
    _ = k := by rw [hmul, one_mul]

/-- Frequency doubling as an equivalence on the two-unit branch. -/
def doubledSquareModulusFrequencyEquiv
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d) :
    ZMod (d * d) ≃ ZMod (d * d) where
  toFun := doubledSquareModulusFrequency d
  invFun := halfSquareModulusFrequency d
  left_inv := half_doubledSquareModulusFrequency d hTwo
  right_inv := doubled_halfSquareModulusFrequency d hTwo

/-- Doubling preserves the zero/nonzero frequency split on the two-unit
branch. -/
theorem doubledSquareModulusFrequency_ne_zero_iff
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    doubledSquareModulusFrequency d k ≠ 0 ↔ k ≠ 0 := by
  constructor
  · intro hdouble hk
    subst k
    exact hdouble (by simp [doubledSquareModulusFrequency])
  · intro hk hdouble
    apply hk
    apply (doubledSquareModulusFrequencyEquiv d hTwo).injective
    change doubledSquareModulusFrequency d k = doubledSquareModulusFrequency d 0
    simpa only [doubledSquareModulusFrequency, add_zero] using hdouble

/-- The inverse half-frequency also preserves nonzero frequencies. -/
theorem halfSquareModulusFrequency_ne_zero_iff
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    halfSquareModulusFrequency d ell ≠ 0 ↔ ell ≠ 0 := by
  constructor
  · intro hhalf hell
    subst ell
    exact hhalf (by simp [halfSquareModulusFrequency])
  · intro hell hhalf
    apply hell
    have h := congrArg (doubledSquareModulusFrequency d) hhalf
    rw [doubled_halfSquareModulusFrequency d hTwo] at h
    simpa only [doubledSquareModulusFrequency, add_zero] using h

/-- Shift aggregate indexed by the undoubled frequency `ell` on the two-unit
branch.

The shift phase uses the unique half-frequency, while the fixed-form core is
sampled at `ell` itself. -/
def twoUnitHalfIndexAffineChowlaShiftAggregate
    (b d r : ℕ) [NeZero d]
    (_hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) : ℂ :=
  ∑ h ∈ positiveEndpointShiftSet b,
    affineChowlaShiftPhase d h
        (halfSquareModulusFrequency d ell) *
      halfIndexAffineChowlaCore b d r h ell

/-- Exact equality between the old doubled-frequency aggregate at the inverse
frequency and the two-unit normalized aggregate. -/
theorem halfIndexAffineChowlaShiftAggregate_half_eq_twoUnit
    (b d r : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    halfIndexAffineChowlaShiftAggregate b d r
        (halfSquareModulusFrequency d ell) =
      twoUnitHalfIndexAffineChowlaShiftAggregate b d r hTwo ell := by
  unfold halfIndexAffineChowlaShiftAggregate
    twoUnitHalfIndexAffineChowlaShiftAggregate
  apply Finset.sum_congr rfl
  intro h _hh
  rw [doubled_halfSquareModulusFrequency d hTwo ell]

/-- Pointwise frequency majorant in the undoubled two-unit normalization. -/
def twoUnitHalfIndexAffineChowlaFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖twoUnitHalfIndexAffineChowlaShiftAggregate b d 0 hTwo ell‖ +
      ‖twoUnitHalfIndexAffineChowlaShiftAggregate b d 1 hTwo ell‖)

/-- Pointwise equality with the original half-index majorant at the inverse
frequency. -/
theorem twoUnitHalfIndexAffineChowlaFrequencyMajorant_eq_half
    (b d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    twoUnitHalfIndexAffineChowlaFrequencyMajorant b d hTwo ell =
      halfIndexAffineChowlaFrequencyMajorant b d
        (halfSquareModulusFrequency d ell) := by
  unfold twoUnitHalfIndexAffineChowlaFrequencyMajorant
    halfIndexAffineChowlaFrequencyMajorant
  rw [halfIndexAffineChowlaShiftAggregate_half_eq_twoUnit
      b d 0 hTwo ell,
    halfIndexAffineChowlaShiftAggregate_half_eq_twoUnit
      b d 1 hTwo ell]

/-- Complete normalized nonzero-frequency majorant on one two-unit square
modulus, indexed by the undoubled frequency. -/
def twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant
    (b d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d) : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ ell ∈ nonzeroSquareModulusFrequencySet d,
      twoUnitHalfIndexAffineChowlaFrequencyMajorant b d hTwo ell

/-- Exact nonzero-frequency reindexing on the two-unit branch. -/
theorem twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex
    (b d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d) :
    twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant b d hTwo =
      halfIndexAffineChowlaNonzeroModulusMajorant b d := by
  unfold twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant
    halfIndexAffineChowlaNonzeroModulusMajorant
  apply congrArg
  apply Finset.sum_bij'
    (fun ell _hell => halfSquareModulusFrequency d ell)
    (fun k _hk => doubledSquareModulusFrequency d k)
  · intro ell hell
    have hell0 : ell ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hell
    have hhalf0 :=
      (halfSquareModulusFrequency_ne_zero_iff d hTwo ell).2 hell0
    simpa [nonzeroSquareModulusFrequencySet] using hhalf0
  · intro k hk
    have hk0 : k ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hk
    have hdouble0 :=
      (doubledSquareModulusFrequency_ne_zero_iff d hTwo k).2 hk0
    simpa [nonzeroSquareModulusFrequencySet] using hdouble0
  · intro ell _hell
    exact doubled_halfSquareModulusFrequency d hTwo ell
  · intro k _hk
    exact half_doubledSquareModulusFrequency d hTwo k
  · intro ell _hell
    exact
      twoUnitHalfIndexAffineChowlaFrequencyMajorant_eq_half
        b d hTwo ell

/-- Endpoint contribution from square-modulus parameters on which two is a
unit. -/
def twoUnitHalfIndexAffineChowlaEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if hTwo : TwoUnitSquareModulusParameter d then
        twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant b d hTwo
      else 0
    else 0

/-- Complementary endpoint contribution from square-modulus parameters on
which two is not a unit.  The original half-index surface is retained. -/
def twoNonunitHalfIndexAffineChowlaEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hTwo : TwoUnitSquareModulusParameter d then
        0
      else halfIndexAffineChowlaNonzeroModulusMajorant b d
    else 0

/-- Exact endpoint decomposition into the two-unit and two-nonunit square
modulus branches. -/
theorem halfIndexAffineChowlaEndpointMajorant_eq_twoUnit_add_twoNonunit
    (b : ℕ) :
    halfIndexAffineChowlaEndpointMajorant b =
      twoUnitHalfIndexAffineChowlaEndpointMajorant b +
        twoNonunitHalfIndexAffineChowlaEndpointMajorant b := by
  unfold halfIndexAffineChowlaEndpointMajorant
    twoUnitHalfIndexAffineChowlaEndpointMajorant
    twoNonunitHalfIndexAffineChowlaEndpointMajorant
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hTwo : TwoUnitSquareModulusParameter d
  · simp only [hTwo, dif_pos]
    rw [twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex
      b d hTwo]
    ring
  · simp [hTwo]

/-- Natural-scale supplier for the reindexed two-unit branch. -/
def DyadicNaturalScaleTwoUnitHalfIndexBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoUnitHalfIndexAffineChowlaEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Natural-scale supplier for the complementary two-nonunit branch. -/
def DyadicNaturalScaleTwoNonunitHalfIndexBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitHalfIndexAffineChowlaEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The two exact modulus branches recombine to the live half-index supplier. -/
theorem dyadicNaturalScaleHalfIndexBudget_of_twoUnit_and_twoNonunit
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hNonunit : DyadicNaturalScaleTwoNonunitHalfIndexBudget) :
    DyadicNaturalScaleHalfIndexAffineChowlaBudget := by
  intro δ hδ
  obtain ⟨C₁, hC₁, h₁⟩ := hUnit δ hδ
  obtain ⟨C₂, hC₂, h₂⟩ := hNonunit δ hδ
  refine ⟨C₁ + C₂, add_nonneg hC₁ hC₂, ?_⟩
  intro j b hb
  rw [halfIndexAffineChowlaEndpointMajorant_eq_twoUnit_add_twoNonunit]
  have hu := h₁ j b hb
  have hn := h₂ j b hb
  nlinarith

/-- Downstream composition with the independent pointwise-Mertens zero-mode
premise. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hNonunit : DyadicNaturalScaleTwoNonunitHalfIndexBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla
    hPoint
    (dyadicNaturalScaleHalfIndexBudget_of_twoUnit_and_twoNonunit
      hUnit hNonunit)

/-- Proof-producing source adapter for the two-unit branch. -/
structure ToTwoUnitHalfIndexBudgetAdapter
    (source : Prop) : Type where
  toBudget : source → DyadicNaturalScaleTwoUnitHalfIndexBudget

/-- Proof-producing source adapter for the two-nonunit residual branch. -/
structure ToTwoNonunitHalfIndexBudgetAdapter
    (source : Prop) : Type where
  toBudget : source → DyadicNaturalScaleTwoNonunitHalfIndexBudget

/-- Fixed-form input profile for the branch where frequency doubling is an
actual equivalence. -/
structure FixedFormTwoUnitHalfIndexData where
  theoremStatement : Prop
  literalAffineFormsCovered : Prop
  additiveTwistCompatibility : Prop
  growingShiftUniformity : Prop
  growingSquareModulusUniformity : Prop
  allNonzeroFrequenciesCovered : Prop
  parityEndpointCoverage : Prop
  endpointFrequencyModulusAggregation : Prop
  oneConstantPerExponent : Prop

/-- Conservative source proposition for fixed-form input on the two-unit
branch. -/
def FixedFormTwoUnitHalfIndexSource
    (d : FixedFormTwoUnitHalfIndexData) : Prop :=
  d.theoremStatement ∧
    d.literalAffineFormsCovered ∧
    d.additiveTwistCompatibility ∧
    d.growingShiftUniformity ∧
    d.growingSquareModulusUniformity ∧
    d.allNonzeroFrequenciesCovered ∧
    d.parityEndpointCoverage ∧
    d.endpointFrequencyModulusAggregation ∧
    d.oneConstantPerExponent

abbrev FixedFormTwoUnitHalfIndexAdapter
    (d : FixedFormTwoUnitHalfIndexData) :=
  ToTwoUnitHalfIndexBudgetAdapter
    (FixedFormTwoUnitHalfIndexSource d)

/-- Explicit residual boundary for the branch where frequency doubling is not
invertible. -/
structure TwoNonunitFrequencyResidualBoundary where
  sourceStatement : Prop
  conductorOrTwoAdicStratification : Prop
  doubledFrequencyImageControl : Prop
  kernelMultiplicityControl : Prop
  signedShiftCancellationRetained : Prop
  exactEndpointAggregation : Prop

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.doubled_halfSquareModulusFrequency
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexAffineChowlaEndpointMajorant_eq_twoUnit_add_twoNonunit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches
```
