# Complete source: GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88c131709ce62b90d1893e64e1281af26f4f6f0` · SHA-256 `6e75765bde4ba7a3abef3269833a2269f786cca39b4596f95eb81271fe2b76ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy
import GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula
import GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct
import GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition
import GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds
import GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy
import GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum
import GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds
import GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts

/-! All analytic return obligations are discharged for the literal pickup.
The following terminal consumers retain only their explicitly displayed signed
arithmetic/construction inputs. None constructs P04, BMID, BGP, or SHRS.
-/
noncomputable section
namespace EulerP04RH.CompleteReturn

/-- Unconditional producer of the analytic implication; P04 remains its premise. -/
theorem analyticClosure : AnalyticClosureConstruction := LaplaceEnergy.literal_RH_of_P04

theorem transform_route_implies_literal_RH (route : TransformRouteConstruction) :
    _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04 (transform_route_implies_P04 route)

theorem fixed_window_implies_literal_RH {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (windowBound : ∀ T : ℝ, 1 ≤ T → NativeWindow.windowEnergy T ≤ C*(1+T)^q) :
    _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04
    (NativeWindow.fixed_window_implies_literal_P04 hC hq windowBound)

theorem completion_chain_implies_literal_RH
    (construction : PPNCP04.ChainConstructionObligation) : _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04 (PPNCP04.chainConstruction_implies_P04 construction)

theorem original_AS_implies_literal_RH (A : PPNCP04.ReserveFunctional) (C q η : ℝ)
    (amortized : PPNCP04.ASObligation A C q η)
    (chains : ∀ T : ℝ, 0 ≤ T → ∃ chain : PPNCP04.CompletionChain T,
      ∀ j, PPNCP04.AdmissibleBlock (chain.states j) (chain.blocks j) T η) :
    _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04
    (PPNCP04.OriginalClosure.AS_with_complete_admissible_chains_implies_P04
      A C q η amortized chains)

theorem packet_route_implies_literal_RH {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketClosure.PacketModel E) (D : ExactDecomposition) (height : ℝ → ℝ)
    (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tailBudget : RightLineTailBound D height)
    (sourceReturn : PacketClosure.SignedPacketReturn model D height)
    (gramBudget : PPNCP04.PolynomialBound model.gramConstant)
    (coefficientBudget : PPNCP04.PolynomialBound (PacketClosure.coefficientBudget model))
    (errorBudget : PPNCP04.PolynomialBound model.error) : _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04
    (PacketClosure.packet_route_implies_literal_P04 model D height heightValid tailBudget
      sourceReturn gramBudget coefficientBudget errorBudget)

/-- Exact initial Laplace line matches the declared right-line kernel. -/
theorem actual_pickup_right_line_kernel {c : ℝ} (hc : 1 < c) (t : ℝ) :
    FEMI.pickupLaplace ((c-1/2:ℝ)+t*Complex.I) = RightLine.pickupKernel c t := by
  apply FEMI.pickupLaplace_eq_reciprocal
  simp
  linarith

end EulerP04RH.CompleteReturn

#print axioms EulerP04RH.CompleteReturn.analyticClosure
#print axioms EulerP04RH.CompleteReturn.transform_route_implies_literal_RH
#print axioms EulerP04RH.CompleteReturn.original_AS_implies_literal_RH
#print axioms EulerP04RH.CompleteReturn.packet_route_implies_literal_RH
```
