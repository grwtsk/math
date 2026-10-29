-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CutoffPrimes.Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CutoffPrimes.Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/PrimeExhaustion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeInsertion
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeBlockReduction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CutoffPrimes.Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993

set_option autoImplicit false

namespace PrimeExhaustionScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSupportedBlock PrimeBlockReduction
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- The literal finite set of all primes through a natural source cutoff. -/
def cutoffPrimes (N : ℕ) : Finset ℕ := (range (N + 1)).filter Nat.Prime

/-- Membership retains primality and the inclusive integer cutoff. -/
theorem mem_cutoffPrimes (N p : ℕ) : p ∈ cutoffPrimes N ↔ Nat.Prime p ∧ p ≤ N := by
  simp only [cutoffPrimes, mem_filter, mem_range]
  constructor
  · rintro ⟨hpn, hp⟩
    exact ⟨hp, by omega⟩
  · rintro ⟨hp, hpn⟩
    exact ⟨by omega, hp⟩

/-- Every quotient prime in the original source square lies below its original index. -/
theorem quotientSupported_of_contains_primes (P : Finset ℕ) (N i j : ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ N → p ∈ P) (hi : i ≤ N) (hj : j ≤ N) :
    quotientSupported P i j := by
  constructor
  · intro p hp
    exact hP p (Nat.prime_of_mem_primeFactors hp)
      ((Nat.le_of_mem_primeFactors hp).trans ((Nat.div_le_self i (Nat.gcd i j)).trans hi))
  · intro p hp
    exact hP p (Nat.prime_of_mem_primeFactors hp)
      ((Nat.le_of_mem_primeFactors hp).trans ((Nat.div_le_self j (Nat.gcd i j)).trans hj))

/-- Exhausting the quotient primes recovers the complete original Möbius remainder. -/
theorem primeSupportedBlock_eq_full_of_contains_primes (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    primeSupportedBlock A P =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) := by
  classical
  unfold primeSupportedBlock
  rw [filter_eq_self.mpr (by
    intro a ha
    obtain ⟨hi, hj⟩ := mem_product.mp ha
    exact quotientSupported_of_contains_primes P _ a.1 a.2 hP
      (mem_Icc.mp hi).2 (mem_Icc.mp hj).2)]
  exact sum_product _ _ _

/-- The actual finite prime set exhausts the full remainder without dropping any pair. -/
theorem primeSupportedBlock_cutoffPrimes_eq_full (A : ℝ) :
    primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_eq_full_of_contains_primes A _
    (fun p hp hn ↦ (mem_cutoffPrimes _ p).mpr ⟨hp, hn⟩)

/-- The complementary filtered set contributes zero only after every cutoff prime is retained. -/
theorem roughRatioRemainder_eq_zero_of_contains_primes (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    roughRatioRemainder A P = 0 := by
  have h := remainder_eq_block_add_rough A P
  rw [primeSupportedBlock_eq_full_of_contains_primes A P hP] at h
  linarith

/-- Exhaustion identifies the complete Q arithmetic and retains both the linear and rank-one terms. -/
theorem sourceQuadraticValue_eq_complete_block (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
        4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
        2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
          (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
            (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
        2 * primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) := by
  rw [ThetaRemainder.sourceQuadraticValue_eq A hA,
    primeSupportedBlock_cutoffPrimes_eq_full]

end
end PrimeExhaustionScratch

#print axioms PrimeExhaustionScratch.cutoffPrimes
#print axioms PrimeExhaustionScratch.mem_cutoffPrimes
#print axioms PrimeExhaustionScratch.quotientSupported_of_contains_primes
#print axioms PrimeExhaustionScratch.primeSupportedBlock_eq_full_of_contains_primes
#print axioms PrimeExhaustionScratch.primeSupportedBlock_cutoffPrimes_eq_full
#print axioms PrimeExhaustionScratch.roughRatioRemainder_eq_zero_of_contains_primes
#print axioms PrimeExhaustionScratch.sourceQuadraticValue_eq_complete_block
