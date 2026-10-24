# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctChowlaNormalForm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c86b2260ef13e4ab4813717f396a9bcaf1e40ab2` · SHA-256 `b4c8b0eee921e88a05123e61be4da611c2bf7f547d1adbe17d429f9aee8b3cb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #902. Parent: draft PR #891 at a3b342558abfa80e2743a1c54e8d4b0dcbacd7e8.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Shift anchor placing the common base below both symmetric lower arguments. -/
def centeredFourMobiusShiftAnchor (ell h g : ℕ) : ℕ :=
  max h (g - ell)

/-- Four nonnegative offsets from the common lower base. -/
def centeredFourMobiusOffsets
    (ell h g : ℕ) : Fin 4 → ℕ
  | ⟨0, _⟩ => centeredFourMobiusShiftAnchor ell h g - h
  | ⟨1, _⟩ => centeredFourMobiusShiftAnchor ell h g + h
  | ⟨2, _⟩ => centeredFourMobiusShiftAnchor ell h g + ell - g
  | ⟨3, _⟩ => centeredFourMobiusShiftAnchor ell h g + ell + g

/-- Common base variable below both endpoint-admissible symmetric pairs. -/
def centeredFourMobiusBase
    (c r ell h g : ℕ) : ℕ :=
  c - centeredFourMobiusShiftAnchor ell h g + r

/-- The old first-pair base and truncated third offset do not preserve the
second lower argument, even for admissible positive nondegenerate shifts. -/
theorem firstPairBase_truncatedOffset_counterexample :
    ¬ ((5 - 1 + 0 : ℕ) + (1 + 1 - 4) = 5 + 1 - 4 + 0) := by
  decide

theorem centeredFourMobius_arguments_normalize
    {c ell r h g : ℕ}
    (hhc : h ≤ c)
    (hgc : g ≤ c + ell) :
    centeredFourMobiusBase c r ell h g +
        centeredFourMobiusOffsets ell h g 0 = c - h + r ∧
    centeredFourMobiusBase c r ell h g +
        centeredFourMobiusOffsets ell h g 1 = c + h + r ∧
    centeredFourMobiusBase c r ell h g +
        centeredFourMobiusOffsets ell h g 2 = c + ell - g + r ∧
    centeredFourMobiusBase c r ell h g +
        centeredFourMobiusOffsets ell h g 3 = c + ell + g + r := by
  simp only [centeredFourMobiusBase, centeredFourMobiusOffsets,
    centeredFourMobiusShiftAnchor]
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
    simp [centeredFourMobiusOffsets, centeredFourMobiusShiftAnchor] at hij ⊢ <;>
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
  base := centeredFourMobiusBase c r ell h g
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
```
