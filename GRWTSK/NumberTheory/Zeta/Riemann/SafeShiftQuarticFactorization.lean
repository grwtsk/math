/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact defect factorization of the axial/transverse Gram channels

The preceding source-level vanishing theorems imply exact algebraic factors.

For the axial channel, every vertical coordinate vanishes at a=0. Normalize it
by a^2. Since a^2 is common to all three vertical coordinates in one stage,
the oriented area has a factor a^2 and the Gram square has a factor a^4.

For the transverse channel, every vertical coordinate vanishes when a=0 and
when t=0. Normalize it by a*t. The oriented area then has a factor a*t and the
Gram square has the exact factor a^2*t^2.

Consequently the positive structural source has the exact form

  Q_n(a,t) = a^4 A_n(a,t) + 3 a^2 t^2 T_n(a,t),

with A_n,T_n >= 0 source-derived Gram coefficients.

This is an exact factorization, but it does not yet prove A_n and T_n have a
common positive limit. That coefficient-alignment theorem is now the precise
remaining bridge to -witnessTrace/4.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_QUARTIC_FACTORS_EXPOSED / COEFFICIENT_ALIGNMENT_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open CanonicalZeroDivisor
open GRWTSK.Polynomial.ConjugateQuartic

/-- Axial vertical coordinate after removing the common a^2 factor. -/
def safeAxialNormalizedY
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  if h : zeroDefect z.1 = 0 then
    0
  else
    (safeEvenDefectPrimePowerTerm z event).re / (zeroDefect z.1) ^ 2

/-- Exact axial vertical factorization. -/
theorem safeAxial_y_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safeEvenDefectPrimePowerTerm z event).re =
      (zeroDefect z.1) ^ 2 * safeAxialNormalizedY z event := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeAxialNormalizedY, if_pos ha, ha]
    simp [safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect z event ha]
  · rw [safeAxialNormalizedY, if_neg ha]
    field_simp [ha]

/-- Transverse vertical coordinate after removing the common a*t factor. -/
def safeTransverseNormalizedY
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  if ha : zeroDefect z.1 = 0 then
    0
  else if ht : z.1.im = 0 then
    0
  else
    (safeOddPrimePowerTerm z event).im /
      (zeroDefect z.1 * z.1.im)

/-- Exact transverse vertical factorization. -/
theorem safeTransverse_y_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safeOddPrimePowerTerm z event).im =
      (zeroDefect z.1 * z.1.im) *
        safeTransverseNormalizedY z event := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeTransverseNormalizedY, if_pos ha, ha]
    simp [safeOddPrimePowerTerm_eq_zero_of_zeroDefect z event ha]
  · rw [safeTransverseNormalizedY, if_neg ha]
    by_cases ht : z.1.im = 0
    · rw [if_pos ht, ht]
      simp [safeOddPrimePowerTerm_im_eq_zero_of_im_zero z event ht]
    · rw [if_neg ht]
      field_simp [ha, ht]

/-- Axial normalized point retaining the original even x-coordinate. -/
def safeAxialNormalizedPoint
    (z : ZeroPoint) (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safeEvenPrimePowerTerm z event).re,
    safeAxialNormalizedY z event⟩

/-- Transverse normalized point retaining the original even x-coordinate. -/
def safeTransverseNormalizedPoint
    (z : ZeroPoint) (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safeEvenPrimePowerTerm z event).re,
    safeTransverseNormalizedY z event⟩

def safeAxialNormalizedPackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking where
  point := fun n =>
    safeAxialNormalizedPoint z (canonicalPrimePowerEventSequence n)
  source := canonicalPrimePowerValueSequence
  IsPrimePowerSource := IsPrimePow
  source_ok := canonicalPrimePowerValueSequence_isPrimePow

def safeTransverseNormalizedPackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking where
  point := fun n =>
    safeTransverseNormalizedPoint z (canonicalPrimePowerEventSequence n)
  source := canonicalPrimePowerValueSequence
  IsPrimePowerSource := IsPrimePow
  source_ok := canonicalPrimePowerValueSequence_isPrimePow

/-- Generic two-dimensional determinant scaling: preserving x and multiplying
all y coordinates by c multiplies oriented volume by c. -/
theorem ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
    (p q : ThreePointPacking) (c : ℝ)
    (hx0 : p.first.x = q.first.x)
    (hx1 : p.second.x = q.second.x)
    (hx2 : p.third.x = q.third.x)
    (hy0 : p.first.y = c * q.first.y)
    (hy1 : p.second.y = c * q.second.y)
    (hy2 : p.third.y = c * q.third.y) :
    p.orientedVolume = c * q.orientedVolume := by
  unfold orientedVolume edge01 edge12 PackingPoint.sub
  rw [hx0, hx1, hx2, hy0, hy1, hy2]
  ring

/-- The axial oriented area has an exact a^2 factor. -/
theorem safeAxial_orientedVolume_factor
    (z : ZeroPoint) (n : ℕ) :
    ((safeAxialPackingSequence z).packingAt n).orientedVolume =
      (zeroDefect z.1) ^ 2 *
        ((safeAxialNormalizedPackingSequence z).packingAt n).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeAxial_y_factor
      z (canonicalPrimePowerEventSequence n)
  · exact safeAxial_y_factor
      z (canonicalPrimePowerEventSequence (n + 1))
  · exact safeAxial_y_factor
      z (canonicalPrimePowerEventSequence (n + 2))

/-- The transverse oriented area has an exact a*t factor. -/
theorem safeTransverse_orientedVolume_factor
    (z : ZeroPoint) (n : ℕ) :
    ((safeTransversePackingSequence z).packingAt n).orientedVolume =
      (zeroDefect z.1 * z.1.im) *
        ((safeTransverseNormalizedPackingSequence z).packingAt n).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeTransverse_y_factor
      z (canonicalPrimePowerEventSequence n)
  · exact safeTransverse_y_factor
      z (canonicalPrimePowerEventSequence (n + 1))
  · exact safeTransverse_y_factor
      z (canonicalPrimePowerEventSequence (n + 2))

/-- Source-derived normalized axial Gram coefficient. -/
def safeAxialQuarticCoefficient
    (z : ZeroPoint) (n : ℕ) : ℝ :=
  (safeAxialNormalizedPackingSequence z).valueAt n

/-- Source-derived normalized transverse Gram coefficient. -/
def safeTransverseQuarticCoefficient
    (z : ZeroPoint) (n : ℕ) : ℝ :=
  (safeTransverseNormalizedPackingSequence z).valueAt n

theorem safeAxialQuarticCoefficient_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeAxialQuarticCoefficient z n :=
  (safeAxialNormalizedPackingSequence z).valueAt_nonnegative n

theorem safeTransverseQuarticCoefficient_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeTransverseQuarticCoefficient z n :=
  (safeTransverseNormalizedPackingSequence z).valueAt_nonnegative n

/-- Exact a^4 factorization of the axial Gram channel. -/
theorem safeAxialPacking_valueAt_factor
    (z : ZeroPoint) (n : ℕ) :
    (safeAxialPackingSequence z).valueAt n =
      (zeroDefect z.1) ^ 4 *
        safeAxialQuarticCoefficient z n := by
  change
    ((safeAxialPackingSequence z).packingAt n).orientedVolume ^ 2 =
      (zeroDefect z.1) ^ 4 *
        ((safeAxialNormalizedPackingSequence z).packingAt n).orientedVolume ^ 2
  rw [safeAxial_orientedVolume_factor]
  ring

/-- Exact a^2*t^2 factorization of the transverse Gram channel. -/
theorem safeTransversePacking_valueAt_factor
    (z : ZeroPoint) (n : ℕ) :
    (safeTransversePackingSequence z).valueAt n =
      (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
        safeTransverseQuarticCoefficient z n := by
  change
    ((safeTransversePackingSequence z).packingAt n).orientedVolume ^ 2 =
      (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
        ((safeTransverseNormalizedPackingSequence z).packingAt n).orientedVolume ^ 2
  rw [safeTransverse_orientedVolume_factor]
  ring

/-- Exact source factorization matching the target quartic monomial pattern. -/
theorem safeQuarticStructuredPackingValue_factor
    (z : ZeroPoint) (n : ℕ) :
    safeQuarticStructuredPackingValue z n =
      (zeroDefect z.1) ^ 4 * safeAxialQuarticCoefficient z n +
        3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
          safeTransverseQuarticCoefficient z n := by
  rw [safeQuarticStructuredPackingValue,
    safeAxialPacking_valueAt_factor,
    safeTransversePacking_valueAt_factor]

/-- If the two normalized source coefficients align at one stage, the positive
source becomes exactly a scalar multiple of -witnessTrace/4. -/
theorem safeQuarticStructuredPackingValue_eq_neg_witnessTrace_div_four_of_coeff_eq
    (z : ZeroPoint) (n : ℕ)
    (hcoeff :
      safeAxialQuarticCoefficient z n =
        safeTransverseQuarticCoefficient z n) :
    safeQuarticStructuredPackingValue z n =
      safeAxialQuarticCoefficient z n *
        (-witnessTrace (zeroDefect z.1) z.1.im / 4) := by
  rw [safeQuarticStructuredPackingValue_factor, hcoeff, witnessTrace_eq]
  ring

end GRWTSK.RiemannHypothesis
