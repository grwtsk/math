# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeAbel.Variant7efde3b8dc4c148619dbe7ac55071a240f8443dafe0b6c6f7fce535644c914c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4353ffc20566b519a40555b9f0e1d43d8ca25fc` · SHA-256 `b036dce5c6c0def6863351c89a5fae3c5cc65bb24ef5bda173d0d80eec2c2fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeWeight.Variante07b10bff90376204601c2372ac751c837ec010a28cbc92fd8513236c45ef07d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e07b10bff90376204601c2372ac751c837ec010a28cbc92fd8513236c45ef07d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FirstPrimeWeight.Variante07b10bff90376204601c2372ac751c837ec010a28cbc92fd8513236c45ef07d","mathematical_subject":"Analysis.Calculus","original_sha256":"e07b10bff90376204601c2372ac751c837ec010a28cbc92fd8513236c45ef07d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/FirstPrimeAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeWeight.Variante07b10bff90376204601c2372ac751c837ec010a28cbc92fd8513236c45ef07d

set_option autoImplicit false
namespace FirstPrimeAbelScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeHarmonicPrefix PrimeSquareAbel PrimeSector
noncomputable section

/-- The actual first-prime test in logarithmic harmonic summation. -/
def firstPrimeWeight (A u : ℝ) : ℝ :=
  Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u

/-- The signed harmonic remainder against the unchanged first-prime weight. -/
def firstPrimeRemainder (A : ℝ) : ℝ :=
  ∫ u in 0..2 * A, thetaRemainder u * deriv (firstPrimeWeight A) u

/-- The decaying half moment produced by the original pole-cancelling source. -/
def firstPrimeDecayingMain (A : ℝ) : ℝ :=
  ∫ u in 0..2 * A, Real.exp (-u / 2) * sourceCorrelation explicitSecondDerivative A u

/-- The exact derivative retains the growing exponential factor. -/
theorem firstPrimeWeight_hasDerivAt (A u : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (firstPrimeWeight A)
      (Real.exp (u / 2) * (deriv (sourceCorrelation explicitSecondDerivative A) u +
        sourceCorrelation explicitSecondDerivative A u / 2)) u := by
  have hc := ((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num) u).hasDerivAt
  have he := ((hasDerivAt_id u).div_const 2).exp
  apply (he.mul hc).congr_deriv
  dsimp only [id_eq]
  ring

theorem firstPrimeWeight_contDiff (A : ℝ) (hA : 1 ≤ A) : ContDiff ℝ 1 (firstPrimeWeight A) :=
  ((contDiff_id.div_const 2).exp).mul (sourceCorrelation_contDiff A (by linarith))

theorem firstPrimeWeight_zero_endpoint (A : ℝ) (hA : 1 ≤ A) : firstPrimeWeight A (2 * A) = 0 := by
  unfold firstPrimeWeight
  rw [sourceCorrelation_upper_endpoint A (by linarith), mul_zero]

theorem firstPrimeWeight_at_zero (A : ℝ) (hA : 1 ≤ A) : firstPrimeWeight A 0 = 1 := by
  simp only [firstPrimeWeight, zero_div, Real.exp_zero, one_mul]
  exact EstimateCorrelation.actual_correlation_at_zero A hA

/-- The source square-root weight equals the harmonic coefficient times the exact new test. -/
theorem first_prime_summand (A : ℝ) (p : ℕ) (hp : p.Prime) :
    Real.log (p : ℝ) / Real.sqrt (p : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log (p : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hs : Real.sqrt (p : ℝ) ^ 2 = (p : ℝ) := Real.sq_sqrt hp0.le
  have hsn : Real.sqrt (p : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hp0).ne'
  unfold firstPrimeWeight
  rw [Real.exp_half, Real.exp_log hp0]
  field_simp
  rw [hs]
  ring

/-- The original strict prime sum closes only at a vanishing actual correlation value. -/
theorem primeContribution_eq_closed (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime
  have hsub : (Cutoff.primeIndices A).filter Nat.Prime ⊆ H := by
    intro p hp
    obtain ⟨hp, hprime⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨(Finset.mem_filter.mp hp).1, hprime⟩
  calc
    _ = ∑ p ∈ (Cutoff.primeIndices A).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
      unfold primeContribution
      apply Finset.sum_congr rfl
      intro p hp
      exact first_prime_summand A p (Finset.mem_filter.mp hp).2
    _ = _ := by
      apply Finset.sum_subset hsub
      intro p hp hout
      obtain ⟨hpi, hprime⟩ := Finset.mem_filter.mp hp
      have hp2 := (Finset.mem_Icc.mp hpi).1
      have hcut : Real.exp (2 * A) ≤ (p : ℝ) := by
        by_contra h
        exact hout (Finset.mem_filter.mpr
          ⟨(Cutoff.mem_primeIndices_iff A p).mpr ⟨hp2, lt_of_not_ge h⟩, hprime⟩)
      have hlog : 2 * A ≤ Real.log (p : ℝ) := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      unfold firstPrimeWeight
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log p) (by linarith)
        (hlog.trans (le_abs_self _)), mul_zero, mul_zero]

/-- Genuine integrability of the actual growing weight on the finite source interval. -/
theorem firstPrimeWeight_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (firstPrimeWeight A) volume 0 (2 * A) :=
  (firstPrimeWeight_contDiff A hA).continuous.intervalIntegrable 0 (2 * A)

/-- Genuine integrability precedes the signed first-prime remainder integral. -/
theorem firstPrimeRemainder_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => thetaRemainder u * deriv (firstPrimeWeight A) u)
      volume 0 (2 * A) :=
  thetaRemainder_mul_intervalIntegrable (2 * A) (by linarith)
    (deriv (firstPrimeWeight A)) (firstPrimeWeight_contDiff A hA).continuous_deriv_one

/-- Exact first-prime harmonic Abel summation has no arithmetic estimate hypothesis. -/
theorem primeContribution_centered_abel (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = (∫ u in 0..2 * A, firstPrimeWeight A u) + thetaConstant -
      firstPrimeRemainder A := by
  rw [primeContribution_eq_closed A hA]
  exact primeHarmonicPrefix_centered_abel (2 * A) (by linarith) (firstPrimeWeight A)
    ((firstPrimeWeight_contDiff A hA).differentiable (by norm_num))
    (firstPrimeWeight_contDiff A hA).continuous_deriv_one
    (firstPrimeWeight_zero_endpoint A hA) (firstPrimeWeight_at_zero A hA)

/-- The original pole cancellation replaces the growing main integral by a decaying one. -/
theorem firstPrimeWeight_integral_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, firstPrimeWeight A u) = -firstPrimeDecayingMain A := by
  have h := pole_correlation_certificate A hA
  change (∫ u in 0..2 * A, firstPrimeWeight A u) + firstPrimeDecayingMain A = 0 at h
  linarith

/-- The source-bound first-prime formula retains the entire exponentially weighted signed remainder. -/
theorem primeContribution_eq_remainder (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A = thetaConstant - firstPrimeDecayingMain A - firstPrimeRemainder A := by
  rw [primeContribution_centered_abel A hA, firstPrimeWeight_integral_eq_neg A hA]
  ring

/-- The decaying main term is genuinely interval integrable. -/
theorem firstPrimeDecayingMain_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => Real.exp (-u / 2) *
      sourceCorrelation explicitSecondDerivative A u) volume 0 (2 * A) :=
  ((Real.continuous_exp.comp (continuous_neg.div_const 2)).mul
    (sourceCorrelation_contDiff A (by linarith)).continuous).intervalIntegrable 0 (2 * A)

/-- Pole cancellation leaves a uniformly bounded main term, independently of arithmetic cancellation. -/
theorem firstPrimeDecayingMain_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |firstPrimeDecayingMain A| ≤ 2 := by
  have h0 : 0 ≤ 2 * A := by linarith
  have he : Continuous (fun u : ℝ => Real.exp (-u / 2)) :=
    Real.continuous_exp.comp (continuous_neg.div_const 2)
  have hf := firstPrimeDecayingMain_intervalIntegrable A hA
  have hftc : ∀ u ∈ uIcc (0 : ℝ) (2 * A),
      HasDerivAt (fun u : ℝ => -2 * Real.exp (-u / 2)) (Real.exp (-u / 2)) u := by
    intro u _
    apply (((((hasDerivAt_id u).neg).div_const 2).exp).const_mul (-2)).congr_deriv
    change -2 * (Real.exp (-u / 2) * ((-1 : ℝ) / 2)) = Real.exp (-u / 2)
    ring
  have hi : (∫ u in 0..2 * A, Real.exp (-u / 2)) = 2 - 2 * Real.exp (-A) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hftc (he.intervalIntegrable _ _)]
    have hx : -(2 * A) / 2 = -A := by ring
    simp only [hx, neg_zero, zero_div, Real.exp_zero]
    ring
  unfold firstPrimeDecayingMain
  calc
    _ ≤ ∫ u in 0..2 * A, |Real.exp (-u / 2) *
        sourceCorrelation explicitSecondDerivative A u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := fun u => Real.exp (-u / 2) *
          sourceCorrelation explicitSecondDerivative A u) h0
    _ ≤ ∫ u in 0..2 * A, Real.exp (-u / 2) := by
      apply intervalIntegral.integral_mono_on h0
        (by simpa only [Real.norm_eq_abs] using hf.norm) (he.intervalIntegrable _ _)
      intro u _
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      exact mul_le_of_le_one_right (Real.exp_pos _).le
        (EstimateCorrelation.actual_correlation_abs_le_one A u hA)
    _ ≤ 2 := by rw [hi]; nlinarith [Real.exp_pos (-A)]

/-- The exact derivative bound still carries the exponential weight. -/
theorem firstPrimeWeight_derivative_abs_le (A u : ℝ) (hA : 1 ≤ A) :
    |deriv (firstPrimeWeight A) u| ≤ Real.exp (u / 2) *
      (1 / 2 + (65 / (3 * A ^ 2)) * |u|) := by
  rw [(firstPrimeWeight_hasDerivAt A u hA).deriv, abs_mul, abs_of_pos (Real.exp_pos _)]
  apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) u| +
        |sourceCorrelation explicitSecondDerivative A u / 2| := abs_add_le _ _
    _ ≤ (65 / (3 * A ^ 2)) * |u| + 1 / 2 := by
      apply add_le_add (PrimeSquareCorrelation.sourceCorrelation_derivative_linear_bound A u hA)
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact div_le_div_of_nonneg_right (EstimateCorrelation.actual_correlation_abs_le_one A u hA)
        (by norm_num)
    _ = _ := by ring

/-- All unproved arithmetic cancellation is retained in the signed remainder; the discarded main is bounded. -/
theorem primeContribution_add_remainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeContribution A + firstPrimeRemainder A - thetaConstant| ≤ 2 := by
  rw [primeContribution_eq_remainder A hA]
  have he : thetaConstant - firstPrimeDecayingMain A - firstPrimeRemainder A +
      firstPrimeRemainder A - thetaConstant = -firstPrimeDecayingMain A := by ring
  rw [he, abs_neg]
  exact firstPrimeDecayingMain_abs_le A hA

end
end FirstPrimeAbelScratch
```
