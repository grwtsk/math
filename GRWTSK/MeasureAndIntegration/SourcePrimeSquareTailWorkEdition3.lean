import FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients

/-!
# PRIVATE, UNCOMPILED candidate: the actual prime-square tail work

This file is a resumable proof attempt, not a checked source module. It is not
imported by the repository root. Native compilation is deferred until the root
releases the complete-verifier lane. No arithmetic tail witness is asserted.

AI attribution: drafted with OpenAI Codex; no new proof claim is made here.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork

open MeasureTheory
open scoped Interval
open SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages
open SourceHigherPrimePowerCoefficients SourcePrimeSquareMainTerm
open WeightedPrimeAbel SourceDiagonalPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent

/-- Prefix weight uses the actual square threshold 2log(p). -/
def squarePrefixCoefficient (p : ℕ) : ℝ := Real.log (p : ℝ) / (p : ℝ)^2

/-- Only numerical coefficient summability is transported from the exponent-four slice. -/
theorem squarePrefixCoefficient_eq_slice (p : Nat.Primes) :
    squarePrefixCoefficient p = higherAtomWeight (p, 1) := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have he : primeRatio p ^ 4 = (((p : ℕ) : ℝ)^2)⁻¹ := by
    unfold primeRatio
    rw [← Real.rpow_mul_natCast hp0.le]
    rw [show (-(1 : ℝ)/2)*(4 : ℕ) = -(2 : ℝ) by norm_num,
      Real.rpow_neg hp0.le, Real.rpow_two]
  simp only [higherAtomWeight, higherAtomExponent]
  norm_num only [Nat.reduceAdd]
  rw [he]
  simp only [squarePrefixCoefficient, div_eq_mul_inv]

theorem squarePrefixCoefficient_summable :
    Summable (fun p : Nat.Primes => squarePrefixCoefficient p) := by
  have hi : Function.Injective (fun p : Nat.Primes => (p, (1 : ℕ))) := by
    intro p q h
    exact congrArg Prod.fst h
  simpa only [← squarePrefixCoefficient_eq_slice] using
    higherAtomWeight_summable.comp_injective hi

theorem squarePrefixCoefficient_pos (p : Nat.Primes) :
    0 < squarePrefixCoefficient p := by
  rw [squarePrefixCoefficient_eq_slice]
  exact higherAtomWeight_pos _

/-- Independently specified complete, convergent square-prefix mass. -/
def squarePrefixBaseline : ℝ := ∑' p : Nat.Primes, squarePrefixCoefficient p

/-- All closed prime squares below the literal logarithmic argument. -/
def squarePrefix (u : ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory (u/2), squarePrefixCoefficient p

/-- Source-independent tail, with no A cutoff in its full baseline. -/
def squareTail (u : ℝ) : ℝ := squarePrefixBaseline - squarePrefix u

/-- Original critical-source work, not a residual-defined function. -/
def squareTailWork (A : ℝ) : ℝ :=
  ∫ u in 0..2*A, squareTail u * deriv (criticalPrimeTest A) u

/-- The actual source's normalized negative-phase mean. -/
def squareTailNegativeMean (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, squareTail u * negativeSlope A u) / negativeMass A

/-- Both actual derivative phases survive in this independently defined contrast. -/
def squareTailPairedWork (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, squareTail u * positiveSlope A u) -
    positiveMass A * squareTailNegativeMean A

theorem squarePrefixBaseline_nonneg : 0 ≤ squarePrefixBaseline :=
  tsum_nonneg fun p => (squarePrefixCoefficient_pos p).le

theorem squarePrefixBaseline_pos : 0 < squarePrefixBaseline :=
  squarePrefixCoefficient_summable.tsum_pos
    (fun p => (squarePrefixCoefficient_pos p).le) ⟨2, Nat.prime_two⟩
    (squarePrefixCoefficient_pos _)

/-- Closed thresholds are represented on one fixed upper inventory. -/
theorem squarePrefix_eq_steps (b u : ℝ) (hu : u ≤ b) :
    squarePrefix u = ∑ p ∈ primeLogInventory (b/2),
      if 2*Real.log (p : ℝ) ≤ u then squarePrefixCoefficient p else 0 := by
  rw [squarePrefix, ← primeLogInventory_filter_log (b/2) (u/2) (by linarith),
    Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases h : Real.log (p : ℝ) ≤ u/2
  · have h' : 2*Real.log (p : ℝ) ≤ u := by linarith
    simp only [h, h', if_true]
  · have h' : ¬2*Real.log (p : ℝ) ≤ u := by linarith
    simp only [h, h', if_false]

/-- Finite-step integrability does not interchange an infinite arithmetic sum. -/
theorem squarePrefix_mul_deriv_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun u => squarePrefix u * deriv F u) volume a b := by
  have hi : IntervalIntegrable (fun u => ∑ p ∈ primeLogInventory (b/2),
      squarePrefixCoefficient p * (if 2*Real.log (p : ℝ) ≤ u then deriv F u else 0))
      volume a b := by
    have hi' : IntervalIntegrable (∑ p ∈ primeLogInventory (b/2), fun u : ℝ =>
        squarePrefixCoefficient p * (if 2*Real.log (p : ℝ) ≤ u then deriv F u else 0))
        volume a b :=
      IntervalIntegrable.sum (primeLogInventory (b/2)) (fun p _ =>
        (intervalIntegrable_closed_step a b (2*Real.log (p : ℝ)) (deriv F)
          (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul _)
    convert hi' using 1
    ext u
    simp
  apply hi.congr
  intro u hu
  rw [squarePrefix_eq_steps b u ((uIoc_of_le hab ▸ hu).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  split_ifs <;> simp

theorem squareTail_mul_deriv_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun u => squareTail u * deriv F u) volume a b := by
  have hi := (hF.continuous_deriv_one.intervalIntegrable (μ := volume) a b).const_mul
    squarePrefixBaseline
  have hp := squarePrefix_mul_deriv_intervalIntegrable a b hab F hF
  simpa only [squareTail, sub_mul] using hi.sub hp

/-- Each source-visible square contributes the original coefficient, including the touching atom. -/
theorem squarePrefix_source_work {A : ℝ} (hA : 0 < A) :
    (∫ u in 0..2*A, squarePrefix u * deriv (criticalPrimeTest A) u) =
      -primeSquareMoment A := by
  have he := integral_finite_steps_deriv 0 (2*A) (primeLogInventory A)
    (fun p => 2*Real.log (p : ℝ)) squarePrefixCoefficient
    (fun p hp => by
      have hb := primeLogInventory_log_bounds A p hp
      constructor <;> linarith) (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)
  have hsteps : (∫ u in 0..2*A, squarePrefix u * deriv (criticalPrimeTest A) u) =
      ∫ u in 0..2*A, ∑ p ∈ primeLogInventory A,
        squarePrefixCoefficient p *
          (if 2*Real.log (p : ℝ) ≤ u then deriv (criticalPrimeTest A) u else 0) := by
    apply intervalIntegral.integral_congr
    intro u hu
    rw [squarePrefix_eq_steps (2*A) u ((uIcc_of_le (by linarith : 0 ≤ 2*A) ▸ hu).2)]
    simp only [mul_div_cancel_left₀ (by norm_num : (2 : ℝ) ≠ 0), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hsteps, he, criticalPrimeTest_at_upper A hA,
    primeSquareMoment_eq_primeLogSum, primeLogSum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  have hp0 : 0 < (p : ℝ) := by
    exact_mod_cast (Finset.mem_filter.mp hp).2.pos
  unfold squarePrefixCoefficient criticalPrimeTest diagonalCorrelation
  rw [show (2*Real.log (p : ℝ))/2 = Real.log (p : ℝ) by ring,
    Real.exp_log hp0]
  field_simp [ne_of_gt hp0]
  ring

/-- Literal Abel work with the independent full baseline and original endpoint -B2. -/
theorem squareTailWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareTailWork A = primeSquareMoment A - squarePrefixBaseline := by
  have hp : 0 < A := by linarith
  have hd := (criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2*A)
  rw [squareTailWork, squareTail]
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (hd.const_mul squarePrefixBaseline)
    (squarePrefix_mul_deriv_intervalIntegrable 0 (2*A) (by linarith)
      (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_deriv_eq_sub
      (fun u _ => (criticalPrimeTest_contDiff A hp).differentiable (by norm_num) u) hd,
    criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA,
    squarePrefix_source_work hp]
  ring

theorem squareTail_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable squareTail volume 0 (2*A) := by
  simpa only [deriv_id'', mul_one] using
    squareTail_mul_deriv_intervalIntegrable 0 (2*A) (by linarith)
      (fun u : ℝ => u) contDiff_id

/-- No bounded error or positivity premise is used to retain both actual phases. -/
theorem squareTailPairedWork_eq_work_add_mean {A : ℝ} (hA : 1 ≤ A) :
    squareTailPairedWork A = squareTailWork A + squareTailNegativeMean A := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hw : squareTailWork A = (∫ u in 0..2*A, squareTail u * positiveSlope A u) -
      (∫ u in 0..2*A, squareTail u * negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    unfold squareTailWork
    apply intervalIntegral.integral_congr
    intro u hu
    rw [← mul_sub, slope_difference]
  rw [squareTailPairedWork, hw, squareTailNegativeMean]
  rw [negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A + 1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact ne_of_gt (negativeMass_pos hA)
  field_simp [hn]
  ring

/-- Both phases retain the same literal arithmetic error after exact square-tail removal. -/
def squareRemovedPairedWork (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, (primeLogError u - squareTail u) * positiveSlope A u) -
    positiveMass A * ((∫ u in 0..2*A,
      (primeLogError u - squareTail u) * negativeSlope A u) / negativeMass A)

/-- Independent data, not a definition from the residual. -/
def squareRemovedRemainder (A : ℝ) : ℝ :=
  criticalContinuousMoment A + squarePrefixBaseline + negativeErrorMean A -
    squareTailNegativeMean A + SourcePrimePowerPartition.higherPrimePowerMoment A

/-- Exact linear decomposition before any new arithmetic estimate. -/
theorem squareRemovedPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A = pairedErrorContrast A - squareTailPairedWork A := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  unfold squareRemovedPairedWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (positiveSlopeWork_intervalIntegrable hp) hip,
    intervalIntegral.integral_sub (negativeSlopeWork_intervalIntegrable hp) hin,
    pairedErrorContrast_eq hA]
  unfold squareTailPairedWork negativeErrorMean squareTailNegativeMean
    positiveSlopeWork negativeSlopeWork
  rw [sub_div]
  ring

/-- The square contribution cancels internally; no eventual lower witness is supplied. -/
theorem mertensResidual_eq_squareRemoved {A : ℝ} (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      -squareRemovedPairedWork A + squareRemovedRemainder A := by
  rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA,
    SourcePrimePowerPartition.closedPrimeMoment_eq_first_square_higher,
    firstPrimeMoment_eq_continuous_sub_work A hA,
    criticalSignedWork_eq_contrast_sub_mean hA, squareRemovedPairedWork_eq hA,
    squareTailPairedWork_eq_work_add_mean hA, squareTailWork_eq hA]
  unfold squareRemovedRemainder
  ring

end FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
