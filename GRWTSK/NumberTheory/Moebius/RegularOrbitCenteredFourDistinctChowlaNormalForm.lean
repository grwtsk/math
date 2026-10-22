/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #902. Parent: draft PR #891 at a3b342558abfa80e2743a1c54e8d4b0dcbacd7e8.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Four affine offsets after choosing the leftmost first-pair argument as the
common base. -/
def centeredFourMobiusOffsets
    (ell h g : ℕ) : Fin 4 → ℕ
  | ⟨0, _⟩ => 0
  | ⟨1, _⟩ => 2 * h
  | ⟨2, _⟩ => ell + h - g
  | ⟨3, _⟩ => ell + h + g

/-- Common base variable for the normalized four-shift form. -/
def centeredFourMobiusBase
    (c r h : ℕ) : ℕ :=
  c - h + r

theorem centeredFourMobius_arguments_normalize
    {c ell r h g : ℕ}
    (hhc : h ≤ c)
    (hgc : g ≤ c + ell) :
    centeredFourMobiusBase c r h +
        centeredFourMobiusOffsets ell h g 0 = c - h + r ∧
    centeredFourMobiusBase c r h +
        centeredFourMobiusOffsets ell h g 1 = c + h + r ∧
    centeredFourMobiusBase c r h +
        centeredFourMobiusOffsets ell h g 2 = c + ell - g + r ∧
    centeredFourMobiusBase c r h +
        centeredFourMobiusOffsets ell h g 3 = c + ell + g + r := by
  simp [centeredFourMobiusBase, centeredFourMobiusOffsets]
  omega

/-- Nondegeneracy plus positive shifts makes the four normalized offsets
pairwise distinct. -/
theorem centeredFourMobiusOffsets_injective
    {ell h g : ℕ}
    (hell : 0 < ell)
    (hh : 0 < h)
    (hg : 0 < g)
    (hnd : ¬ centeredAffineFourMobiusDegenerate ell h g) :
    Function.Injective (centeredFourMobiusOffsets ell h g) := by
  intro i j hij
  fin_cases i <;> fin_cases j <;>
    simp [centeredFourMobiusOffsets] at hij ⊢ <;>
    unfold centeredAffineFourMobiusDegenerate at hnd <;>
    omega

/-- Standard finite four-distinct Chowla datum. -/
structure FourDistinctChowlaDatum where
  base : ℕ
  offsets : Fin 4 → ℕ
  offsetsInjective : Function.Injective offsets

/-- The centered nondegenerate geometry canonically determines a standard
four-distinct Chowla datum. -/
def centeredFourDistinctChowlaDatum
    (c ell r h g : ℕ)
    (hell : 0 < ell)
    (hh : 0 < h)
    (hg : 0 < g)
    (hnd : ¬ centeredAffineFourMobiusDegenerate ell h g) :
    FourDistinctChowlaDatum where
  base := centeredFourMobiusBase c r h
  offsets := centeredFourMobiusOffsets ell h g
  offsetsInjective :=
    centeredFourMobiusOffsets_injective hell hh hg hnd

/-- Product of Möbius values on four distinct translated arguments. -/
def fourDistinctChowlaCoefficient
    (x : FourDistinctChowlaDatum) : ℝ :=
  ∏ i : Fin 4,
    ((ArithmeticFunction.moebius (x.base + x.offsets i) : ℤ) : ℝ)

/-- Explicit analytic premise for the four-distinct stratum. -/
def FourDistinctChowlaFiniteSupportEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, ∀ X : Finset FourDistinctChowlaDatum,
    X.card ≤ b → |∑ x ∈ X, fourDistinctChowlaCoefficient x| ≤ E b

/-- Conservative adapter profile from the centered nondegenerate stratum into
the standard four-distinct Chowla coordinate system. -/
structure CenteredToFourDistinctChowlaAdapterData where
  theoremStatement : Prop
  commonBaseMatched : Prop
  fourOffsetsMatched : Prop
  argumentsNormalized : Prop
  nondegenerateImpliesDistinctOffsets : Prop
  endpointSupportRetained : Prop
  shiftParityRetained : Prop
  windingLagRetained : Prop
  analyticPremiseExplicit : Prop
  binaryChowlaNotAssertedSufficient : Prop

def CenteredToFourDistinctChowlaAdapter
    (d : CenteredToFourDistinctChowlaAdapterData) : Prop :=
  d.theoremStatement ∧
  d.commonBaseMatched ∧
  d.fourOffsetsMatched ∧
  d.argumentsNormalized ∧
  d.nondegenerateImpliesDistinctOffsets ∧
  d.endpointSupportRetained ∧
  d.shiftParityRetained ∧
  d.windingLagRetained ∧
  d.analyticPremiseExplicit ∧
  d.binaryChowlaNotAssertedSufficient

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredFourMobius_arguments_normalize
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredFourMobiusOffsets_injective
