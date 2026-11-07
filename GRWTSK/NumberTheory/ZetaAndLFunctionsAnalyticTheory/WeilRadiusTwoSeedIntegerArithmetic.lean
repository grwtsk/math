/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedIntegerDecision
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedRationalArithmetic

/-!
# Clearing denominators in the radius-two seed arithmetic

The scaled signed numerators are exact polynomial expressions in the
frozen signal, diagonal, remote boundary and signed moment inputs.
Each numerator is the positive denominator times the corresponding
rational error. Multiplying the two signed inequalities by that
denominator preserves their directions and recovers the absolute-value
bound. The mode factor is positive in both mode-divided expressions.
The comparison retains all three rational radii and the exact signal equality.

This module proves the pointwise equivalence with the rational
checker. Archive loading, mode coverage and literal scalar enclosures
are separate. Independent mathematical review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 5000000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedIntegerArithmetic

open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoArchivedRemoteDiagonal RadiusTwoLiteralDerivativePrice
open RadiusTwoSeedIntegerDecision
open private rho archiveTotal archiveLocal boundaryFactor bulkCenter
  fraction massCenter piCenter from
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoArchivedRemoteDiagonal

local notation "D" => (RadiusTwoSeedIntegerDecision.common : ℚ)

def asInput (a : Input) : RadiusTwoSeedRationalArithmetic.Inputs :=
  ⟨a.mode, a.signal, a.boundary, a.core, a.toeplitz, a.hankel⟩

def asRaw (v : Raw) : RadiusTwoSeedRationalArithmetic.Raw :=
  ⟨v.diag, v.firstPrimal, v.first, v.signal, v.second⟩

private theorem cSignal_eq :
    (cSignal : ℚ) = D / RadiusTwoSeedRationalArithmetic.signalScale := by
  norm_num [cSignal, common, RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cCovDiag_eq :
    (cCovDiag : ℚ) = D * (25/39) /
      (RadiusTwoSeedRationalArithmetic.kernelScale*RadiusTwoSeedRationalArithmetic.signalScale^2) := by
  norm_num [cCovDiag, common, RadiusTwoSeedRationalArithmetic.kernelScale,
    RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cAlphaDiag_eq :
    (cAlphaDiag : ℚ) = D * RadiusTwoSeedRationalArithmetic.alpha /
      RadiusTwoSeedRationalArithmetic.signalScale^2 := by
  norm_num [cAlphaDiag, common, RadiusTwoSeedRationalArithmetic.alpha,
    RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cDiagSq_eq :
    (cDiagSq : ℚ) = D * (archivedDerivativeCenter + rho*archiveTotal*bulkCenter) := by
  norm_num [cDiagSq, common, archivedDerivativeCenter, rho, archiveTotal, boundaryFactor, bulkCenter,
    fraction, archivedMoment, massCenter, piCenter]

private theorem cBoundary_eq :
    (cBoundary : ℚ) = D * rho*archiveTotal*boundaryFactor /
      RadiusTwoSeedRationalArithmetic.signalScale := by
  norm_num [cBoundary, common, rho, archiveTotal, boundaryFactor, bulkCenter, fraction, archivedMoment,
    massCenter, piCenter, RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cRawDiag_eq :
    (cRawDiag : ℚ) = D / RadiusTwoSeedRationalArithmetic.rawGeneratorScale := by
  norm_num [cRawDiag, common, RadiusTwoSeedRationalArithmetic.rawGeneratorScale]

private theorem cMargin_eq : (cMargin : ℚ) = D / 10 := by
  norm_num [cMargin, common]

private theorem cCovFirst_eq :
    (cCovFirst : ℚ) = D * (50/39) /
      (RadiusTwoSeedRationalArithmetic.kernelScale*RadiusTwoSeedRationalArithmetic.signalScale^2) := by
  norm_num [cCovFirst, common, RadiusTwoSeedRationalArithmetic.kernelScale,
    RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cDelta_eq : (cDelta : ℚ) = D * archivedDerivativeCenter := by
  norm_num [cDelta, common, archivedDerivativeCenter]

private theorem cCovSecond_eq :
    (cCovSecond : ℚ) = D * (50/39) /
      (RadiusTwoSeedRationalArithmetic.kernelScale*RadiusTwoSeedRationalArithmetic.signalScale) := by
  norm_num [cCovSecond, common, RadiusTwoSeedRationalArithmetic.kernelScale,
    RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cAlphaSecond_eq :
    (cAlphaSecond : ℚ) = D * RadiusTwoSeedRationalArithmetic.alpha /
      RadiusTwoSeedRationalArithmetic.signalScale := by
  norm_num [cAlphaSecond, common, RadiusTwoSeedRationalArithmetic.alpha,
    RadiusTwoSeedRationalArithmetic.signalScale]

private theorem cRawSecond_eq :
    (cRawSecond : ℚ) = D * 512 / RadiusTwoSeedRationalArithmetic.rawGeneratorScale := by
  norm_num [cRawSecond, common, RadiusTwoSeedRationalArithmetic.rawGeneratorScale]

private theorem scalePositive : 0 < common := by norm_num [common]

theorem firstNumerator_eq (a : Input) (v : Raw) :
    (firstNumerator a v : ℚ) = D *
      (RadiusTwoSeedRationalArithmetic.observedFirst (asInput a) -
        RadiusTwoSeedRationalArithmetic.rawFirst (asRaw v)) := by
  unfold firstNumerator covarianceFirst RadiusTwoSeedRationalArithmetic.observedFirst
    RadiusTwoSeedRationalArithmetic.rawFirst RadiusTwoSeedRationalArithmetic.covariance
    RadiusTwoSeedRationalArithmetic.gridMoment RadiusTwoSeedRationalArithmetic.centeredSignal
  dsimp only [asInput, asRaw, Fin.val_zero, Fin.val_one]
  push_cast
  rw [cSignal_eq, cCovFirst_eq, cDelta_eq]
  simp only [show (2 : Fin 3).val = 2 from rfl, pow_one]
  field_simp [RadiusTwoSeedRationalArithmetic.signalScale, RadiusTwoSeedRationalArithmetic.kernelScale]
  ring

theorem secondNumerator_eq (a : Input) (v : Raw) (hm : 0 < a.mode) :
    (secondNumerator a v : ℚ) = D * (a.mode : ℚ) *
      (RadiusTwoSeedRationalArithmetic.observedSecond (asInput a) -
        RadiusTwoSeedRationalArithmetic.rawSecond a.mode (asRaw v)) := by
  have hm0 : (a.mode : ℚ) ≠ 0 := (show (0 : ℚ) < a.mode by exact_mod_cast hm).ne'
  unfold secondNumerator covarianceSecond RadiusTwoSeedRationalArithmetic.observedSecond
    RadiusTwoSeedRationalArithmetic.rawSecond RadiusTwoSeedRationalArithmetic.covariance
    RadiusTwoSeedRationalArithmetic.gridMoment RadiusTwoSeedRationalArithmetic.centeredSignal
  dsimp only [asInput, asRaw, Fin.val_zero, Fin.val_one]
  push_cast
  rw [cCovSecond_eq, cAlphaSecond_eq, cRawSecond_eq]
  norm_num only [pow_zero, pow_one, mul_one]
  field_simp [hm0, RadiusTwoSeedRationalArithmetic.signalScale, RadiusTwoSeedRationalArithmetic.kernelScale,
    RadiusTwoSeedRationalArithmetic.rawGeneratorScale]

theorem diagNumerator_eq (a : Input) (v : Raw) (hm : 0 < a.mode) :
    (diagNumerator a v : ℚ) = D * (a.mode : ℚ) *
      (RadiusTwoSeedRationalArithmetic.observedDiagonal (asInput a) -
        RadiusTwoSeedRationalArithmetic.rawDiagonal (asRaw v)) := by
  have hm0 : (a.mode : ℚ) ≠ 0 := (show (0 : ℚ) < a.mode by exact_mod_cast hm).ne'
  unfold diagNumerator covarianceDiagonal RadiusTwoSeedRationalArithmetic.observedDiagonal
    RadiusTwoSeedRationalArithmetic.rawDiagonal RadiusTwoSeedRationalArithmetic.covariance
    RadiusTwoSeedRationalArithmetic.gridMoment RadiusTwoSeedRationalArithmetic.centeredSignal
    archivedRemoteDiagonal archiveLocal
  dsimp only [asInput, asRaw, Fin.val_zero, Fin.val_one]
  push_cast
  rw [cSignal_eq, cAlphaDiag_eq, cDiagSq_eq, cBoundary_eq, cRawDiag_eq, cMargin_eq, cCovDiag_eq]
  simp only [show (2 : Fin 3).val = 2 from rfl, pow_zero, pow_one, mul_one]
  field_simp [hm0, RadiusTwoSeedRationalArithmetic.signalScale, RadiusTwoSeedRationalArithmetic.kernelScale,
    RadiusTwoSeedRationalArithmetic.rawGeneratorScale]
  ring

private theorem fits_iff (d n : ℤ) (x : ℚ) (hd : 0 < d) (he : (n : ℚ) = (d : ℚ)*x) :
    Fits d n ↔ |x| ≤ 9/10^8 := by
  have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
  have hPos : (0 : ℚ) < (d : ℚ)*100000000 := by positivity
  unfold Fits
  rw [abs_le]
  rw [← Int.cast_le (R := ℚ), ← Int.cast_le (R := ℚ)]
  push_cast
  rw [he]
  constructor
  · rintro ⟨hl,hu⟩
    constructor
    · apply (le_of_mul_le_mul_right · hPos)
      nlinarith only [hl]
    · apply (le_of_mul_le_mul_right · hPos)
      nlinarith only [hu]
  · rintro ⟨hl,hu⟩
    have hl' := mul_le_mul_of_nonneg_right hl hPos.le
    have hu' := mul_le_mul_of_nonneg_right hu hPos.le
    exact ⟨by nlinarith only [hl'], by nlinarith only [hu']⟩

/-- At a positive physical mode the division-free checks are exactly the rational checks. -/
theorem checked_iff (a : Input) (v : Raw) (hm : 0 < a.mode) :
    Checked a v ↔ RadiusTwoSeedRationalArithmetic.Checked (asInput a) (asRaw v) := by
  have hmI : (0 : ℤ) < a.mode := by exact_mod_cast hm
  have hd : 0 < common*(a.mode : ℤ) := mul_pos scalePositive hmI
  unfold Checked RadiusTwoSeedRationalArithmetic.Checked
  rw [fits_iff _ _ _ hd (by push_cast; exact diagNumerator_eq a v hm),
      fits_iff _ _ _ scalePositive (firstNumerator_eq a v),
      fits_iff _ _ _ hd (by push_cast; exact secondNumerator_eq a v hm)]
  rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedIntegerArithmetic
