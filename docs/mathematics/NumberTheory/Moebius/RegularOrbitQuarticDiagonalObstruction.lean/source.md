# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticDiagonalObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcf01bf3b1dd0d213726d9327f0d0cc24869760d` · SHA-256 `64916e3e7372d38925e4353107b52197a568a2be8f5ccbc2783ceef78738015d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #779. Direct stacked parent: draft PR #777 at exact head
`30b59631bd1dfd3206bf2ea6b0eac10abfa37f8f`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticDiagonalSplit
import GRWTSK.NumberTheory.Moebius.ParityResidueVarianceLargeModulusObstruction

/-!
# Obstruction to separate positive control of the regular quartic diagonal

The literal diagonal in the regular quartic collision is

`4 * sum_(h,u) (mu(u) * mu(u+2h))^2`.

It is positive and independent of the square-modulus parameter except through
the ambient branch selection.  Treating it as a separate positive majorant
therefore risks reproducing the large positive-mass obstruction already seen
for residue variance.

This module scripts the exact diagonal simplification and records the hostile
boundary: the RH-facing route must preserve cancellation between the positive
diagonal and the signed off-diagonal unless an independently sufficient
natural-scale theorem is supplied.

No analytic cancellation theorem is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact squarefree-pair diagonal mass for one half-shift family. -/
def parityHalfShiftSquarefreePairDiagonal
    (b r : ℕ)
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ u ∈ parityAffineShiftBaseSet b r h,
      (moebiusReal u * moebiusReal (u + 2 * h)) ^ 2

/-- The literal quartic diagonal is exactly the squarefree-pair diagonal and
contains no square-modulus dependence. -/
theorem parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfShiftQuarticDiagonal b d r H =
      parityHalfShiftSquarefreePairDiagonal b r H := by
  unfold parityHalfShiftQuarticDiagonal
    parityHalfShiftSquarefreePairDiagonal
  simp [ite_and, regularQuarticMobiusCoefficient_diagonal]

/-- Explicit independence of the literal diagonal from the modulus. -/
theorem parityHalfShiftQuarticDiagonal_eq_of_moduli
    (b d₁ d₂ r : ℕ) [NeZero d₁] [NeZero d₂]
    (H : Finset ℕ) :
    parityHalfShiftQuarticDiagonal b d₁ r H =
      parityHalfShiftQuarticDiagonal b d₂ r H := by
  rw [parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal,
    parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal]

/-- Combined even/odd literal diagonal at one endpoint parity. -/
def parityAllHalfShiftSquarefreePairDiagonal
    (b r : ℕ) : ℝ :=
  parityHalfShiftSquarefreePairDiagonal
      b r (positiveEndpointEvenShiftSet b) +
    parityHalfShiftSquarefreePairDiagonal
      b r (positiveEndpointOddShiftSet b)

/-- Conservative boundary: a proof may not replace the exact signed quartic
collision by separate positive diagonal and absolute off-diagonal terms without
supplying an explicit natural-scale theorem for that stronger majorant. -/
structure SeparatePositiveQuarticMajorantAdapter
    (source target : Prop) : Type where
  toTarget : source → target

/-- The exact signed quartic collision remains the live regular target. -/
def RegularQuarticCancellationMustRemainCoupled : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j b : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        twoNonunitRegularSignedQuarticCollisionEndpointMajorant b ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact identification with the existing signed quartic supplier. -/
theorem regularQuarticCancellationMustRemainCoupled_iff :
    RegularQuarticCancellationMustRemainCoupled ↔
      DyadicNaturalScaleRegularSignedQuarticCollisionBudget := by
  rfl

/-- Positive diagonal source profile. No value is constructed.

Any attempt to control the diagonal separately must supply a genuine endpoint
natural-scale theorem rather than inheriting one from the signed quartic
target. -/
structure RegularQuarticDiagonalPositiveSourceData where
  theoremStatement : Prop
  exactSquarefreePairDiagonalMatched : Prop
  bothHalfShiftParitiesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveSquareModulusMultiplicityMatched : Prop
  naturalScaleEndpointAggregationMatched : Prop

def RegularQuarticDiagonalPositiveSource
    (d : RegularQuarticDiagonalPositiveSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactSquarefreePairDiagonalMatched ∧
    d.bothHalfShiftParitiesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveSquareModulusMultiplicityMatched ∧
    d.naturalScaleEndpointAggregationMatched

/-- Off-diagonal cancellation source remains separate and signed. -/
structure RegularQuarticOffDiagonalCancellationSourceData where
  theoremStatement : Prop
  exactCongruenceFamilyMatched : Prop
  literalDiagonalExcluded : Prop
  mobiusQuarticSignsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveSquareModuliMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularQuarticOffDiagonalCancellationSource
    (d : RegularQuarticOffDiagonalCancellationSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactCongruenceFamilyMatched ∧
    d.literalDiagonalExcluded ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.effectiveSquareModuliMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftQuarticDiagonal_eq_squarefreePairDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftQuarticDiagonal_eq_of_moduli
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularQuarticCancellationMustRemainCoupled_iff
```
