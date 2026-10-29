import FormalResearch.RiemannHypothesis.SourcePairedPrimeWork

/-!
# Actual correlated derivative-phase prime error

The negative phase has nonzero mass. Its normalized actual error has a constant
budget from weighted-prime Mertens. The two-variable error difference retains
both phases and the independent diagonal main term. No correlated tail witness
is constructed.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages

open MeasureTheory
open scoped Interval
open SourcePairedPrimeWork SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The actual negative derivative phase mean; its denominator is positive for A at least one. -/
def negativeErrorMean (A : ℝ) : ℝ := negativeSlopeWork A / negativeMass A

/-- The complete iterated source interaction uses the difference of two actual prime errors. -/
def pairedErrorContrast (A : ℝ) : ℝ :=
  (1 / negativeMass A) * ∫ s in 0..2*A, ∫ t in 0..2*A,
    (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t

/-- An open correlated lower target; the independently defined source main term is retained. -/
def PairedContrastTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    diagonalMainCoefficient A * A - C ≤ pairedErrorContrast A

theorem negativeMass_ge_one {A : ℝ} (hA : 1 ≤ A) : 1 ≤ negativeMass A := by
  rw [negativeMass_eq_positive_add_one hA]
  linarith [positiveMass_nonneg (show 0 < A by linarith)]

theorem negativeMass_pos {A : ℝ} (hA : 1 ≤ A) : 0 < negativeMass A :=
  lt_of_lt_of_le zero_lt_one (negativeMass_ge_one hA)

/-- Pointwise inner quadrature retains the actual error at both source positions. -/
theorem contrast_inner_eq {A : ℝ} (hA : 0 < A) (s : ℝ) :
    (∫ t in 0..2*A,
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t) =
      positiveSlope A s * (primeLogError s * negativeMass A - negativeSlopeWork A) := by
  have he : (fun t : ℝ =>
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t) =
      (fun t : ℝ => positiveSlope A s *
        (primeLogError s * negativeSlope A t - primeLogError t * negativeSlope A t)) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_const_mul, intervalIntegral.integral_sub
    ((negativeSlope_intervalIntegrable hA).const_mul (primeLogError s))
    (negativeSlopeWork_intervalIntegrable hA), intervalIntegral.integral_const_mul]
  rfl

theorem contrast_outer_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun s => ∫ t in 0..2*A,
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t)
      volume 0 (2*A) := by
  simp_rw [contrast_inner_eq hA]
  have he : (fun s : ℝ => positiveSlope A s *
      (primeLogError s * negativeMass A - negativeSlopeWork A)) =
      (fun s : ℝ => negativeMass A * (primeLogError s * positiveSlope A s) -
        negativeSlopeWork A * positiveSlope A s) := by
    funext s
    ring
  rw [he]
  exact ((positiveSlopeWork_intervalIntegrable hA).const_mul (negativeMass A)).sub
    ((positiveSlope_intervalIntegrable hA).const_mul (negativeSlopeWork A))

/-- The complete two-variable reconstruction precedes any estimate. -/
theorem contrast_integral_eq {A : ℝ} (hA : 0 < A) :
    (∫ s in 0..2*A, ∫ t in 0..2*A,
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t) =
      negativeMass A * positiveSlopeWork A - negativeSlopeWork A * positiveMass A := by
  simp_rw [contrast_inner_eq hA]
  have he : (fun s : ℝ => positiveSlope A s *
      (primeLogError s * negativeMass A - negativeSlopeWork A)) =
      (fun s : ℝ => negativeMass A * (primeLogError s * positiveSlope A s) -
        negativeSlopeWork A * positiveSlope A s) := by
    funext s
    ring
  rw [he, intervalIntegral.integral_sub
    ((positiveSlopeWork_intervalIntegrable hA).const_mul (negativeMass A))
    ((positiveSlope_intervalIntegrable hA).const_mul (negativeSlopeWork A)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  rfl

theorem pairedErrorContrast_eq {A : ℝ} (hA : 1 ≤ A) :
    pairedErrorContrast A = positiveSlopeWork A - positiveMass A * negativeErrorMean A := by
  rw [pairedErrorContrast, contrast_integral_eq (show 0 < A by linarith), negativeErrorMean]
  field_simp [ne_of_gt (negativeMass_pos hA)]

/-- No positive-phase division is used, so a zero positive mass is not excluded. -/
theorem criticalSignedWork_eq_contrast_sub_mean {A : ℝ} (hA : 1 ≤ A) :
    criticalSignedWork A = pairedErrorContrast A - negativeErrorMean A := by
  rw [criticalSignedWork_eq_paired (show 0 < A by linarith), pairedErrorContrast_eq hA,
    negativeErrorMean, negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A + 1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact ne_of_gt (negativeMass_pos hA)
  field_simp [hn]
  ring

/-- Only this individual normalized mean uses a post-reconstruction absolute estimate. -/
theorem negativeSlopeWork_abs_le_mass {A : ℝ} (hA : 1 ≤ A) (C : ℝ)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) :
    |negativeSlopeWork A| ≤ C * negativeMass A := by
  have hp : 0 < A := by linarith
  have hi := negativeSlopeWork_intervalIntegrable hp
  have hb : (∫ t in 0..2*A, |primeLogError t * negativeSlope A t|) ≤
      ∫ t in 0..2*A, C * negativeSlope A t := by
    apply intervalIntegral.integral_mono_on (show 0 ≤ 2*A by linarith) hi.abs
      ((negativeSlope_intervalIntegrable hp).const_mul C)
    intro t ht
    rw [abs_mul, abs_of_nonneg (negativeSlope_nonneg A t)]
    exact mul_le_mul_of_nonneg_right (hC t ht.1) (negativeSlope_nonneg A t)
  exact ((intervalIntegral.abs_integral_le_integral_abs (by linarith)).trans hb).trans_eq
    (intervalIntegral.integral_const_mul C _)

theorem negativeErrorMean_abs_le {A : ℝ} (hA : 1 ≤ A) (C : ℝ)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) :
    |negativeErrorMean A| ≤ C := by
  unfold negativeErrorMean
  rw [abs_div, abs_of_pos (negativeMass_pos hA), div_le_iff₀ (negativeMass_pos hA)]
  exact negativeSlopeWork_abs_le_mass hA C hC

/-- This unconditional witness bounds one mean, not the required correlated contrast. -/
theorem negativeErrorMean_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |negativeErrorMean A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := primeLogError_uniformly_bounded
  exact ⟨C, hC0, fun A hA => negativeErrorMean_abs_le hA C hC⟩

/-- The independent full continuous and diagonal contributions remain in the surplus. -/
theorem firstPrimeStorageSurplus_eq_contrast {A : ℝ} (hA : 1 ≤ A) :
    SourceMangoldtStorage.firstPrimeStorageSurplus A = pairedErrorContrast A -
      negativeErrorMean A - criticalContinuousMoment A - diagonalMainCoefficient A * A := by
  rw [firstPrimeStorageSurplus_eq_paired hA,
    ← criticalSignedWork_eq_paired (show 0 < A by linarith),
    criticalSignedWork_eq_contrast_sub_mean hA]



/-- Two actual errors disclose the complete oriented closed-prime window and continuous drift. -/
theorem primeError_difference_window (s t : ℝ) :
    primeLogError s - primeLogError t = primeLogWindow t s (fun _ => 1) - (s-t) := by
  simp only [primeLogError, primeLogWindow, primeLogSum, mul_one, primeLogPrefix_eq_sum]
  ring

/-- Window disclosure leaves the full cross-phase integral, including its continuous drift. -/
theorem pairedErrorContrast_eq_prime_window (A : ℝ) :
    pairedErrorContrast A =
      (1 / negativeMass A) * ∫ s in 0..2*A, ∫ t in 0..2*A,
        (primeLogWindow t s (fun _ => 1) - (s-t)) * positiveSlope A s * negativeSlope A t := by
  unfold pairedErrorContrast
  simp_rw [primeError_difference_window]

/-- Before the first prime the actual error difference is the negative continuous drift. -/
theorem primeError_difference_before_first {s t : ℝ}
    (hs : s < Real.log 2) (ht : t < Real.log 2) :
    primeLogError s - primeLogError t = t-s := by
  rw [primeLogError_below_first_prime hs, primeLogError_below_first_prime ht]
  ring

/-- Actual prime error is not monotone; this says nothing about the full weighted contrast sign. -/
theorem primeError_negative_difference_fixture :
    primeLogError (Real.log 2 / 2) - primeLogError 0 < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  rw [primeError_difference_before_first (by linarith) (by linarith)]
  linarith

/-- Identical scalar centering is retained in the actual negative mean. -/
def centeredNegativeErrorMean (θ A : ℝ) : ℝ := centeredNegativeWork θ A / negativeMass A

/-- Both error occurrences receive the same disclosed scalar, which changes no prime row. -/
def centeredPairedErrorContrast (θ A : ℝ) : ℝ :=
  (1 / negativeMass A) * ∫ s in 0..2*A, ∫ t in 0..2*A,
    ((primeLogError s + θ) - (primeLogError t + θ)) * positiveSlope A s * negativeSlope A t

/-- Centering cancels in the two-position contrast, independently of arithmetic estimates. -/
theorem centeredPairedErrorContrast_eq (θ A : ℝ) :
    centeredPairedErrorContrast θ A = pairedErrorContrast A := by
  unfold centeredPairedErrorContrast pairedErrorContrast
  simp only [add_sub_add_right_eq_sub]

theorem centeredNegativeErrorMean_eq {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    centeredNegativeErrorMean θ A = negativeErrorMean A + θ := by
  rw [centeredNegativeErrorMean, centeredNegativeWork_eq (show 0 < A by linarith),
    negativeErrorMean]
  field_simp [ne_of_gt (negativeMass_pos hA)]

/-- Disclosing a scalar cannot silently discard the original endpoint compensation. -/
theorem criticalSignedWork_eq_centered_contrast {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    criticalSignedWork A = θ + centeredPairedErrorContrast θ A - centeredNegativeErrorMean θ A := by
  rw [centeredPairedErrorContrast_eq, centeredNegativeErrorMean_eq hA,
    criticalSignedWork_eq_contrast_sub_mean hA]
  ring

/-- Uniformity of the one mean transfers actual witnessed tails in both directions.
This equivalence constructs no correlated arithmetic witness. -/
theorem pairedContrast_tail_iff_criticalAbel_tail :
    PairedContrastTailLowerBound ↔ CriticalAbelTailLowerBound := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  constructor
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C+B, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    rw [criticalSignedWork_eq_contrast_sub_mean hA]
    have hm := (abs_le.mp (hB A hA)).2
    linarith [h A hRA]
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C+B, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (hB A hA)).1
    have hw := h A hRA
    rw [criticalSignedWork_eq_contrast_sub_mean hA] at hw
    linarith

/-- This reaches the unchanged conditional frontier, without proving either side. -/
theorem mertens_residual_tail_iff_pairedContrast_tail :
    MertensResidualTailUpperBound ↔ PairedContrastTailLowerBound :=
  mertens_residual_tail_iff_criticalAbel_tail.trans pairedContrast_tail_iff_criticalAbel_tail.symm

end FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages
