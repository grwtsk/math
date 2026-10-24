import FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers
import FormalResearch.RiemannHypothesis.Conversation.PrimePowerConsumer

/-!
# Conditional consumers of the signed polynomial frontier

Two missing premises remain visible: an actual signed polynomial estimate and
the analytic source-rate-to-zero-strip implication. These theorems connect the
checked finite arithmetic reductions to Mathlib's literal RH proposition.
They do not prove either missing premise, or assert an unconditional RH proof.

Source: audited RH conversation Batches 01 and 25. Human direction:
grwtsk contributors. Local conditional consumers and Lean implementation:
OpenAI Codex. Upstream Mathlib retains the RH statement's source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PolynomialRHConsumer

open OpenArithmeticSuppliers PolynomialMertensReduction PrimePowerConsumer ZeroStripConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

noncomputable section

/-- A polynomial upper bound supplies every positive exponential allowance;
the strip-production theorem is still an explicit, separate premise. -/
theorem rh_of_problemP_and_rateStrip
    (hP : ProblemP) (hstrip : SourceRateStripSupplier) : RiemannHypothesis := by
  apply arbitrarily_small_strips_imply_rh
  intro η hη
  apply hstrip η hη
  obtain ⟨m, D, R, hD, hR, hbound⟩ := hP
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hDA : 0 ≤ D * A ^ m := mul_nonneg hD (pow_nonneg (by linarith) m)
  have hexp : 1 ≤ Real.exp (η * A) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hη.le (by linarith))
  have hmono : D * A ^ m ≤ D * A ^ m * Real.exp (η * A) := by
    simpa only [mul_one] using (mul_le_mul_of_nonneg_left hexp hDA)
  exact (hbound A hRA).trans hmono

/-- The exact signed Mertens supplier reaches the same conditional final consumer. -/
theorem rh_of_signedMertens_and_rateStrip
    (hM : SignedMertensSupplier) (hstrip : SourceRateStripSupplier) : RiemannHypothesis :=
  rh_of_problemP_and_rateStrip (problemP_iff_signedMertensSupplier.mpr hM) hstrip

/-- First-prime control must retain the square main term before this consumer applies. -/
theorem rh_of_firstPrimeWithSquareMain_and_rateStrip
    (hprime : EventuallyPolynomialUpper firstPrimeWithSquareMain)
    (hstrip : SourceRateStripSupplier) : RiemannHypothesis :=
  rh_of_problemP_and_rateStrip (source_polynomial_iff_firstPrimeWithSquareMain.mpr hprime) hstrip

end
end GRWTSK.RiemannHypothesis.Conversation.PolynomialRHConsumer
