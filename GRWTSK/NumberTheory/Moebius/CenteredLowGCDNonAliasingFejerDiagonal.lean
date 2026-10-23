/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalEstimate
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerBridge
import Mathlib.Tactic

/-!
# Actual non-aliasing Fejér diagonal closure

The historical period-`4X` Fejér prefix weight is inserted into the generic
centered diagonal estimate.  The remaining positive-shift problem is reduced
to the complete signed modulus bilinear form; no centered channel is split.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open GRWTSK.RiemannHypothesis

/-- The actual historical Fejér-weighted diagonal is already of the target
`X * sqrt X * log(X)^4` size. -/
theorem abs_nonAliasingFejer_diagonal_le_target
    {X N m Y : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |diagonalCenteredLowGCDCorrelation X Y
        (nonAliasingFejerPrefixWeight X N m)| ≤
      300 * centeredLowGCDTargetScale X := by
  apply abs_diagonalCenteredLowGCDCorrelation_le_target hX
  intro n hn
  exact nonAliasingFejerPrefixWeight_mem_Icc
    hreg hm0 hm1 hn

/-- Exact subtraction form of the positive-shift identity. -/
theorem two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hY : 1 ≤ Y) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
          (nonAliasingFejerPrefixWeight X N m) -
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) := by
  have h :=
    nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
      hreg hY
  linarith

/-- Once the complete signed modulus bilinear is bounded, the positive-shift
estimate follows with only the already-proved diagonal constant.  This theorem
does not manufacture the bilinear hypothesis. -/
theorem abs_nonAliasingFejer_positiveShift_le_of_bilinear
    {X N m Y : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hY : 1 ≤ Y)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hbilinear :
      |centeredLowGCDBilinear X Y
        (nonAliasingFejerPrefixWeight X N m)| ≤
          C * centeredLowGCDTargetScale X) :
    |positiveShiftCenteredLowGCDCorrelation X Y
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 300) / 2) * centeredLowGCDTargetScale X := by
  have hdiag := abs_nonAliasingFejer_diagonal_le_target
    (Y := Y) hX hreg hm0 hm1
  have hid :=
    two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal
      hreg hY
  have htri :
      |2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m)| ≤
        |centeredLowGCDBilinear X Y
          (nonAliasingFejerPrefixWeight X N m)| +
        |diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m)| := by
    rw [hid]
    exact abs_sub _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)] at htri
  nlinarith

/-- Exact remaining bilinear at the square-root cutoff. -/
def nonAliasingFejerSignedLowGCDBilinear
    (X N m : ℕ) : ℝ :=
  centeredLowGCDBilinear X X.sqrt
    (nonAliasingFejerPrefixWeight X N m)

/-- Square-root-cutoff specialization of the diagonal reduction. -/
theorem abs_nonAliasingFejer_positiveShift_sqrt_le_of_signedBilinear
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hbilinear :
      |nonAliasingFejerSignedLowGCDBilinear X N m| ≤
        C * centeredLowGCDTargetScale X) :
    |positiveShiftCenteredLowGCDCorrelation X X.sqrt
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 300) / 2) * centeredLowGCDTargetScale X := by
  have hY : 1 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    omega
  apply abs_nonAliasingFejer_positiveShift_le_of_bilinear
    hX hreg hm0 hm1 hY hC
  simpa [nonAliasingFejerSignedLowGCDBilinear] using hbilinear

/-- The unresolved square-root-cutoff bilinear splits into the signed coprime
Möbius-square term and the positive common-gcd classes. -/
theorem nonAliasingFejerSignedLowGCDBilinear_eq_coprime_add_nonCoprime
    {X N m : ℕ}
    (hX : 1 ≤ X) :
    nonAliasingFejerSignedLowGCDBilinear X N m =
      centeredCoprimeBilinear X
          (nonAliasingFejerPrefixWeight X N m) +
        centeredNonCoprimeLowGCDBilinear X X.sqrt
          (nonAliasingFejerPrefixWeight X N m) := by
  have hY : 1 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    simpa using hX
  unfold nonAliasingFejerSignedLowGCDBilinear
  exact centeredLowGCDBilinear_eq_coprime_add_nonCoprime
    hY (nonAliasingFejerPrefixWeight X N m)

/-- Fully signed form of the exact remaining estimate.  The coprime class is
kept as the Möbius-weighted square expansion; no termwise absolute values are
introduced. -/
theorem nonAliasingFejerSignedLowGCDBilinear_eq_mobiusSquare_add_nonCoprime
    {X N m : ℕ}
    (hX : 1 ≤ X) :
    nonAliasingFejerSignedLowGCDBilinear X N m =
      coprimeMobiusSquareExpansion X
          (nonAliasingFejerPrefixWeight X N m) +
        centeredNonCoprimeLowGCDBilinear X X.sqrt
          (nonAliasingFejerPrefixWeight X N m) := by
  rw [nonAliasingFejerSignedLowGCDBilinear_eq_coprime_add_nonCoprime hX,
    centeredCoprimeBilinear_eq_mobiusSquareExpansion]

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
