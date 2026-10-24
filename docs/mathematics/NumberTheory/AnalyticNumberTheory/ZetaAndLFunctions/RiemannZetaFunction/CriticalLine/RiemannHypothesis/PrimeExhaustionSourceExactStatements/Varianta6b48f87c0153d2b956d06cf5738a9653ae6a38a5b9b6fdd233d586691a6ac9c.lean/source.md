# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeExhaustionSourceExactStatements.Varianta6b48f87c0153d2b956d06cf5738a9653ae6a38a5b9b6fdd233d586691a6ac9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ee746370491082ea558ec636b5a414aea679cd9` · SHA-256 `83e3b1b5b77af2dbbd02447cce7c5bdcfd61b5615f138bfc53e24f3d55c87474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeExhaustion.Variant16ccb63691f010ffceef06059e0fa5d8b826caabd694f3b22ac6048f4deaf70b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16ccb63691f010ffceef06059e0fa5d8b826caabd694f3b22ac6048f4deaf70b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimeExhaustion.Variant16ccb63691f010ffceef06059e0fa5d8b826caabd694f3b22ac6048f4deaf70b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"16ccb63691f010ffceef06059e0fa5d8b826caabd694f3b22ac6048f4deaf70b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/prime-exhaustion-source-exact-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeExhaustion


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeExhaustion.Variant16ccb63691f010ffceef06059e0fa5d8b826caabd694f3b22ac6048f4deaf70b

set_option autoImplicit false

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSupportedBlock PrimeBlockReduction PrimeExhaustion
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

example (N : ℕ) : cutoffPrimes N = (range (N + 1)).filter Nat.Prime := rfl

example (N p : ℕ) : p ∈ cutoffPrimes N ↔ Nat.Prime p ∧ p ≤ N := mem_cutoffPrimes N p

example (P : Finset ℕ) (N i j : ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ N → p ∈ P) (hi : i ≤ N) (hj : j ≤ N) :
    quotientSupported P i j := quotientSupported_of_contains_primes P N i j hP hi hj

example (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    primeSupportedBlock A P =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_eq_full_of_contains_primes A P hP

example (A : ℝ) :
    primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_cutoffPrimes_eq_full A

example (A : ℝ) (P : Finset ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ ⌊Real.exp A⌋₊ → p ∈ P) :
    roughRatioRemainder A P = 0 := roughRatioRemainder_eq_zero_of_contains_primes A P hP

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
        4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
        2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
          (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
            (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
        2 * primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) :=
  sourceQuadraticValue_eq_complete_block A hA
```
