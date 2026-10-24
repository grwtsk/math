# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuadraticTransformBoundConversion.Variant14c5bfcf25af024932e283efb5293b629a8c67e4da97bdc18547086fa78ca995

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce85dfc14731a1b7763b2974edc7eb0c5c67840c` · SHA-256 `14c5bfcf25af024932e283efb5293b629a8c67e4da97bdc18547086fa78ca995`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn
import GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence

/-! The concrete reciprocal-zeta route has unconditional identification and
right-line truncation. Its only remaining arithmetic input is the joint signed
finite head minus the physical diagonal, at the declared expanding height.
Neither P04 nor RH is asserted without that input.
-/
noncomputable section
namespace EulerP04RH.ConcreteCompletion
open ConcreteRightLine ConcreteTail

def actual_decomposition {c : ℝ} (hc : 1 < c) : ExactDecomposition :=
  toDecomposition c hc (ConcreteIdentification.actual_identification hc)

theorem exact_signed_decomposition {c T H : ℝ}
    (hc : 1 < c) (hT : 0 ≤ T) (hH : 1 ≤ H) :
    PPNCP04.crossEnergy T = head c H T+tail c H T-PPNCP04.diagonal T := by
  simpa only [actual_decomposition,toDecomposition,sub_eq_add_neg] using
    (actual_decomposition hc).sourceIdentity T H hT hH

theorem literal_P04_of_signed_settlement {c : ℝ} (hc : 1 < c)
    (settled : SignedHeadResidueBudget c (quadraticHeight c)) : PPNCP04.P04 :=
  concrete_route_implies_literal_P04 hc (quadraticHeight c)
    (fun _ hT => quadraticHeight_valid hc hT)
    (ConcreteIdentification.actual_identification hc) (polynomial_tail_budget hc) settled

theorem literal_RH_of_signed_settlement {c : ℝ} (hc : 1 < c)
    (settled : SignedHeadResidueBudget c (quadraticHeight c)) : _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04 (literal_P04_of_signed_settlement hc settled)

theorem signed_settlement_iff_literal_P04 {c : ℝ} (hc : 1 < c) :
    SignedHeadResidueBudget c (quadraticHeight c) ↔ PPNCP04.P04 :=
  ConcreteSettlement.signed_settlement_iff_literal_P04 hc (quadraticHeight c)
    (fun _ hT => quadraticHeight_valid hc hT)
    (ConcreteIdentification.actual_identification hc) (polynomial_tail_budget hc)

/-- The fixed remaining research proposition, without an axiom or invented witness. -/
def SignedSettlementObligation : Prop :=
  SignedHeadResidueBudget 2 (quadraticHeight 2)

theorem literal_RH_of_fixed_signed_settlement
    (settled : SignedSettlementObligation) : _root_.RiemannHypothesis :=
  literal_RH_of_signed_settlement (by norm_num : (1:ℝ) < 2) settled

end EulerP04RH.ConcreteCompletion

#print axioms EulerP04RH.ConcreteCompletion.exact_signed_decomposition
#print axioms EulerP04RH.ConcreteCompletion.literal_RH_of_fixed_signed_settlement
#print axioms EulerP04RH.ConcreteCompletion.signed_settlement_iff_literal_P04
```
