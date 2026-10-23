/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDSharpDivisibilityTail
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerResidualObstruction
import Mathlib.Tactic

/-!
# Closure of the finite cutoff correction

The restricted Möbius-log block estimate proves the previously isolated
`NonAliasingFejerSharpDivisibilityTail` proposition for the literal historical
period-`4X` Fejér weight.  Consequently the cutoff correction is at the
original `X^(3/2) log(X)^4` scale with explicit constant `256`.

After this finite correction is closed, the residual estimate is equivalent,
up to explicit constants, to the original centered Fejér-von-Mangoldt mass
square.  That mass-square estimate remains open.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open GRWTSK.RiemannHypothesis

/-- The sharp divisibility-tail proposition is an elementary consequence of
the exact restricted Möbius-log block bound and the `[0,1]` Fejér weight. -/
theorem nonAliasingFejerSharpDivisibilityTail_proved
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    NonAliasingFejerSharpDivisibilityTail X N m := by
  intro r hr
  rcases mem_highGCDCutoffIndexSet_iff.mp hr with
    ⟨hrmem, hroot⟩
  have hrootOne : 1 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    omega
  have hrgt : 1 < r := by omega
  apply abs_centeredDivisibilityTail_le_quotient_mul_log
    (X := X) (r := r) (by omega : 1 ≤ X) hrgt
  intro n hn
  exact nonAliasingFejerPrefixWeight_mem_Icc
    hreg hm0 hm1 hn

/-- The high-index cutoff correction is now unconditionally at target scale
inside the finite Fejér regime. -/
theorem abs_nonAliasingFejer_cutoffCorrection_le_target
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |gcdCutoffCorrectionTail X X.sqrt
      (nonAliasingFejerPrefixWeight X N m)| ≤
        256 * centeredLowGCDTargetScale X := by
  exact
    abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail
      hX
      (nonAliasingFejerSharpDivisibilityTail_proved
        hX hreg hm0 hm1)

/-- Once the finite correction is closed, a residual estimate implies the
original centered mass-square estimate with additive constant `256`. -/
theorem centeredMass_sq_le_of_residual
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hresidual :
      |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
        C * centeredLowGCDTargetScale X) :
    (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
      (C + 256) * centeredLowGCDTargetScale X := by
  exact centeredMass_sq_le_of_residual_and_sharpTail
    hX
    (nonAliasingFejerSharpDivisibilityTail_proved
      hX hreg hm0 hm1)
    hC hresidual

/-- Conversely, the original centered mass-square estimate controls the
remaining residual with the same additive correction constant. -/
theorem abs_residual_le_of_centeredMass_sq
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
        C * centeredLowGCDTargetScale X) :
    |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
      (C + 256) * centeredLowGCDTargetScale X := by
  exact abs_residual_le_of_centeredMass_sq_and_sharpTail
    hX
    (nonAliasingFejerSharpDivisibilityTail_proved
      hX hreg hm0 hm1)
    hC hmass

/-- The only remaining input for the positive-shift target is the original
centered Fejér-von-Mangoldt mass square.  The explicit finite bookkeeping
constant is `1708 = 1152 + 300 + 256`. -/
theorem abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq_closedTail
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
        C * centeredLowGCDTargetScale X) :
    |positiveShiftCenteredLowGCDCorrelation X X.sqrt
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 1708) / 2) * centeredLowGCDTargetScale X := by
  exact abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq
    hX hreg hm0 hm1
    (nonAliasingFejerSharpDivisibilityTail_proved
      hX hreg hm0 hm1)
    hC hmass

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
