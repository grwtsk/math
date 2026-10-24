# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AnalyticSuppliers.Variant3e0ddb6eebbdda70953f6aed1dcced4020c86703fca4757dfb9a00918dfa81a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d8c9dc56d5ffafb0fd109acf987980022ea2f40` · SHA-256 `3e0ddb6eebbdda70953f6aed1dcced4020c86703fca4757dfb9a00918dfa81a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer
import FormalResearch.RiemannHypothesis.Conversation.PrimePowerPrimitive

/-!
# Exact analytic return frontiers remain propositions

The source conversation's analytic equivalences and Landau returns require
separate proofs. These definitions preserve the actual arithmetic primitives,
real scale quantifiers and literal RH target. No axiom, admission, sample grid,
or manuscript verification status supplies an instance.

Source: audited RH conversation Batches 01–04 and 25. Human direction:
grwtsk contributors. Lean statement implementation: OpenAI Codex. The source
claim's mathematical truth is not inferred from successful elaboration.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AnalyticSuppliers

open OpenArithmeticSuppliers PolynomialMertensReduction ArithmeticPrimitive
open PolynomialRHConsumer
noncomputable section

def mangoldtLogPrimitive (t : ℝ) : ℝ := actualPrimitive (Real.exp t)
def ordinaryPrimeLogPrimitive (t : ℝ) : ℝ := ordinaryPrimePrimitive (Real.exp t)

/-- The asserted polynomial source/RH equivalence is a frontier, not a theorem here. -/
def PolynomialSourceRHEquivalence : Prop := ProblemP ↔ RiemannHypothesis

/-- The precise missing analytic return of the all-real ordinary-prime sign target. -/
def OrdinaryPrimeSignLandauReturn : Prop :=
  OrdinaryPrimeEventualSignSupplier → RiemannHypothesis

/-- The logarithmic variable is retained for the proposed Mangoldt primitive criterion. -/
def MangoldtPrimitivePolynomialRHEquivalence : Prop :=
  EventuallyPolynomialUpper mangoldtLogPrimitive ↔ RiemannHypothesis

/-- This is the separate forward direction claimed in the source, with an eventual bound. -/
def RHImpliesBoundedMangoldtPrimitive : Prop := RiemannHypothesis →
  ∃ C T : ℝ, 0 ≤ C ∧ 0 ≤ T ∧ ∀ t : ℝ, T ≤ t → |mangoldtLogPrimitive t| ≤ C

/-- A future actual sign proof can consume a proved Landau return without a hidden axiom. -/
theorem rh_of_primeSign_and_landauReturn
    (hsign : OrdinaryPrimeEventualSignSupplier) (hreturn : OrdinaryPrimeSignLandauReturn) :
    RiemannHypothesis := hreturn hsign

/-- A supplied source-rate strip theorem gives the forward polynomial-to-RH implication. -/
theorem polynomial_source_return_of_rateStrip (hstrip : SourceRateStripSupplier) :
    ProblemP → RiemannHypothesis := fun hP => rh_of_problemP_and_rateStrip hP hstrip

end
end GRWTSK.RiemannHypothesis.Conversation.AnalyticSuppliers
```
