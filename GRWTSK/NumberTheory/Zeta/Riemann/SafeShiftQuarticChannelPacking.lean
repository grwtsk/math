/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftSymmetricPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Axial/transverse positive channels for the quartic source

The target quartic decomposes algebraically as

  -witnessTrace(a,t) / 4 = a^4 + 3 a^2 t^2.

The safe-shift arithmetic source admits two positive Gram channels with matching
vanishing symmetries:

* axial channel: even source defect from its a=0 center; it vanishes when a=0
  and is the candidate for the a^4 component;
* transverse channel: imaginary part of the reflection-odd source; it vanishes
  when a=0 and also when t=0, and is the candidate for the a^2 t^2 component.

Their Gram values are nonnegative independently.  We define the structural
combination axial + 3*transverse, matching the quartic coefficient pattern.
No equality with a^4+3a^2t^2 is asserted.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
AXIAL_TRANSVERSE_POSITIVE_CHANNELS_DEFINED / COEFFICIENT_IDENTITY_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor

/-- Safe center point with the same height but zero horizontal defect. -/
def safeShiftCenter (s : ℂ) : ℂ :=
  (2 : ℂ) + s.im * I

@[simp]
theorem safeShiftCenter_re (s : ℂ) :
    (safeShiftCenter s).re = 2 := by
  simp [safeShiftCenter]

@[simp]
theorem safeShiftCenter_im (s : ℂ) :
    (safeShiftCenter s).im = s.im := by
  simp [safeShiftCenter]

/-- Center von Mangoldt term, independent of the horizontal defect. -/
def safeCenterPrimePowerTerm
    (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  vonMangoldtDirichletTerm (safeShiftCenter z.1) event.natValue

/-- Reflection-even defect from the a=0 center. -/
def safeEvenDefectPrimePowerTerm
    (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  safeEvenPrimePowerTerm z event - safeCenterPrimePowerTerm z event

/-- On the critical line both safe shifts are exactly the center shift. -/
theorem safeShiftPlus_eq_center_of_zeroDefect
    {s : ℂ} (h : zeroDefect s = 0) :
    safeShiftPlus s = safeShiftCenter s := by
  apply Complex.ext <;>
    simp [safeShiftPlus, safeShiftCenter, h]

theorem safeShiftMinus_eq_center_of_zeroDefect
    {s : ℂ} (h : zeroDefect s = 0) :
    safeShiftMinus s = safeShiftCenter s := by
  apply Complex.ext <;>
    simp [safeShiftMinus, safeShiftCenter, h]

/-- The even defect channel vanishes exactly at a=0. -/
theorem safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect
    (z : ZeroPoint) (event : PrimePowerEvent)
    (h : zeroDefect z.1 = 0) :
    safeEvenDefectPrimePowerTerm z event = 0 := by
  unfold safeEvenDefectPrimePowerTerm safeEvenPrimePowerTerm
    safePlusPrimePowerTerm safeMinusPrimePowerTerm
    safeCenterPrimePowerTerm
  rw [safeShiftPlus_eq_center_of_zeroDefect h,
    safeShiftMinus_eq_center_of_zeroDefect h]
  ring

namespace PrimePowerEvent

theorem natValue_pos (event : PrimePowerEvent) :
    0 < event.natValue := by
  unfold natValue
  exact pow_pos event.prime.property.pos _

theorem natValue_ne_zero (event : PrimePowerEvent) :
    event.natValue ≠ 0 :=
  ne_of_gt event.natValue_pos

end PrimePowerEvent

/-- A von Mangoldt L-series term evaluated at a real exponent has zero
imaginary part. -/
theorem vonMangoldtDirichletTerm_im_eq_zero_of_real
    (event : PrimePowerEvent) (x : ℝ) :
    (vonMangoldtDirichletTerm (x : ℂ) event.natValue).im = 0 := by
  unfold vonMangoldtDirichletTerm
  rw [LSeries.term_of_ne_zero event.natValue_ne_zero]
  rw [← Complex.ofReal_natCast event.natValue,
    ← Complex.ofReal_cpow (Nat.cast_nonneg event.natValue) x]
  simp

/-- At zero height the plus term is real. -/
theorem safePlusPrimePowerTerm_im_eq_zero_of_im_zero
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ht : z.1.im = 0) :
    (safePlusPrimePowerTerm z event).im = 0 := by
  have hshift :
      safeShiftPlus z.1 =
        ((2 + zeroDefect z.1 : ℝ) : ℂ) := by
    apply Complex.ext <;>
      simp [safeShiftPlus, ht]
  unfold safePlusPrimePowerTerm
  rw [hshift]
  exact vonMangoldtDirichletTerm_im_eq_zero_of_real
    event (2 + zeroDefect z.1)

/-- At zero height the minus term is real. -/
theorem safeMinusPrimePowerTerm_im_eq_zero_of_im_zero
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ht : z.1.im = 0) :
    (safeMinusPrimePowerTerm z event).im = 0 := by
  have hshift :
      safeShiftMinus z.1 =
        ((2 - zeroDefect z.1 : ℝ) : ℂ) := by
    apply Complex.ext <;>
      simp [safeShiftMinus, ht]
  unfold safeMinusPrimePowerTerm
  rw [hshift]
  exact vonMangoldtDirichletTerm_im_eq_zero_of_real
    event (2 - zeroDefect z.1)

/-- Therefore the imaginary part of the odd channel vanishes at t=0. -/
theorem safeOddPrimePowerTerm_im_eq_zero_of_im_zero
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ht : z.1.im = 0) :
    (safeOddPrimePowerTerm z event).im = 0 := by
  unfold safeOddPrimePowerTerm
  rw [Complex.div_im]
  simp [safePlusPrimePowerTerm_im_eq_zero_of_im_zero z event ht,
    safeMinusPrimePowerTerm_im_eq_zero_of_im_zero z event ht]

/-- Axial planar point:
x is the even baseline, y is the even defect from the a=0 center. -/
def safeAxialPoint
    (z : ZeroPoint) (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safeEvenPrimePowerTerm z event).re,
    (safeEvenDefectPrimePowerTerm z event).re⟩

/-- Transverse planar point:
x is the even baseline, y is the imaginary reflection-odd channel. -/
def safeTransversePoint
    (z : ZeroPoint) (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safeEvenPrimePowerTerm z event).re,
    (safeOddPrimePowerTerm z event).im⟩

def safeAxialPointFamily :
    SourceSensitivePrimePowerPointFamily ZeroPoint where
  point := safeAxialPoint
  sourceId := "safe shifted von Mangoldt axial even-defect channel"
  revision := pinnedVonMangoldtSource.revision
  normalization :=
    "x=Re(E); y=Re(E-center); candidate a^4 channel"

def safeTransversePointFamily :
    SourceSensitivePrimePowerPointFamily ZeroPoint where
  point := safeTransversePoint
  sourceId := "safe shifted von Mangoldt transverse odd-im channel"
  revision := pinnedVonMangoldtSource.revision
  normalization :=
    "x=Re(E); y=Im(O); candidate a^2*t^2 channel"

def safeAxialPackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking :=
  safeAxialPointFamily.sequence z

def safeTransversePackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking :=
  safeTransversePointFamily.sequence z

theorem safeAxialPacking_valueAt_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeAxialPackingSequence z).valueAt n :=
  safeAxialPointFamily.valueAt_nonnegative z n

theorem safeTransversePacking_valueAt_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeTransversePackingSequence z).valueAt n :=
  safeTransversePointFamily.valueAt_nonnegative z n

/-- Axial channel vanishes stagewise on the critical line. -/
theorem safeAxialPacking_valueAt_eq_zero_of_zeroDefect
    (z : ZeroPoint) (n : ℕ)
    (ha : zeroDefect z.1 = 0) :
    (safeAxialPackingSequence z).valueAt n = 0 := by
  apply ThreePointPacking.gramVolume_eq_zero_of_y_zero
  all_goals change (safeAxialPoint z _).y = 0
  · simp [safeAxialPoint, safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence n) ha]
  · simp [safeAxialPoint, safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence (n + 1)) ha]
  · simp [safeAxialPoint, safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect
      z (canonicalPrimePowerEventSequence (n + 2)) ha]

/-- Transverse channel vanishes stagewise on the critical line. -/
theorem safeTransversePacking_valueAt_eq_zero_of_zeroDefect
    (z : ZeroPoint) (n : ℕ)
    (ha : zeroDefect z.1 = 0) :
    (safeTransversePackingSequence z).valueAt n = 0 := by
  apply ThreePointPacking.gramVolume_eq_zero_of_y_zero
  all_goals change (safeTransversePoint z _).y = 0
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_eq_zero_of_zeroDefect
        z (canonicalPrimePowerEventSequence n) ha]
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_eq_zero_of_zeroDefect
        z (canonicalPrimePowerEventSequence (n + 1)) ha]
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_eq_zero_of_zeroDefect
        z (canonicalPrimePowerEventSequence (n + 2)) ha]

/-- Transverse channel also vanishes at zero height, matching the t^2 factor. -/
theorem safeTransversePacking_valueAt_eq_zero_of_im_zero
    (z : ZeroPoint) (n : ℕ)
    (ht : z.1.im = 0) :
    (safeTransversePackingSequence z).valueAt n = 0 := by
  apply ThreePointPacking.gramVolume_eq_zero_of_y_zero
  all_goals change (safeTransversePoint z _).y = 0
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_im_eq_zero_of_im_zero
        z (canonicalPrimePowerEventSequence n) ht]
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_im_eq_zero_of_im_zero
        z (canonicalPrimePowerEventSequence (n + 1)) ht]
  · simp [safeTransversePoint,
      safeOddPrimePowerTerm_im_eq_zero_of_im_zero
        z (canonicalPrimePowerEventSequence (n + 2)) ht]

/-- Positive structural combination mirroring a^4 + 3 a^2 t^2. -/
def safeQuarticStructuredPackingValue
    (z : ZeroPoint) (n : ℕ) : ℝ :=
  (safeAxialPackingSequence z).valueAt n +
    3 * (safeTransversePackingSequence z).valueAt n

theorem safeQuarticStructuredPackingValue_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeQuarticStructuredPackingValue z n := by
  exact add_nonneg (safeAxialPacking_valueAt_nonnegative z n)
    (mul_nonneg (by norm_num) (safeTransversePacking_valueAt_nonnegative z n))

/-- The combined positive source vanishes on the critical line. -/
theorem safeQuarticStructuredPackingValue_eq_zero_of_zeroDefect
    (z : ZeroPoint) (n : ℕ)
    (ha : zeroDefect z.1 = 0) :
    safeQuarticStructuredPackingValue z n = 0 := by
  rw [safeQuarticStructuredPackingValue,
    safeAxialPacking_valueAt_eq_zero_of_zeroDefect z n ha,
    safeTransversePacking_valueAt_eq_zero_of_zeroDefect z n ha]
  norm_num

/-- At zero height, the transverse contribution disappears and the candidate
reduces to its axial component, structurally matching the a^4 endpoint. -/
theorem safeQuarticStructuredPackingValue_zero_height
    (z : ZeroPoint) (n : ℕ)
    (ht : z.1.im = 0) :
    safeQuarticStructuredPackingValue z n =
      (safeAxialPackingSequence z).valueAt n := by
  rw [safeQuarticStructuredPackingValue,
    safeTransversePacking_valueAt_eq_zero_of_im_zero z n ht]
  ring

end GRWTSK.RiemannHypothesis
