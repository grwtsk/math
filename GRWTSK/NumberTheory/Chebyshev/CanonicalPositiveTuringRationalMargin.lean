/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.RationalCanonicalPrimeMargin
import GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringExactCorrectionMargin

set_option autoImplicit false

/-!
# Fully rational strict-margin checking for canonical Turing prime packets

The preceding source now supplies both one-sided finite endpoints:

* an accepted rational upper bound for the complete bounded zero contribution;
* an accepted rational lower bound from the exact finite signed-correction prefix.

`RationalCanonicalPrimeMargin` additionally bounds the two remaining logarithmic
terms using finite dyadic log inputs and checks strict positivity in `ℚ`.
This module composes those pieces. The former real-valued premise

  0 < canonicalPrimeMargin ...

is replaced by the Boolean acceptance of a fixed rational recomputation.

The dyadic log inputs retain exact source identities. In particular, a claimed
logarithm approximation with no exact dyadic factorization cannot enter this route.
The tail coefficient 242 is a proved upper bound for the maintained coefficient
`44 / log(6/5)`, not a fitted numerical constant.

No Turing count, packet, row enclosure, endpoint acceptance, positive margin,
prime, or RH result is constructed here. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringRationalMargin

open GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
open GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
open GRWTSK.Analysis.ComplexAnalysis.RationalTentAccumulation
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open CanonicalRationalTentEvaluation
open CanonicalPositiveTuringPairedTent
open CanonicalPositiveTuringUpperTent
open CanonicalPositiveTuringExactCorrectionMargin
open RationalCanonicalPrimeMargin
open SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Exact direct log input for the natural square stage `n+1`. -/
def directStageLog (n terms : ℕ) :
    DyadicInput (((n + 1 : ℕ) : ℝ)) := by
  exact DyadicInput.direct (((n + 1 : ℕ) : ℚ))
    (by exact_mod_cast (Nat.succ_pos n).le) terms

/-- Exact direct log input for the complete exponent cutoff. -/
def directCutoffLog (n : ℕ) (hn : 1 ≤ n) (terms : ℕ) :
    DyadicInput ((exponentCutoff n : ℕ) : ℝ) := by
  exact DyadicInput.direct ((exponentCutoff n : ℕ) : ℚ)
    (by exact_mod_cast (show 1 ≤ exponentCutoff n by
      have h := two_le_exponentCutoff n hn
      omega)) terms

/-- Exact direct log input for a rational height cutoff. -/
def directHeightLog (T : ℚ) (hT : 1 ≤ T) (terms : ℕ) :
    DyadicInput (T : ℝ) :=
  DyadicInput.direct T hT terms

/-- Exact recomputed endpoints plus rational margin acceptance imply a prime.
The real strict-margin premise has disappeared from the public interface. -/
theorem prime_in_square_of_rational_claimed_margin
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (heightLog : DyadicInput packet.certificate.height)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
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
    (marginAccepted : RationalCanonicalPrimeMargin.accepts n
      heightLog stageLog cutoffLog zeroClaimed correctionClaimed = true) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hmargin := RationalCanonicalPrimeMargin.canonicalPrimeMargin_pos_of_accepts
    n hn hT heightLog stageLog cutoffLog zeroClaimed correctionClaimed
    marginAccepted
  exact prime_in_square_of_exact_prefix_claimed_endpoints
    n hn packet hT zeroBits rows zeroGap alignment
    zeroLimit zeroClaimed zeroAccepted
    N correctionBits correctionFloor correctionClaimed correctionAccepted
    hmargin

/-- Preselected accepted thresholds plus rational margin acceptance imply a prime.
This is the form intended for a fixed certificate packet: the verifier checks that
its exact recomputations clear the chosen zero upper and correction lower limits. -/
theorem prime_in_square_of_rational_threshold_margin
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (heightLog : DyadicInput packet.certificate.height)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
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
    (marginAccepted : RationalCanonicalPrimeMargin.accepts n
      heightLog stageLog cutoffLog zeroLimit correctionFloor = true) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hmargin := RationalCanonicalPrimeMargin.canonicalPrimeMargin_pos_of_accepts
    n hn hT heightLog stageLog cutoffLog zeroLimit correctionFloor
    marginAccepted
  exact prime_in_square_of_exact_prefix_thresholds
    n hn packet hT zeroBits rows zeroGap alignment
    zeroLimit zeroClaimed zeroAccepted
    N correctionBits correctionFloor correctionClaimed correctionAccepted
    hmargin

/-- Convenience specialization using exact direct log inputs for the two natural
logarithmic sources. The height log input remains explicit because certificate
heights need not be rational or integral. -/
theorem prime_in_square_of_direct_natural_log_margin
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (heightLog : DyadicInput packet.certificate.height)
    (stageTerms cutoffTerms : ℕ)
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
    (marginAccepted : RationalCanonicalPrimeMargin.accepts n
      heightLog (directStageLog n stageTerms)
        (directCutoffLog n (by omega) cutoffTerms)
      zeroLimit correctionFloor = true) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  exact prime_in_square_of_rational_threshold_margin
    n hn packet hT heightLog
    (directStageLog n stageTerms)
    (directCutoffLog n (by omega) cutoffTerms)
    zeroBits rows zeroGap alignment zeroLimit zeroClaimed zeroAccepted
    N correctionBits correctionFloor correctionClaimed correctionAccepted
    marginAccepted

end

end GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringRationalMargin
