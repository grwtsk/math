# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DraftV4Source.Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b78d85f817c2ff25a96b2290e65d6a9f0168b8ab` · SHA-256 `49f0917103f012b789b43c64403afe65510a797cc34df124cb7e7441a7b2a019`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTest.Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CriticalPrimeTest.Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5","mathematical_subject":"Analysis.Calculus","original_sha256":"603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle4/first-prime-abel/draft-v4-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# The actual first-prime signed Abel interaction

The exponential factor remains inside the signed interaction. The continuous
positive half is restored through zero and uniformly bounded by the existing
pole moment. No uniform signed arithmetic witness is supplied.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTest.Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

open MeasureTheory
open scoped Interval
open WeightedPrimeAbel SourcePairing SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimateMobiusSplit EstimatePrimeSmoothDefect PrimePowerDescent

noncomputable section

/-- The literal first-prime logarithmic test, including its critical exponential weight. -/
def criticalPrimeTest (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t

/-- The full continuous positive half, including the interval below the first prime. -/
def criticalContinuousMoment (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, criticalPrimeTest A t

/-- The signed arithmetic Abel interaction; no absolute value is inserted. -/
def criticalSignedWork (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, primeLogError t * deriv (criticalPrimeTest A) t

/-- An open eventual lower target for the actual signed interaction. -/
def CriticalAbelTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → diagonalMainCoefficient A * A - C ≤ criticalSignedWork A

theorem criticalPrimeTest_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (criticalPrimeTest A) := by
  exact ((contDiff_id.div_const 2).exp).mul
    (sourceCorrelation_contDiff A hA)

theorem criticalPrimeTest_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (criticalPrimeTest A) t = Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t) := by
  have he := ((hasDerivAt_id t).div_const 2).exp
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 t).hasDerivAt
  have hd : HasDerivAt (criticalPrimeTest A) (Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t)) t :=
    (he.mul hc).congr_deriv (by dsimp only [id_eq]; ring)
  exact hd.deriv

/-- Pointwise coefficient transport uses the actual closed source weight and prime logarithm. -/
theorem prime_source_coefficient_eq_critical_test (A : ℝ) {p : ℕ} (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p =
      Real.log (p : ℝ) / (p : ℝ) * criticalPrimeTest A (Real.log p) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have he : Real.exp (-Real.log (p : ℝ) / 2) =
      Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by
    calc
      Real.exp (-Real.log (p : ℝ) / 2) =
          Real.exp (Real.log (p : ℝ) / 2 - Real.log p) := by congr 1; ring
      _ = Real.exp (Real.log (p : ℝ) / 2) / Real.exp (Real.log p) :=
        Real.exp_sub _ _
      _ = Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by rw [Real.exp_log hp0]
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  unfold closedPrimeWeight exponentialTest criticalPrimeTest
  rw [he]
  ring

/-- The first-prime sector is exactly the critical logarithmic quadrature, with the original closed floor. -/
theorem firstPrimeMoment_eq_criticalPrimeSum (A : ℝ) :
    SourcePrimePowerPartition.firstPrimeMoment A =
      primeLogSum (2 * A) (criticalPrimeTest A) := by
  unfold SourcePrimePowerPartition.firstPrimeMoment primeLogSum
  apply Finset.sum_congr rfl
  intro p hp
  exact prime_source_coefficient_eq_critical_test A (Finset.mem_filter.mp hp).2

/-- The literal signed work is an integrable finite-step interaction. -/
theorem criticalSignedWork_intervalIntegrable (A : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun t => primeLogError t * deriv (criticalPrimeTest A) t)
      volume 0 (2 * A) := by
  exact primeLogError_mul_deriv_intervalIntegrable 0 (2 * A) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)

theorem criticalPrimeTest_at_upper (A : ℝ) (hA : 0 < A) :
    criticalPrimeTest A (2 * A) = 0 := by
  rw [criticalPrimeTest, sourceCorrelation_upper_endpoint A hA, mul_zero]

theorem criticalPrimeTest_at_zero (A : ℝ) (hA : 1 ≤ A) :
    criticalPrimeTest A 0 = 1 := by
  simp only [criticalPrimeTest, zero_div, Real.exp_zero, one_mul]
  exact actual_correlation_at_zero A hA

/-- Restoring the full positive half is the existing pole cancellation. -/
theorem criticalContinuousMoment_eq_neg_negative (A : ℝ) (hA : 1 ≤ A) :
    criticalContinuousMoment A = -negativeSmoothMoment A := by
  have h := CorrelationMoment.pole_correlation_certificate A hA
  change criticalContinuousMoment A + negativeSmoothMoment A = 0 at h
  linarith

/-- The initial interval below log 2 is retained explicitly. -/
theorem criticalContinuousMoment_eq_smooth_add_initial (A : ℝ) (hA : 1 ≤ A) :
    criticalContinuousMoment A = smoothMoment A + initialPositiveMoment A := by
  rw [criticalContinuousMoment_eq_neg_negative A hA,
    smoothMoment_eq_neg_negative_sub_initial A hA]
  ring

/-- The continuous full half has an unconditional constant budget. -/
theorem criticalContinuousMoment_abs_le_two (A : ℝ) (hA : 1 ≤ A) :
    |criticalContinuousMoment A| ≤ 2 := by
  rw [criticalContinuousMoment_eq_neg_negative A hA, abs_neg]
  exact negativeSmoothMoment_abs_le A hA

/-- No prime atom lies at logarithmic zero. -/
theorem criticalPrimeWindow_eq_sum (A : ℝ) :
    primeLogWindow 0 (2 * A) (criticalPrimeTest A) =
      primeLogSum (2 * A) (criticalPrimeTest A) := by
  have hz : primeLogInventory 0 = ∅ := by
    apply Finset.eq_empty_of_forall_notMem
    intro p hp
    obtain ⟨hI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hI).2
    simp only [Real.exp_zero, Nat.floor_one] at hple
    have := hprime.two_le
    omega
  simp only [primeLogWindow, primeLogSum, hz, Finset.sum_empty, sub_zero]

/-- Exact first-prime Abel reconstruction, with both error endpoints zero. -/
theorem criticalPrimeSum_eq_continuous_sub_work (A : ℝ) (hA : 1 ≤ A) :
    primeLogSum (2 * A) (criticalPrimeTest A) =
      criticalContinuousMoment A - criticalSignedWork A := by
  have h := primeLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [criticalPrimeWindow_eq_sum, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    zero_sub] at h
  change primeLogSum (2 * A) (criticalPrimeTest A) - criticalContinuousMoment A =
    -criticalSignedWork A at h
  linarith

/-- Upper control of the first-prime main-term sum is exactly a signed lower target.
This equivalence does not construct either witness. -/
theorem criticalPrimeTailUpper_iff_signed_lower :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      primeLogSum (2 * A) (criticalPrimeTest A) + diagonalMainCoefficient A * A ≤ D) ↔
      CriticalAbelTailLowerBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
    have hp := h A hRA
    rw [criticalPrimeSum_eq_continuous_sub_work A hA] at hp
    linarith
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
    rw [criticalPrimeSum_eq_continuous_sub_work A hA]
    linarith [h A hRA]

/-- Exact Abel decomposition of the independently defined literal first-prime sector. -/
theorem firstPrimeMoment_eq_continuous_sub_work (A : ℝ) (hA : 1 ≤ A) :
    SourcePrimePowerPartition.firstPrimeMoment A =
      criticalContinuousMoment A - criticalSignedWork A := by
  rw [firstPrimeMoment_eq_criticalPrimeSum, criticalPrimeSum_eq_continuous_sub_work A hA]

end
end FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
```
