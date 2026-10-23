/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact dyadic quartic factorization

The dyadic block packing inherits the same exact monomial factors as the
pointwise source after totalizing the normalized vertical coordinates:

  axialDyadicGram_j      = a^4 * A_j^D,
  transverseDyadicGram_j = a^2 t^2 * T_j^D.

Thus

  Q_j^D = a^4 A_j^D + 3 a^2 t^2 T_j^D.

Combined with the finite-stage Green envelope from the previous module, this
reduces the dyadic volume route to one explicit off-line asymptotic supplier.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
DYADIC_EXACT_QUARTIC_FACTORS_EXPOSED / DYADIC_SCALE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor
open GRWTSK.Polynomial.ConjugateQuartic

def safeAxialDyadicNormalizedY (z : ZeroPoint) (j : ℕ) : ℝ :=
  if ha : zeroDefect z.1 = 0 then
    0
  else
    (safeEvenDefectDyadicBlock z j).re / (zeroDefect z.1) ^ 2

def safeTransverseDyadicNormalizedY (z : ZeroPoint) (j : ℕ) : ℝ :=
  if ha : zeroDefect z.1 = 0 then
    0
  else
    (safeOddDyadicBlock z j).im /
      (zeroDefect z.1 * z.1.im)

theorem safeAxialDyadic_y_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeEvenDefectDyadicBlock z j).re =
      (zeroDefect z.1) ^ 2 * safeAxialDyadicNormalizedY z j := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeAxialDyadicNormalizedY, if_pos ha, ha]
    have hplus :
        safePlusDyadicBlock z j = safeCenterDyadicBlock z j := by
      unfold safePlusDyadicBlock safeCenterDyadicBlock
      rw [safeShiftPlus_eq_center_of_zeroDefect ha]
    have hminus :
        safeMinusDyadicBlock z j = safeCenterDyadicBlock z j := by
      unfold safeMinusDyadicBlock safeCenterDyadicBlock
      rw [safeShiftMinus_eq_center_of_zeroDefect ha]
    unfold safeEvenDefectDyadicBlock safeEvenDyadicBlock
    rw [hplus, hminus]
    simp
  · rw [safeAxialDyadicNormalizedY, if_neg ha]
    field_simp [ha]

theorem safeTransverseDyadic_y_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeOddDyadicBlock z j).im =
      (zeroDefect z.1 * z.1.im) *
        safeTransverseDyadicNormalizedY z j := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeTransverseDyadicNormalizedY, if_pos ha, ha]
    have hplus :
        safePlusDyadicBlock z j = safeMinusDyadicBlock z j := by
      unfold safePlusDyadicBlock safeMinusDyadicBlock
      rw [safeShiftPlus_eq_safeShiftMinus_of_zeroDefect ha]
    unfold safeOddDyadicBlock
    rw [hplus]
    simp
  · rw [safeTransverseDyadicNormalizedY, if_neg ha]
    have ht : z.1.im ≠ 0 :=
      CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2
    field_simp [ha, ht]

def safeAxialDyadicNormalizedPoint (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicBlock z j).re,
    safeAxialDyadicNormalizedY z j⟩

def safeTransverseDyadicNormalizedPoint (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicBlock z j).re,
    safeTransverseDyadicNormalizedY z j⟩

def safeAxialDyadicNormalizedPacking (z : ZeroPoint) (j : ℕ) :
    ThreePointPacking :=
  dyadicPackingAt (safeAxialDyadicNormalizedPoint z) j

def safeTransverseDyadicNormalizedPacking (z : ZeroPoint) (j : ℕ) :
    ThreePointPacking :=
  dyadicPackingAt (safeTransverseDyadicNormalizedPoint z) j

def safeAxialDyadicQuarticCoefficient (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeAxialDyadicNormalizedPacking z j).gramVolume

def safeTransverseDyadicQuarticCoefficient (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeTransverseDyadicNormalizedPacking z j).gramVolume

theorem safeAxialDyadicQuarticCoefficient_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeAxialDyadicQuarticCoefficient z j :=
  (safeAxialDyadicNormalizedPacking z j).gramVolume_nonnegative

theorem safeTransverseDyadicQuarticCoefficient_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeTransverseDyadicQuarticCoefficient z j :=
  (safeTransverseDyadicNormalizedPacking z j).gramVolume_nonnegative

theorem safeAxialDyadic_orientedVolume_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeAxialDyadicPacking z j).orientedVolume =
      (zeroDefect z.1) ^ 2 *
        (safeAxialDyadicNormalizedPacking z j).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeAxialDyadic_y_factor z j
  · exact safeAxialDyadic_y_factor z (j + 1)
  · exact safeAxialDyadic_y_factor z (j + 2)

theorem safeTransverseDyadic_orientedVolume_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicPacking z j).orientedVolume =
      (zeroDefect z.1 * z.1.im) *
        (safeTransverseDyadicNormalizedPacking z j).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeTransverseDyadic_y_factor z j
  · exact safeTransverseDyadic_y_factor z (j + 1)
  · exact safeTransverseDyadic_y_factor z (j + 2)

theorem safeAxialDyadicGram_factor
    (z : ZeroPoint) (j : ℕ) :
    safeAxialDyadicGram z j =
      (zeroDefect z.1) ^ 4 *
        safeAxialDyadicQuarticCoefficient z j := by
  unfold safeAxialDyadicGram safeAxialDyadicQuarticCoefficient
    ThreePointPacking.gramVolume
  rw [safeAxialDyadic_orientedVolume_factor]
  ring

theorem safeTransverseDyadicGram_factor
    (z : ZeroPoint) (j : ℕ) :
    safeTransverseDyadicGram z j =
      (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
        safeTransverseDyadicQuarticCoefficient z j := by
  unfold safeTransverseDyadicGram safeTransverseDyadicQuarticCoefficient
    ThreePointPacking.gramVolume
  rw [safeTransverseDyadic_orientedVolume_factor]
  ring

theorem safeQuarticDyadicPackingValue_factor
    (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j =
      (zeroDefect z.1) ^ 4 *
          safeAxialDyadicQuarticCoefficient z j +
        3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
          safeTransverseDyadicQuarticCoefficient z j := by
  rw [safeQuarticDyadicPackingValue,
    safeAxialDyadicGram_factor,
    safeTransverseDyadicGram_factor]

/-- Off-line dyadic asymptotic packet sufficient for the packing contradiction. -/
structure OffLineDyadicQuarticScaleDataAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) where
  scale : ℕ → ℝ
  scale_nonnegative : ∀ j, 0 ≤ scale j
  limitCoefficient : ℝ
  limitCoefficient_pos : 0 < limitCoefficient
  axial_scaled_tendsto :
    Tendsto
      (fun j => scale j * safeAxialDyadicQuarticCoefficient z j)
      atTop (𝓝 limitCoefficient)
  transverse_scaled_tendsto :
    Tendsto
      (fun j => scale j * safeTransverseDyadicQuarticCoefficient z j)
      atTop (𝓝 limitCoefficient)
  scaledGreenEnvelope_tendsto_zero :
    Tendsto
      (fun j =>
        scale j * (148 * safeDyadicEnvelopePairProduct z j))
      atTop (𝓝 0)

/-- The dyadic packet directly forces an off-line zero back to the line. -/
theorem OffLineDyadicQuarticScaleDataAtZero.forces_critical_line
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicQuarticScaleDataAtZero z ha) :
    z.1.re = 1 / 2 := by
  have hoccupied :
      Tendsto
        (fun j => data.scale j * safeQuarticDyadicPackingValue z j)
        atTop
        (𝓝
          (data.limitCoefficient *
            ((zeroDefect z.1) ^ 4 +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2))) := by
    have hA := data.axial_scaled_tendsto
    have hT := data.transverse_scaled_tendsto
    have hsum :
        Tendsto
          (fun j =>
            (zeroDefect z.1) ^ 4 *
                (data.scale j * safeAxialDyadicQuarticCoefficient z j) +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
                (data.scale j * safeTransverseDyadicQuarticCoefficient z j))
          atTop
          (𝓝
            ((zeroDefect z.1) ^ 4 * data.limitCoefficient +
              3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 *
                data.limitCoefficient)) :=
      (tendsto_const_nhds.mul hA).add
        (tendsto_const_nhds.mul hT)
    convert hsum using 1
    · funext j
      rw [safeQuarticDyadicPackingValue_factor]
      ring
    · ring
  have hoccupiedZero :
      Tendsto
        (fun j => data.scale j * safeQuarticDyadicPackingValue z j)
        atTop (𝓝 0) := by
    apply squeeze_zero
    · intro j
      exact mul_nonneg (data.scale_nonnegative j)
        (safeQuarticDyadicPackingValue_nonnegative z j)
    · intro j
      exact mul_le_mul_of_nonneg_left
        (safeQuarticDyadicPackingValue_le_greenEnvelope z j)
        (data.scale_nonnegative j)
    · exact data.scaledGreenEnvelope_tendsto_zero
  have heq :
      data.limitCoefficient *
          ((zeroDefect z.1) ^ 4 +
            3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2) = 0 :=
    tendsto_nhds_unique hoccupied hoccupiedZero
  have hquartic :
      (zeroDefect z.1) ^ 4 +
        3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2 = 0 :=
    (mul_eq_zero.mp heq).resolve_left data.limitCoefficient_pos.ne'
  have hsquare : (zeroDefect z.1) ^ 2 = 0 := by
    nlinarith [sq_nonneg (z.1.im), sq_nonneg ((zeroDefect z.1)^2)]
  have hzero : zeroDefect z.1 = 0 := sq_eq_zero_iff.mp hsquare
  exact False.elim (ha hzero)

/-- Global corrected dyadic supplier. -/
def OffLineDyadicQuarticScaleClaim : Prop :=
  ∀ z : ZeroPoint, ∀ ha : zeroDefect z.1 ≠ 0,
    Nonempty (OffLineDyadicQuarticScaleDataAtZero z ha)

theorem riemannHypothesis_of_offLineDyadicQuarticScale
    (supplier : OffLineDyadicQuarticScaleClaim) :
    _root_.RiemannHypothesis := by
  intro s hz htrivial hpole
  let z : ZeroPoint := ⟨s, hz, htrivial, hpole⟩
  by_contra hline
  have ha : zeroDefect z.1 ≠ 0 := by
    intro hzero
    apply hline
    unfold zeroDefect at hzero
    dsimp [z] at hzero
    linarith
  obtain ⟨data⟩ := supplier z ha
  exact hline (by
    simpa [z] using data.forces_critical_line)

end GRWTSK.RiemannHypothesis
