# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingSymmetricCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `278d3e340294bd6fbf24780b1782e1b6325a0ffc` · SHA-256 `9a81de2ad76ca132ef5c5c07bafa106f7591a51826ad2ec8a223521282367c4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #801. Direct stacked parent: draft PR #800 at exact head
`138fe6bfc490681fe6eac4145409f4ef9f4b1869`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingShiftFibers

/-!
# Zero-winding fibers as symmetric Möbius correlations

For an admissible shift `h` at common coordinate `c`,

`m = (c-h)/2`.

Hence the two Möbius arguments become exactly

`c-h+r` and `c+h+r`.

This module removes the final half-index wrapper and rewrites the zero-winding
fiber energy as a second moment of symmetric two-point Möbius correlations.
No estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The solved lower affine form is exactly `c-h+r`. -/
theorem solvedHalfIndex_lower_eq_symmetricLeft
    {c h r : ℕ}
    (_hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    2 * zeroWindingHalfIndexFromCoordinate c h + r =
      c - h + r := by
  unfold zeroWindingHalfIndexFromCoordinate
  omega

/-- The solved upper affine form is exactly `c+h+r`. -/
theorem solvedHalfIndex_upper_eq_symmetricRight
    {c h r : ℕ}
    (hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    2 * zeroWindingHalfIndexFromCoordinate c h + r + 2 * h =
      c + h + r := by
  unfold zeroWindingHalfIndexFromCoordinate
  omega

/-- Exact arithmetic form of the binary half-index coefficient on an admissible
shift. -/
theorem halfIndexBinaryMobiusCoefficient_solved
    {c h r : ℕ}
    (hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    halfIndexBinaryMobiusCoefficient r
        (zeroWindingHalfIndexFromCoordinate c h) h =
      moebiusReal (c - h + r) *
        moebiusReal (c + h + r) := by
  unfold halfIndexBinaryMobiusCoefficient
  rw [solvedHalfIndex_upper_eq_symmetricRight hle heven,
    solvedHalfIndex_lower_eq_symmetricLeft hle heven]

/-- Direct symmetric Möbius correlation on the exact admissible shift fiber. -/
def parityZeroWindingSymmetricMobiusCorrelation
    (b r c : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ h ∈ zeroWindingAdmissibleShiftSet b r c H,
    moebiusReal (c - h + r) *
      moebiusReal (c + h + r)

/-- Exact equality between the half-index wrapper and the symmetric arithmetic
correlation. -/
theorem parityZeroWindingShiftFiberCorrelation_eq_symmetric
    (b r c : ℕ)
    (H : Finset ℕ) :
    parityZeroWindingShiftFiberCorrelation b r c H =
      parityZeroWindingSymmetricMobiusCorrelation b r c H := by
  unfold parityZeroWindingShiftFiberCorrelation
    parityZeroWindingSymmetricMobiusCorrelation
  apply Finset.sum_congr rfl
  intro h hh
  have hmem :=
    (mem_zeroWindingAdmissibleShiftSet
      (b := b) (r := r) (c := c) (h := h) (H := H)).mp hh
  exact halfIndexBinaryMobiusCoefficient_solved
    hmem.2.1 hmem.2.2.1

/-- Exact second-moment form of the zero-winding fiber energy. -/
theorem parityHalfIndexZeroWindingFiberEnergy_eq_symmetric
    (b r : ℕ)
    (H : Finset ℕ) :
    parityHalfIndexZeroWindingFiberEnergy b r H =
      4 * ∑ c ∈ Finset.range (b + 1),
        parityZeroWindingSymmetricMobiusCorrelation b r c H ^ 2 := by
  rw [parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation]
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c _hc
  rw [parityZeroWindingShiftFiberCorrelation_eq_symmetric]

/-- Even-half-shift symmetric second moment for one endpoint parity. -/
def parityEvenZeroWindingSymmetricSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingSymmetricMobiusCorrelation
      b r c (positiveEndpointEvenShiftSet b) ^ 2

/-- Odd-half-shift symmetric second moment for one endpoint parity. -/
def parityOddZeroWindingSymmetricSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingSymmetricMobiusCorrelation
      b r c (positiveEndpointOddShiftSet b) ^ 2

/-- Exact even-family identification. -/
theorem evenZeroWindingFiberEnergy_eq_symmetricSecondMoment
    (b r : ℕ) :
    parityHalfIndexZeroWindingFiberEnergy
        b r (positiveEndpointEvenShiftSet b) =
      parityEvenZeroWindingSymmetricSecondMoment b r := by
  exact
    parityHalfIndexZeroWindingFiberEnergy_eq_symmetric
      b r (positiveEndpointEvenShiftSet b)

/-- Exact odd-family identification. -/
theorem oddZeroWindingFiberEnergy_eq_symmetricSecondMoment
    (b r : ℕ) :
    parityHalfIndexZeroWindingFiberEnergy
        b r (positiveEndpointOddShiftSet b) =
      parityOddZeroWindingSymmetricSecondMoment b r := by
  exact
    parityHalfIndexZeroWindingFiberEnergy_eq_symmetric
      b r (positiveEndpointOddShiftSet b)

/-- Four-family zero-winding surface in direct symmetric-correlation
coordinates. -/
def twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant
    (b : ℕ) : ℝ :=
  Real.sqrt (parityEvenZeroWindingSymmetricSecondMoment b 0) +
    Real.sqrt (parityOddZeroWindingSymmetricSecondMoment b 0) +
    Real.sqrt (parityEvenZeroWindingSymmetricSecondMoment b 1) +
    Real.sqrt (parityOddZeroWindingSymmetricSecondMoment b 1)

/-- Exact equality of the previous fiber-energy and direct symmetric
second-moment surfaces. -/
theorem zeroWindingFiberEnergyMajorant_eq_symmetricSecondMoment
    (b : ℕ) :
    twoNonunitRegularZeroWindingFiberEnergyMajorant b =
      twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant b := by
  unfold twoNonunitRegularZeroWindingFiberEnergyMajorant
    twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant
  rw [evenZeroWindingFiberEnergy_eq_symmetricSecondMoment,
    oddZeroWindingFiberEnergy_eq_symmetricSecondMoment,
    evenZeroWindingFiberEnergy_eq_symmetricSecondMoment,
    oddZeroWindingFiberEnergy_eq_symmetricSecondMoment]

/-- Conservative source profile for the remaining symmetric Möbius
correlation second-moment theorem. -/
structure RegularZeroWindingSymmetricCorrelationSourceData where
  theoremStatement : Prop
  exactAdmissibleShiftSupportMatched : Prop
  symmetricArgumentsCMinusHPlusRMatched : Prop
  symmetricArgumentsCPlusHPlusRMatched : Prop
  mobiusSignsMatched : Prop
  squareSecondMomentMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularZeroWindingSymmetricCorrelationSource
    (d : RegularZeroWindingSymmetricCorrelationSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactAdmissibleShiftSupportMatched ∧
    d.symmetricArgumentsCMinusHPlusRMatched ∧
    d.symmetricArgumentsCPlusHPlusRMatched ∧
    d.mobiusSignsMatched ∧
    d.squareSecondMomentMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexBinaryMobiusCoefficient_solved
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityZeroWindingShiftFiberCorrelation_eq_symmetric
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexZeroWindingFiberEnergy_eq_symmetric
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingFiberEnergyMajorant_eq_symmetricSecondMoment
```
