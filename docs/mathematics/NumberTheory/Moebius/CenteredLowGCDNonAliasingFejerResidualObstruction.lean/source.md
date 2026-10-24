# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerResidualObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6717c5764e123cdafe752a1d7e9567069d635976` · SHA-256 `fed6fe0637e0047b80ba9527b5e84b03a880eae8fc015a052907f47020773612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffCorrectionLogBarrier
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit
import Mathlib.Tactic

/-!
# Actual Fejér residual obstruction after gcd-cutoff inversion

At the historical period-`4X` Fejér weight, the remaining jointly signed
packet is exactly

`full centered weighted von Mangoldt mass squared
 + high-index cutoff-correction tail`.

The correction is source-bounded by finite counting at `log^5`, one logarithm
above the intended target.  An explicit theorem records that a one-log sharper
pointwise divisibility-tail bound would place the correction at target scale;
under that exact hypothesis, a target-scale estimate for the residual is
equivalent, up to an explicit constant, to a target-scale estimate for the
original centered smoothed-value square.

This is a scoped obstruction, not a proof of the missing estimate.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction
open GRWTSK.RiemannHypothesis

/-- Full centered weighted von Mangoldt mass for the historical Fejér weight. -/
def nonAliasingFejerCenteredVonMangoldtMass
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ octaveIndexSet X,
    nonAliasingFejerPrefixWeight X N m n *
      (ArithmeticFunction.vonMangoldt n - 1)

/-- The remaining residual is exactly the centered mass square plus the
high-index cutoff correction. -/
theorem nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
    {X N m : ℕ}
    (hX : 1 ≤ X) :
    nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m =
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 +
        gcdCutoffCorrectionTail X X.sqrt
          (nonAliasingFejerPrefixWeight X N m) := by
  unfold nonAliasingFejerSmallMobiusAndPositiveGCDResidual
    nonAliasingFejerCenteredVonMangoldtMass
  rw [lowCoprime_add_nonCoprime_eq_mass_sq_add_correction
      hX (nonAliasingFejerPrefixWeight X N m)]
  rw [centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one
    (by omega : 0 < X)]

/-- The currently available finite counting controls the difference between
the residual and the original centered mass square only at `log^5`. -/
theorem abs_nonAliasingFejerResidual_sub_centeredMass_sq_le_logFive
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m -
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2| ≤
        2304 * centeredLowGCDLogFiveScale X := by
  rw [nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
    (by omega : 1 ≤ X)]
  ring_nf
  apply abs_gcdCutoffCorrectionTail_sqrt_le_logFive hX
  intro n hn
  exact nonAliasingFejerPrefixWeight_mem_Icc
    hreg hm0 hm1 hn

/-- Exact sharpened tail hypothesis needed to remove the one-log deficit for
the actual historical Fejér weight. -/
def NonAliasingFejerSharpDivisibilityTail
    (X N m : ℕ) : Prop :=
  ∀ r ∈ highGCDCutoffIndexSet X X.sqrt,
    |centeredDivisibilityTail X
        (nonAliasingFejerPrefixWeight X N m) r| ≤
      ((4 * X / r : ℕ) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ)

/-- Under the explicit sharp-tail hypothesis, the cutoff correction is at the
original target scale. -/
theorem abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m) :
    |gcdCutoffCorrectionTail X X.sqrt
      (nonAliasingFejerPrefixWeight X N m)| ≤
        256 * centeredLowGCDTargetScale X := by
  exact
    abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail
      hX hsharp

/-- With a target-scale correction, a residual estimate implies the original
centered smoothed-value square estimate. -/
theorem centeredMass_sq_le_of_residual_and_sharpTail
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hresidual :
      |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
        C * centeredLowGCDTargetScale X) :
    (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
      (C + 256) * centeredLowGCDTargetScale X := by
  have hid :=
    nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
      (X := X) (N := N) (m := m) (by omega : 1 ≤ X)
  have hcorr :=
    abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail
      hX hsharp
  have hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 =
        nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m -
          gcdCutoffCorrectionTail X X.sqrt
            (nonAliasingFejerPrefixWeight X N m) := by
    linarith
  have htri :
      |(nonAliasingFejerCenteredVonMangoldtMass X N m)^2| ≤
        |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| +
          |gcdCutoffCorrectionTail X X.sqrt
            (nonAliasingFejerPrefixWeight X N m)| := by
    rw [hmass]
    exact abs_sub _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  rw [abs_of_nonneg (sq_nonneg _)] at htri
  nlinarith

/-- Conversely, under the same explicit correction control, the original
centered mass-square estimate implies the residual estimate. -/
theorem abs_residual_le_of_centeredMass_sq_and_sharpTail
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
        C * centeredLowGCDTargetScale X) :
    |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
      (C + 256) * centeredLowGCDTargetScale X := by
  rw [nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
    (X := X) (N := N) (m := m) (by omega : 1 ≤ X)]
  have hcorr :=
    abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail
      hX hsharp
  have htri :
      |(nonAliasingFejerCenteredVonMangoldtMass X N m)^2 +
        gcdCutoffCorrectionTail X X.sqrt
          (nonAliasingFejerPrefixWeight X N m)| ≤
      |(nonAliasingFejerCenteredVonMangoldtMass X N m)^2| +
        |gcdCutoffCorrectionTail X X.sqrt
          (nonAliasingFejerPrefixWeight X N m)| :=
    abs_add _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  rw [abs_of_nonneg (sq_nonneg _)] at htri
  nlinarith

/-- The sharp-tail hypothesis plus a centered mass-square estimate closes the
actual positive-shift target with all previously isolated finite constants. -/
theorem abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
        C * centeredLowGCDTargetScale X) :
    |positiveShiftCenteredLowGCDCorrelation X X.sqrt
        (nonAliasingFejerPrefixWeight X N m)| ≤
      ((C + 1708) / 2) * centeredLowGCDTargetScale X := by
  have hres :=
    abs_residual_le_of_centeredMass_sq_and_sharpTail
      hX hsharp hC hmass
  have hC' : 0 ≤ C + 256 := by linarith
  simpa [add_assoc, add_left_comm, add_comm] using
    abs_nonAliasingFejer_positiveShift_sqrt_le_of_residual
      hX hreg hm0 hm1 hC' hres

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```
