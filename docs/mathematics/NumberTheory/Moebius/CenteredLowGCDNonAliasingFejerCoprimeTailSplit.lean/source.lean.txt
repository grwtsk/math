/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailEstimate
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDiagonal
import Mathlib.Tactic

/-!
# Actual Fejér split after closing the large Möbius-index tail

The square-root-cutoff signed bilinear is decomposed into:

1. the small-`r` signed coprime Möbius square;
2. the complete positive common-gcd classes;
3. the large-`r` signed coprime square.

The third term is now bounded absolutely.  The first two remain jointly signed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open GRWTSK.RiemannHypothesis

/-- Remaining genuinely signed packet after removing the absolutely controlled
large Möbius-index tail. -/
def nonAliasingFejerSmallMobiusAndPositiveGCDResidual
    (X N m : ℕ) : ℝ :=
  lowCoprimeMobiusSquareExpansion X
      (nonAliasingFejerPrefixWeight X N m) +
    centeredNonCoprimeLowGCDBilinear X X.sqrt
      (nonAliasingFejerPrefixWeight X N m)

/-- Exact three-way decomposition of the square-root-cutoff signed bilinear. -/
theorem nonAliasingFejerSignedLowGCDBilinear_eq_residual_add_high
    {X N m : ℕ}
    (hX : 1 ≤ X) :
    nonAliasingFejerSignedLowGCDBilinear X N m =
      nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m +
        highCoprimeMobiusSquareExpansion X
          (nonAliasingFejerPrefixWeight X N m) := by
  rw [nonAliasingFejerSignedLowGCDBilinear_eq_mobiusSquare_add_nonCoprime hX,
    coprimeMobiusSquareExpansion_eq_low_add_high]
  unfold nonAliasingFejerSmallMobiusAndPositiveGCDResidual
  ring

/-- The historical Fejér weight inherits the generic absolute large-index
coprime bound. -/
theorem abs_nonAliasingFejer_highCoprimeMobiusSquare_le_target
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |highCoprimeMobiusSquareExpansion X
        (nonAliasingFejerPrefixWeight X N m)| ≤
      1152 * centeredLowGCDTargetScale X := by
  apply abs_highCoprimeMobiusSquareExpansion_le_target hX
  intro n hn
  exact nonAliasingFejerPrefixWeight_mem_Icc
    hreg hm0 hm1 hn

/-- A target-scale estimate for the residual signed packet yields a target-scale
estimate for the complete square-root-cutoff bilinear. -/
theorem abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual
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
    |nonAliasingFejerSignedLowGCDBilinear X N m| ≤
      (C + 1152) * centeredLowGCDTargetScale X := by
  have hsplit :=
    nonAliasingFejerSignedLowGCDBilinear_eq_residual_add_high
      (X := X) (N := N) (m := m) (by omega : 1 ≤ X)
  have hhigh :=
    abs_nonAliasingFejer_highCoprimeMobiusSquare_le_target
      hX hreg hm0 hm1
  have htri :
      |nonAliasingFejerSignedLowGCDBilinear X N m| ≤
        |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| +
        |highCoprimeMobiusSquareExpansion X
          (nonAliasingFejerPrefixWeight X N m)| := by
    rw [hsplit]
    exact abs_add _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  nlinarith

/-- Closing the residual signed packet now suffices for the actual positive-shift
estimate.  The constant `1452 = 1152 + 300` records the separately controlled
large Möbius tail and complete centered diagonal. -/
theorem abs_nonAliasingFejer_positiveShift_sqrt_le_of_residual
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
    |positiveShiftCenteredLowGCDCorrelation X X.sqrt
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 1452) / 2) * centeredLowGCDTargetScale X := by
  have hbilinear :=
    abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual
      hX hreg hm0 hm1 hC hresidual
  have hC' : 0 ≤ C + 1152 := by linarith
  simpa [add_assoc, add_left_comm, add_comm] using
    abs_nonAliasingFejer_positiveShift_sqrt_le_of_signedBilinear
      hX hreg hm0 hm1 hC' hbilinear

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
