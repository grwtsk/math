/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #810. Direct stacked parent: draft PR #808 at exact head
`eb94468dd790c5e17776f513b28a2a8f3b6ced6b`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitWrapCenteredWinding

/-!
# Unified centered winding relation

The regular branch has two centered correlation regimes:

* zero winding: the two centers coincide;
* wrap: the centers differ by a nonzero multiple of `d^2`.

This module packages both regimes into one exact integer displacement relation

`c₂ - c₁ = z * d^2`.

For fixed nonzero `d` and centers, the winding `z` is unique.
The case `z=0` is exactly the zero-winding branch, while `z≠0`
is exactly the genuine modular-wrap branch.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact centered winding relation at square modulus `d^2`. -/
def CenteredSquareModulusWinding
    (d c₁ c₂ : ℕ) [NeZero d]
    (z : ℤ) : Prop :=
  (c₂ : ℤ) - (c₁ : ℤ) =
    ((d * d : ℕ) : ℤ) * z

/-- The winding parameter is unique for fixed centers and nonzero modulus. -/
theorem centeredSquareModulusWinding_unique
    (d c₁ c₂ : ℕ) [NeZero d]
    {z₁ z₂ : ℤ}
    (h₁ : CenteredSquareModulusWinding d c₁ c₂ z₁)
    (h₂ : CenteredSquareModulusWinding d c₁ c₂ z₂) :
    z₁ = z₂ := by
  unfold CenteredSquareModulusWinding at h₁ h₂
  have hmul :
      ((d * d : ℕ) : ℤ) * z₁ =
        ((d * d : ℕ) : ℤ) * z₂ := by
    exact h₁.symm.trans h₂
  have hd : (((d * d : ℕ) : ℤ)) ≠ 0 := by
    exact_mod_cast (mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  exact mul_left_cancel₀ hd hmul

/-- Zero winding is exactly equality of the two centers. -/
theorem centeredSquareModulusWinding_zero_iff
    (d c₁ c₂ : ℕ) [NeZero d] :
    CenteredSquareModulusWinding d c₁ c₂ 0 ↔
      c₁ = c₂ := by
  unfold CenteredSquareModulusWinding
  constructor
  · intro h
    simp only [mul_zero] at h
    have hcast : (c₂ : ℤ) = (c₁ : ℤ) := by
      linarith
    exact_mod_cast hcast.symm
  · intro h
    subst c₂
    simp

/-- Any winding relation implies congruence of the centers modulo `d^2`. -/
theorem centeredSquareModulusWinding_modEq
    (d c₁ c₂ : ℕ) [NeZero d]
    {z : ℤ}
    (h : CenteredSquareModulusWinding d c₁ c₂ z) :
    c₁ ≡ c₂ [MOD d * d] := by
  rw [Nat.modEq_iff_dvd]
  refine ⟨z, ?_⟩
  simpa [CenteredSquareModulusWinding] using h

/-- A nonzero winding forces distinct centers. -/
theorem centeredSquareModulusWinding_ne
    (d c₁ c₂ : ℕ) [NeZero d]
    {z : ℤ}
    (hz : z ≠ 0)
    (h : CenteredSquareModulusWinding d c₁ c₂ z) :
    c₁ ≠ c₂ := by
  intro heq
  have hzero :
      CenteredSquareModulusWinding d c₁ c₂ 0 := by
    exact (centeredSquareModulusWinding_zero_iff d c₁ c₂).2 heq
  exact hz (centeredSquareModulusWinding_unique d c₁ c₂ h hzero)

/-- Congruent but unequal centers admit a unique nonzero winding. -/
theorem modEq_ne_exists_unique_nonzero_winding
    (d c₁ c₂ : ℕ) [NeZero d]
    (hmod : c₁ ≡ c₂ [MOD d * d])
    (hne : c₁ ≠ c₂) :
    ∃! z : ℤ,
      z ≠ 0 ∧
        CenteredSquareModulusWinding d c₁ c₂ z := by
  rcases Nat.modEq_iff_dvd.mp hmod with ⟨z, hz⟩
  have hw :
      CenteredSquareModulusWinding d c₁ c₂ z := by
    exact hz
  have hzne : z ≠ 0 := by
    intro hz0
    subst z
    exact hne
      ((centeredSquareModulusWinding_zero_iff d c₁ c₂).1 hw)
  refine ⟨z, ⟨hzne, hw⟩, ?_⟩
  intro z' hz'
  exact centeredSquareModulusWinding_unique d c₁ c₂ hz'.2 hw

/-- Exact equivalence between the nonzero-winding relation and the old
congruent-but-unequal wrap condition. -/
theorem exists_nonzero_winding_iff_wrap
    (d c₁ c₂ : ℕ) [NeZero d] :
    (∃ z : ℤ,
      z ≠ 0 ∧
        CenteredSquareModulusWinding d c₁ c₂ z) ↔
      c₁ ≡ c₂ [MOD d * d] ∧
        c₁ ≠ c₂ := by
  constructor
  · rintro ⟨z, hz, hw⟩
    exact ⟨
      centeredSquareModulusWinding_modEq d c₁ c₂ hw,
      centeredSquareModulusWinding_ne d c₁ c₂ hz hw⟩
  · intro h
    rcases modEq_ne_exists_unique_nonzero_winding d c₁ c₂ h.1 h.2 with
      ⟨z, hz, _huniq⟩
    exact ⟨z, hz⟩

/-- Master centered quartic Möbius coefficient for two centers and their
symmetric half-shifts. -/
def centeredWindingMobiusCoefficient
    (r c₁ h c₂ g : ℕ) : ℝ :=
  moebiusReal (c₁ - h + r) *
    moebiusReal (c₁ + h + r) *
    moebiusReal (c₂ - g + r) *
    moebiusReal (c₂ + g + r)

/-- The centered wrap coefficient is the master winding coefficient evaluated
at the two half-index centers. -/
theorem centeredWrapQuarticMobiusCoefficient_eq_winding
    (r m h n g : ℕ) :
    centeredWrapQuarticMobiusCoefficient r m h n g =
      centeredWindingMobiusCoefficient r
        (halfIndexZeroWindingCoordinate m h) h
        (halfIndexZeroWindingCoordinate n g) g := by
  rfl

/-- A half-index wrap collision supplies a unique nonzero centered winding. -/
theorem halfIndexWrap_exists_unique_centered_winding
    (d m h n g : ℕ) [NeZero d]
    (hwrap :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d])
    (hne :
      halfIndexZeroWindingCoordinate m h ≠
        halfIndexZeroWindingCoordinate n g) :
    ∃! z : ℤ,
      z ≠ 0 ∧
        CenteredSquareModulusWinding d
          (halfIndexZeroWindingCoordinate m h)
          (halfIndexZeroWindingCoordinate n g) z :=
  modEq_ne_exists_unique_nonzero_winding d
    (halfIndexZeroWindingCoordinate m h)
    (halfIndexZeroWindingCoordinate n g)
    hwrap hne

/-- Conservative source profile for one master centered displacement theorem
covering both zero and nonzero winding. -/
structure RegularCenteredWindingSourceData where
  theoremStatement : Prop
  exactSquareModulusDisplacementMatched : Prop
  windingUniquenessMatched : Prop
  zeroWindingSpecializationMatched : Prop
  nonzeroWindingSpecializationMatched : Prop
  firstSymmetricMobiusPairMatched : Prop
  secondSymmetricMobiusPairMatched : Prop
  mobiusQuarticSignsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingSource
    (d : RegularCenteredWindingSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactSquareModulusDisplacementMatched ∧
    d.windingUniquenessMatched ∧
    d.zeroWindingSpecializationMatched ∧
    d.nonzeroWindingSpecializationMatched ∧
    d.firstSymmetricMobiusPairMatched ∧
    d.secondSymmetricMobiusPairMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredSquareModulusWinding_unique
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredSquareModulusWinding_zero_iff
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.modEq_ne_exists_unique_nonzero_winding
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.exists_nonzero_winding_iff_wrap
