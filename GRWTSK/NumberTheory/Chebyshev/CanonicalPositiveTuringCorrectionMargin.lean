/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound
import GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringUpperTent

set_option autoImplicit false

/-!
# Compose verified zero upper and signed-correction lower endpoints

The canonical prime criterion is one-sided in both finite analytic inputs:

* the complete bounded nontrivial-zero contribution needs a real UPPER bound;
* the signed rational correction needs a real LOWER bound.

`CanonicalPositiveTuringUpperTent` supplies the first endpoint from a zero-gap
canonical packet and positive-row arithmetic. The new rational correction verifier
supplies the second from an independently justified finite-prefix enclosure after
subtracting the complete geometric remainder and rounding down once.

This module composes those two source-bound endpoints with the unchanged prime
criterion. It does not construct the prefix enclosure, Turing packet, positive rows,
accepted arithmetic, strict margin, prime, or RH result.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringCorrectionMargin

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.RationalTentAccumulation
open GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalRationalTentEvaluation
open CanonicalPositiveTuringPairedTent
open CanonicalPositiveTuringUpperTent
open SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Square-center specialization of the semantic finite-prefix enclosure. -/
def SquarePrefixEnclosure
    (N n : ℕ) (value error : ℚ) : Prop :=
  PrefixEnclosure N (squareCenterQ n) (squareRadiusQ n) value error

/-- For n >= 2, the square tent satisfies the rational correction-domain guards. -/
theorem squareCorrectionAdmissible (n : ℕ) (hn : 2 ≤ n) :
    Admissible (squareCenterQ n) (squareRadiusQ n) := by
  have endpoint : squareCenterQ n - squareRadiusQ n = (n : ℚ) ^ 2 := by
    simp [squareCenterQ, squareRadiusQ]
    ring
  constructor
  · unfold squareRadiusQ
    positivity
  · rw [endpoint]
    have hnQ : (2 : ℚ) ≤ (n : ℚ) := by exact_mod_cast hn
    nlinarith

/-- Accepted directed correction output is a sound lower bound for the actual
square trivial correction. The requested floor remains below it. -/
theorem verified_square_correction_lower
    (N n correctionBits : ℕ) (prefixValue prefixError floor claimed : ℚ)
    (accepted : GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound.verify
      N (squareCenterQ n) (squareRadiusQ n)
      prefixValue prefixError correctionBits floor claimed = true)
    (enclosure : SquarePrefixEnclosure N n prefixValue prefixError) :
    (claimed : ℝ) ≤ squareTrivialCorrection n ∧ floor ≤ claimed := by
  have hs := GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound.verify_sound
    N (squareCenterQ n) (squareRadiusQ n)
    prefixValue prefixError correctionBits floor claimed accepted enclosure
  constructor
  · simpa [squareTrivialCorrection] using hs.1
  · exact hs.2

/-- The requested correction floor itself is sound. -/
theorem verified_square_correction_floor
    (N n correctionBits : ℕ) (prefixValue prefixError floor claimed : ℚ)
    (accepted : GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound.verify
      N (squareCenterQ n) (squareRadiusQ n)
      prefixValue prefixError correctionBits floor claimed = true)
    (enclosure : SquarePrefixEnclosure N n prefixValue prefixError) :
    (floor : ℝ) ≤ squareTrivialCorrection n := by
  have hs := verified_square_correction_lower
    N n correctionBits prefixValue prefixError floor claimed accepted enclosure
  exact (by exact_mod_cast hs.2).trans hs.1

/-- Use the exact recomputed zero upper and correction lower endpoints in the
canonical prime margin. Every source and arithmetic acceptance premise remains. -/
theorem prime_in_square_of_verified_claimed_endpoints
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (zeroBits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (zeroLimit zeroClaimed : ℚ)
    (zeroAccepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows
      zeroLimit zeroClaimed = true)
    (N correctionBits : ℕ)
    (prefixValue prefixError correctionFloor correctionClaimed : ℚ)
    (prefixEnclosure : SquarePrefixEnclosure N n prefixValue prefixError)
    (correctionAccepted : GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound.verify
      N (squareCenterQ n) (squareRadiusQ n)
      prefixValue prefixError correctionBits correctionFloor correctionClaimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (zeroClaimed : ℝ) (correctionClaimed : ℝ)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero :=
    (verified_upper_of_positive_pair_packet
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows packet zeroGap
      alignment zeroLimit zeroClaimed zeroAccepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  have hcorr :=
    (verified_square_correction_lower N n correctionBits
      prefixValue prefixError correctionFloor correctionClaimed
      correctionAccepted prefixEnclosure).1
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (zeroClaimed : ℝ) (correctionClaimed : ℝ) hzero hcorr margin

/-- Use preselected verifier thresholds directly. The zero limit is an accepted
upper threshold and the correction floor is an accepted lower threshold. -/
theorem prime_in_square_of_verified_endpoint_thresholds
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (zeroBits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (zeroLimit zeroClaimed : ℚ)
    (zeroAccepted : GRWTSK.Analysis.ComplexAnalysis.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows
      zeroLimit zeroClaimed = true)
    (N correctionBits : ℕ)
    (prefixValue prefixError correctionFloor correctionClaimed : ℚ)
    (prefixEnclosure : SquarePrefixEnclosure N n prefixValue prefixError)
    (correctionAccepted : GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionLowerBound.verify
      N (squareCenterQ n) (squareRadiusQ n)
      prefixValue prefixError correctionBits correctionFloor correctionClaimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (zeroLimit : ℝ) (correctionFloor : ℝ)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero := verified_limit_of_positive_pair_packet
    (squareCenterQ n) (squareRadiusQ n) zeroBits rows packet zeroGap
    alignment zeroLimit zeroClaimed zeroAccepted
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  have hcorr := verified_square_correction_floor
    N n correctionBits prefixValue prefixError correctionFloor correctionClaimed
    correctionAccepted prefixEnclosure
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (zeroLimit : ℝ) (correctionFloor : ℝ) hzero hcorr margin

/-- Passing both endpoint verifiers is still insufficient when the resulting
canonical margin is exactly zero. -/
theorem zero_margin_not_strict_fixture : ¬ (0 : ℝ) < 0 := by simp

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringCorrectionMargin
