/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #814. Direct stacked parent: draft PR #811 at exact head
`483924a9acf11f5a5630db4050b643b4c98cd599`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingUnification

/-!
# Finite endpoint range for centered winding

Every realized half-index collision center lies in `[0,b]`.  Therefore a
centered winding

`c₂ - c₁ = z*d^2`

satisfies the sharp endpoint displacement bound

`|z*d^2| ≤ b`.

This module records that finite geometry and packages the realized winding
parameters into a finite modulus-dependent candidate set.

No analytic estimate or cardinal asymptotic is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Every exact half-index collision center lies below the endpoint. -/
theorem halfIndexZeroWindingCoordinate_le_endpoint
    {b r h m : ℕ}
    (hm : m ∈ zeroWindingHalfIndexBaseSet b r h) :
    halfIndexZeroWindingCoordinate m h ≤ b := by
  have hlt := halfIndexZeroWindingCoordinate_lt_endpoint hm
  omega

/-- Endpoint bounds force the centered displacement into the integer interval
`[-b,b]`. -/
theorem centeredDisplacement_bounds
    {b c₁ c₂ : ℕ}
    (hc₁ : c₁ ≤ b)
    (hc₂ : c₂ ≤ b) :
    -(b : ℤ) ≤ (c₂ : ℤ) - (c₁ : ℤ) ∧
      (c₂ : ℤ) - (c₁ : ℤ) ≤ (b : ℤ) := by
  have hc₁' : (c₁ : ℤ) ≤ (b : ℤ) := by exact_mod_cast hc₁
  have hc₂' : (c₂ : ℤ) ≤ (b : ℤ) := by exact_mod_cast hc₂
  have hc₁nonneg : 0 ≤ (c₁ : ℤ) := by positivity
  have hc₂nonneg : 0 ≤ (c₂ : ℤ) := by positivity
  constructor <;> linarith

/-- A realized winding has square-modulus displacement of magnitude at most the
endpoint. -/
theorem centeredSquareModulusWinding_abs_displacement_le_endpoint
    (b d c₁ c₂ : ℕ) [NeZero d]
    {z : ℤ}
    (hc₁ : c₁ ≤ b)
    (hc₂ : c₂ ≤ b)
    (hw : CenteredSquareModulusWinding d c₁ c₂ z) :
    |(((d * d : ℕ) : ℤ) * z)| ≤ (b : ℤ) := by
  obtain ⟨hlower, hupper⟩ :=
    centeredDisplacement_bounds hc₁ hc₂
  unfold CenteredSquareModulusWinding at hw
  rw [← hw]
  exact abs_le.mpr ⟨hlower, hupper⟩

/-- The winding integer itself lies in the coarse interval `[-b,b]`.

The sharper retained condition is `|z*d^2| ≤ b`. -/
theorem centeredSquareModulusWinding_coarse_bounds
    (b d c₁ c₂ : ℕ) [NeZero d]
    {z : ℤ}
    (hc₁ : c₁ ≤ b)
    (hc₂ : c₂ ≤ b)
    (hw : CenteredSquareModulusWinding d c₁ c₂ z) :
    -(b : ℤ) ≤ z ∧ z ≤ (b : ℤ) := by
  have hdisp :=
    centeredSquareModulusWinding_abs_displacement_le_endpoint
      b d c₁ c₂ hc₁ hc₂ hw
  have hqNat : 1 ≤ d * d := by
    exact Nat.one_le_iff_ne_zero.mpr
      (mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  have hq : (1 : ℤ) ≤ (((d * d : ℕ) : ℤ)) := by
    exact_mod_cast hqNat
  have hqnonneg : 0 ≤ (((d * d : ℕ) : ℤ)) := by
    linarith
  have habs :
      |(((d * d : ℕ) : ℤ) * z)| =
        (((d * d : ℕ) : ℤ)) * |z| := by
    rw [abs_mul, abs_of_nonneg hqnonneg]
  rw [habs] at hdisp
  have hzabs : |z| ≤ (b : ℤ) := by
    nlinarith [abs_nonneg z]
  exact abs_le.mp hzabs

/-- Finite candidate set of winding integers at endpoint `b` and square
modulus `d^2`.

The interval is only a finite carrier; the filter retains the sharp
modulus-dependent displacement condition. -/
def centeredWindingCandidateSet
    (b d : ℕ) [NeZero d] : Finset ℤ :=
  (Finset.Icc (-(b : ℤ)) (b : ℤ)).filter fun z =>
    |(((d * d : ℕ) : ℤ) * z)| ≤ (b : ℤ)

/-- Every endpoint-bounded centered winding belongs to the finite candidate
set. -/
theorem centeredSquareModulusWinding_mem_candidateSet
    (b d c₁ c₂ : ℕ) [NeZero d]
    {z : ℤ}
    (hc₁ : c₁ ≤ b)
    (hc₂ : c₂ ≤ b)
    (hw : CenteredSquareModulusWinding d c₁ c₂ z) :
    z ∈ centeredWindingCandidateSet b d := by
  unfold centeredWindingCandidateSet
  apply Finset.mem_filter.mpr
  constructor
  · exact Finset.mem_Icc.mpr
      (centeredSquareModulusWinding_coarse_bounds
        b d c₁ c₂ hc₁ hc₂ hw)
  · exact
      centeredSquareModulusWinding_abs_displacement_le_endpoint
        b d c₁ c₂ hc₁ hc₂ hw

/-- Every winding realized by two exact half-index supports lies in the finite
candidate set. -/
theorem realizedHalfIndexWinding_mem_candidateSet
    (b d r h g m n : ℕ) [NeZero d]
    {z : ℤ}
    (hm : m ∈ zeroWindingHalfIndexBaseSet b r h)
    (hn : n ∈ zeroWindingHalfIndexBaseSet b r g)
    (hw :
      CenteredSquareModulusWinding d
        (halfIndexZeroWindingCoordinate m h)
        (halfIndexZeroWindingCoordinate n g) z) :
    z ∈ centeredWindingCandidateSet b d := by
  exact
    centeredSquareModulusWinding_mem_candidateSet
      b d
      (halfIndexZeroWindingCoordinate m h)
      (halfIndexZeroWindingCoordinate n g)
      (halfIndexZeroWindingCoordinate_le_endpoint hm)
      (halfIndexZeroWindingCoordinate_le_endpoint hn)
      hw

/-- Conservative source profile for any theorem exploiting the finite winding
range. -/
structure RegularCenteredWindingFiniteRangeSourceData where
  theoremStatement : Prop
  endpointCenterBoundsMatched : Prop
  sharpDisplacementBoundMatched : Prop
  finiteCandidateSetMatched : Prop
  squareModulusDependenceMatched : Prop
  zeroWindingIncluded : Prop
  nonzeroWindingIncluded : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingFiniteRangeSource
    (d : RegularCenteredWindingFiniteRangeSourceData) : Prop :=
  d.theoremStatement ∧
    d.endpointCenterBoundsMatched ∧
    d.sharpDisplacementBoundMatched ∧
    d.finiteCandidateSetMatched ∧
    d.squareModulusDependenceMatched ∧
    d.zeroWindingIncluded ∧
    d.nonzeroWindingIncluded ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexZeroWindingCoordinate_le_endpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredSquareModulusWinding_abs_displacement_le_endpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredSquareModulusWinding_mem_candidateSet
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.realizedHalfIndexWinding_mem_candidateSet
