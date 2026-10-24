/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionPrefixExact
import GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringCorrectionMargin

set_option autoImplicit false

/-!
# Exact finite correction prefixes in the canonical Turing prime margin

`RationalTentCorrectionPrefixExact` proves that every finite signed-correction
prefix at rational tent endpoints is itself an exact rational number. This file
specializes that evaluator to the square tent and removes the formerly separate
`PrefixEnclosure` premise from the correction side of the prime interface.

The finite prefix is still not the complete correction. The existing geometric
remainder is subtracted, and the resulting lower endpoint is rounded down once.
The nontrivial-zero upper endpoint remains independently supplied by a zero-gap
canonical Turing packet and accepted positive-row arithmetic.

No Turing packet, row enclosure, accepted computation, strict margin, prime, or
RH result is constructed here. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringExactCorrectionMargin

open scoped BigOperators ComplexConjugate
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.PositiveHeightCountDeficit
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
open GRWTSK.Analysis.ComplexAnalysis.RationalTentAccumulation
open GRWTSK.Analysis.RealAnalysis.RationalTentCorrectionPrefixExact
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open CanonicalRationalTentEvaluation
open CanonicalPositiveTuringPairedTent
open CanonicalPositiveTuringUpperTent
open CanonicalPositiveTuringCorrectionMargin
open TentSource SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Exact rational finite-prefix value for the square tent. -/
def squarePrefixValueQ (N n : ℕ) : ℚ :=
  prefixValueQ N (squareCenterQ n) (squareRadiusQ n)

/-- Exact square-prefix verifier: the prefix value is recomputed from `N,n`
and its prefix-evaluation error is definitionally zero. -/
def verifySquareExact
    (N n correctionBits : ℕ) (floor claimed : ℚ) : Bool :=
  verifyExact N (squareCenterQ n) (squareRadiusQ n)
    correctionBits floor claimed

/-- The finite square correction prefix is exactly the rational source value. -/
theorem squarePrefixValueQ_exact
    (N n : ℕ) (hn : 2 ≤ n) :
    (squarePrefixValueQ N n : ℝ) =
      correctionPrefix N (squareCenter n) (squareRadius n) := by
  unfold squarePrefixValueQ
  have hadm := squareCorrectionAdmissible n hn
  have hexact := prefixValueQ_exact N
    (squareCenterQ n) (squareRadiusQ n) hadm.1 hadm.2
  simpa only [cast_squareCenterQ, cast_squareRadiusQ] using hexact

/-- Accepted exact-prefix output is a sound lower bound for the actual square
trivial correction. No external prefix enclosure is consumed. -/
theorem verified_square_exact_correction_lower
    (N n correctionBits : ℕ) (floor claimed : ℚ)
    (accepted : verifySquareExact N n correctionBits floor claimed = true) :
    (claimed : ℝ) ≤ squareTrivialCorrection n ∧ floor ≤ claimed := by
  have accepted' :
      verifyExact N (squareCenterQ n) (squareRadiusQ n)
        correctionBits floor claimed = true := by
    simpa [verifySquareExact] using accepted
  have hs := verifyExact_sound N (squareCenterQ n) (squareRadiusQ n)
    correctionBits floor claimed accepted'
  constructor
  · simpa [squareTrivialCorrection, cast_squareCenterQ, cast_squareRadiusQ] using hs.1
  · exact hs.2

/-- The requested floor from the exact-prefix verifier is itself a sound
correction lower endpoint. -/
theorem verified_square_exact_correction_floor
    (N n correctionBits : ℕ) (floor claimed : ℚ)
    (accepted : verifySquareExact N n correctionBits floor claimed = true) :
    (floor : ℝ) ≤ squareTrivialCorrection n := by
  have hs := verified_square_exact_correction_lower
    N n correctionBits floor claimed accepted
  exact (by exact_mod_cast hs.2).trans hs.1

/-- Compose exact recomputed zero and correction endpoints with the unchanged
one-sided canonical prime criterion. -/
theorem prime_in_square_of_exact_prefix_claimed_endpoints
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
    (correctionFloor correctionClaimed : ℚ)
    (correctionAccepted :
      verifySquareExact N n correctionBits
        correctionFloor correctionClaimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (zeroClaimed : ℝ) (correctionClaimed : ℝ)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero :=
    (verified_upper_of_positive_pair_packet
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows packet zeroGap
      alignment zeroLimit zeroClaimed zeroAccepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  have hcorr :=
    (verified_square_exact_correction_lower
      N n correctionBits correctionFloor correctionClaimed
      correctionAccepted).1
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (zeroClaimed : ℝ) (correctionClaimed : ℝ) hzero hcorr margin

/-- Compose preselected verified thresholds. The exact prefix evaluator has
removed the semantic prefix-enclosure input, but strict margin positivity remains
an independent theorem premise. -/
theorem prime_in_square_of_exact_prefix_thresholds
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
    (correctionFloor correctionClaimed : ℚ)
    (correctionAccepted :
      verifySquareExact N n correctionBits
        correctionFloor correctionClaimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (zeroLimit : ℝ) (correctionFloor : ℝ)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero := verified_limit_of_positive_pair_packet
    (squareCenterQ n) (squareRadiusQ n) zeroBits rows packet zeroGap
    alignment zeroLimit zeroClaimed zeroAccepted
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  have hcorr := verified_square_exact_correction_floor
    N n correctionBits correctionFloor correctionClaimed correctionAccepted
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (zeroLimit : ℝ) (correctionFloor : ℝ) hzero hcorr margin

/-- Exact prefix arithmetic removes a semantic input, not the strictness
requirement on the final canonical margin. -/
theorem exact_prefix_zero_margin_not_strict_fixture :
    ¬ (0 : ℝ) < 0 := by simp

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringExactCorrectionMargin
