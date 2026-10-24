-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PositiveSlope.Variantf38e76bbbac692773aed587b5f64e676d9ebab3aee7a8203fda16581b5919749","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f38e76bbbac692773aed587b5f64e676d9ebab3aee7a8203fda16581b5919749","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PositiveSlope.Variantf38e76bbbac692773aed587b5f64e676d9ebab3aee7a8203fda16581b5919749","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f38e76bbbac692773aed587b5f64e676d9ebab3aee7a8203fda16581b5919749","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/critical-cancellation-prerequisites-20261007T020659Z/captured/5-SourcePairedPrimeWork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-!
# Actual paired derivative work

Both derivative phases retain the literal prime error. The full source endpoints
fix their mass difference. No work channel is asserted to be nonnegative, and
no arithmetic budget or changed Vaughan counterterm is introduced.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PositiveSlope.Variantf38e76bbbac692773aed587b5f64e676d9ebab3aee7a8203fda16581b5919749

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedPrimeWork

open MeasureTheory
open scoped Interval
open SourceFirstPrimeAbel SourceDiagonalMainTerm SourceMangoldtStorage WeightedPrimeAbel

/-- The positive part of the actual derivative, without taking the error's absolute value. -/
def positiveSlope (A t : ℝ) : ℝ := max (deriv (criticalPrimeTest A) t) 0

/-- The negative derivative phase has positive magnitude, with the same actual prime error. -/
def negativeSlope (A t : ℝ) : ℝ := max (-deriv (criticalPrimeTest A) t) 0

/-- Actual positive derivative mass on the complete source interval. -/
def positiveMass (A : ℝ) : ℝ := ∫ t in 0..2*A, positiveSlope A t

/-- Actual negative derivative mass on the same interval. -/
def negativeMass (A : ℝ) : ℝ := ∫ t in 0..2*A, negativeSlope A t

/-- This work is signed: positivity of its slope does not constrain the error. -/
def positiveSlopeWork (A : ℝ) : ℝ :=
  ∫ t in 0..2*A, primeLogError t * positiveSlope A t

/-- This work is also signed; the negative derivative phase is subtracted only at reconstruction. -/
def negativeSlopeWork (A : ℝ) : ℝ :=
  ∫ t in 0..2*A, primeLogError t * negativeSlope A t

/-- Scalar centering is kept in the positive work, without changing any arithmetic row. -/
def centeredPositiveWork (θ A : ℝ) : ℝ :=
  ∫ t in 0..2*A, (primeLogError t + θ) * positiveSlope A t

/-- The identical scalar centering is retained in the other derivative phase. -/
def centeredNegativeWork (θ A : ℝ) : ℝ :=
  ∫ t in 0..2*A, (primeLogError t + θ) * negativeSlope A t

theorem positiveSlope_nonneg (A t : ℝ) : 0 ≤ positiveSlope A t := le_max_right _ _

theorem negativeSlope_nonneg (A t : ℝ) : 0 ≤ negativeSlope A t := le_max_right _ _

theorem slope_difference (A t : ℝ) :
    positiveSlope A t - negativeSlope A t = deriv (criticalPrimeTest A) t := by
  exact max_zero_sub_max_neg_zero_eq_self _

theorem slope_sum (A t : ℝ) :
    positiveSlope A t + negativeSlope A t = |deriv (criticalPrimeTest A) t| := by
  dsimp only [positiveSlope, negativeSlope]
  by_cases h : 0 ≤ deriv (criticalPrimeTest A) t
  · rw [max_eq_left h, max_eq_right (neg_nonpos.mpr h), abs_of_nonneg h, add_zero]
  · have h' : deriv (criticalPrimeTest A) t ≤ 0 := le_of_not_ge h
    rw [max_eq_right h', max_eq_left (neg_nonneg.mpr h'), abs_of_nonpos h', zero_add]

theorem positiveSlope_continuous {A : ℝ} (hA : 0 < A) : Continuous (positiveSlope A) :=
  (criticalPrimeTest_contDiff A hA).continuous_deriv_one.max continuous_const

theorem negativeSlope_continuous {A : ℝ} (hA : 0 < A) : Continuous (negativeSlope A) :=
  (criticalPrimeTest_contDiff A hA).continuous_deriv_one.neg.max continuous_const

theorem positiveSlope_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (positiveSlope A) volume 0 (2*A) :=
  (positiveSlope_continuous hA).intervalIntegrable _ _

theorem negativeSlope_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (negativeSlope A) volume 0 (2*A) :=
  (negativeSlope_continuous hA).intervalIntegrable _ _

/-- Existing finite-step integrability with the identity test supplies error integrability. -/
theorem actualPrimeError_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable primeLogError volume 0 (2*A) := by
  simpa only [deriv_id'', mul_one] using
    primeLogError_mul_deriv_intervalIntegrable 0 (2*A) (by linarith)
      (fun t : ℝ => t) contDiff_id

theorem positiveSlopeWork_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun t => primeLogError t * positiveSlope A t) volume 0 (2*A) :=
  (actualPrimeError_intervalIntegrable hA).mul_continuousOn
    (positiveSlope_continuous hA).continuousOn

theorem negativeSlopeWork_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun t => primeLogError t * negativeSlope A t) volume 0 (2*A) :=
  (actualPrimeError_intervalIntegrable hA).mul_continuousOn
    (negativeSlope_continuous hA).continuousOn

theorem positiveMass_nonneg {A : ℝ} (hA : 0 < A) : 0 ≤ positiveMass A :=
  intervalIntegral.integral_nonneg (by linarith) (fun t _ => positiveSlope_nonneg A t)

theorem negativeMass_nonneg {A : ℝ} (hA : 0 < A) : 0 ≤ negativeMass A :=
  intervalIntegral.integral_nonneg (by linarith) (fun t _ => negativeSlope_nonneg A t)

/-- The difference is the literal FTC endpoint -1, with the source normalization scope preserved. -/
theorem mass_difference {A : ℝ} (hA : 1 ≤ A) : positiveMass A - negativeMass A = -1 := by
  have hp : 0 < A := by linarith
  rw [positiveMass, negativeMass, ← intervalIntegral.integral_sub
    (positiveSlope_intervalIntegrable hp) (negativeSlope_intervalIntegrable hp)]
  simp_rw [slope_difference]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t))
    ((criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable _ _),
    criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA]
  norm_num

theorem negativeMass_eq_positive_add_one {A : ℝ} (hA : 1 ≤ A) :
    negativeMass A = positiveMass A + 1 := by linarith [mass_difference hA]

/-- Both derivative magnitudes survive; this is not an absolute arithmetic consumer. -/
theorem variation_eq_mass_sum {A : ℝ} (hA : 0 < A) :
    (∫ t in 0..2*A, |deriv (criticalPrimeTest A) t|) = positiveMass A + negativeMass A := by
  simp_rw [← slope_sum]
  exact intervalIntegral.integral_add (positiveSlope_intervalIntegrable hA)
    (negativeSlope_intervalIntegrable hA)

theorem variation_eq_twice_positive_add_one {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, |deriv (criticalPrimeTest A) t|) = 2*positiveMass A + 1 := by
  rw [variation_eq_mass_sum (by linarith), negativeMass_eq_positive_add_one hA]
  ring

/-- Reconstruction is exact before any arithmetic estimate, retaining both signed phases. -/
theorem criticalSignedWork_eq_paired {A : ℝ} (hA : 0 < A) :
    criticalSignedWork A = positiveSlopeWork A - negativeSlopeWork A := by
  rw [positiveSlopeWork, negativeSlopeWork, ← intervalIntegral.integral_sub
    (positiveSlopeWork_intervalIntegrable hA) (negativeSlopeWork_intervalIntegrable hA)]
  simp_rw [← mul_sub, slope_difference]
  rfl

/-- The main compensation remains alongside the full paired work. -/
theorem criticalSignedWork_minus_main_eq_paired {A : ℝ} (hA : 0 < A) :
    criticalSignedWork A - diagonalMainCoefficient A * A =
      positiveSlopeWork A - negativeSlopeWork A - diagonalMainCoefficient A * A := by
  rw [criticalSignedWork_eq_paired hA]

/-- Original first-prime moment retains its full continuous half. -/
theorem firstPrimeMoment_eq_paired {A : ℝ} (hA : 1 ≤ A) :
    SourcePrimePowerPartition.firstPrimeMoment A =
      criticalContinuousMoment A - positiveSlopeWork A + negativeSlopeWork A := by
  rw [firstPrimeMoment_eq_continuous_sub_work A hA,
    criticalSignedWork_eq_paired (by linarith)]
  ring

/-- The independently defined actual storage surplus retains H and kappa*A. -/
theorem firstPrimeStorageSurplus_eq_paired {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeStorageSurplus A = positiveSlopeWork A - negativeSlopeWork A -
      criticalContinuousMoment A - diagonalMainCoefficient A * A := by
  rw [firstPrimeStorageSurplus_eq (by linarith), firstPrimeMoment_eq_paired hA]
  ring

theorem centeredPositiveWork_eq {A : ℝ} (hA : 0 < A) (θ : ℝ) :
    centeredPositiveWork θ A = positiveSlopeWork A + θ * positiveMass A := by
  unfold centeredPositiveWork positiveSlopeWork positiveMass
  simp_rw [add_mul]
  rw [intervalIntegral.integral_add (positiveSlopeWork_intervalIntegrable hA)
    ((positiveSlope_intervalIntegrable hA).const_mul θ), intervalIntegral.integral_const_mul]

theorem centeredNegativeWork_eq {A : ℝ} (hA : 0 < A) (θ : ℝ) :
    centeredNegativeWork θ A = negativeSlopeWork A + θ * negativeMass A := by
  unfold centeredNegativeWork negativeSlopeWork negativeMass
  simp_rw [add_mul]
  rw [intervalIntegral.integral_add (negativeSlopeWork_intervalIntegrable hA)
    ((negativeSlope_intervalIntegrable hA).const_mul θ), intervalIntegral.integral_const_mul]

/-- Identical scalar centering produces the endpoint theta, rather than changing the prime row. -/
theorem criticalSignedWork_eq_centered_paired {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    criticalSignedWork A = θ + centeredPositiveWork θ A - centeredNegativeWork θ A := by
  rw [criticalSignedWork_eq_paired (by linarith), centeredPositiveWork_eq (by linarith),
    centeredNegativeWork_eq (by linarith), negativeMass_eq_positive_add_one hA]
  ring

/-- No estimate or identification with the Vaughan main term is inserted in this equality. -/
theorem criticalSignedWork_minus_main_eq_centered_paired {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    criticalSignedWork A - diagonalMainCoefficient A * A =
      θ + centeredPositiveWork θ A - centeredNegativeWork θ A - diagonalMainCoefficient A * A := by
  rw [criticalSignedWork_eq_centered_paired hA θ]

end FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
