# Complete source: GRWTSK.Interfaces.PortFiberSectionMultiplier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8648c218d103f7ed154f2bed81a752b05015ec9e` · SHA-256 `4d771306aac878d5a1c4ff931b0f4203bec757951d294aadaecf56aeb67b00d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionBounded
import GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier

/-!
# Isolated bounded holomorphic-multiplier producer

Each added claim refers to the constructed scalar-section operator. The previous portfolio,
application obligations and terminal target remain unchanged. Source proofs are not receipts.
-/

namespace GRWTSK.Interfaces.PortFiberSectionMultiplier

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier

noncomputable section

def schemaVersion : String := "PortFiberSectionMultiplier/1"

inductive AddedIndex
  | sectionProducer
  | energyBound
  | quotientBinding
  | symbolCongruence
  | productLaw
  | gaugeDefect
  | completedTransport
  | supportBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .sectionProducer =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (b : BoundedMultiplier D.X) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen) (x : D.X.carrier),
        (sectionMultiply b.symbol hOpen s).value x = (b.symbol : Section D.X) x • s.value x
  | .energyBound =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen),
        energy M μ hOpen (sectionMultiply b.symbol hOpen s) ≤
          ENNReal.ofReal ((b.bound : ℝ) ^ 2) * energy M μ hOpen s
  | .quotientBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        quotientOperator b M μ hOpen (classOf M μ hOpen s) =
          classOf M μ hOpen (finiteMultiply b M μ hOpen s) ∧
        ‖quotientOperator b M μ hOpen‖ ≤ (b.bound : ℝ)
  | .symbolCongruence =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (a b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ᵐ x ∂μ, (a.symbol : Section D.X) x = (b.symbol : Section D.X) x) →
        quotientOperator a M μ hOpen = quotientOperator b M μ hOpen
  | .productLaw =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (a b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        quotientOperator (a.mul b) M μ hOpen =
          (quotientOperator a M μ hOpen).comp (quotientOperator b M μ hOpen) ∧
        completedOperator (a.mul b) M μ hOpen =
          (completedOperator a M μ hOpen).comp (completedOperator b M μ hOpen)
  | .gaugeDefect =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (b : BoundedMultiplier D.X)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        gaugeDefect G M μ hOpen (quotientOperator b M μ hOpen)
          (quotientOperator b (transportMetric G M) μ hOpen) = 0
  | .completedTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (b : BoundedMultiplier D.X)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen),
        completedOperator b M μ hOpen (toCompletion M μ hOpen (classOf M μ hOpen s)) =
          toCompletion M μ hOpen (classOf M μ hOpen (finiteMultiply b M μ hOpen s)) ∧
        ‖completedOperator b M μ hOpen‖ ≤ (b.bound : ℝ) ∧
        completedOperator b (transportMetric G M) μ hOpen =
          gaugeConjugate G M μ hOpen (completedOperator b M μ hOpen) ∧
        ContinuousLinearMap.adjoint (completedOperator b (transportMetric G M) μ hOpen) =
          gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completedOperator b M μ hOpen))
  | .supportBoundary =>
      (¬ ∃ c : ℂ, ∀ x : Fixtures.disk.carrier,
        (Fixtures.diskCoordinate.symbol : Section Fixtures.disk) x = c) ∧
      quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.center) Fixtures.diskCover_isOpen = 0 ∧
      ‖quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.center) Fixtures.diskCover_isOpen‖ < 1 ∧
      quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.halfPoint) Fixtures.diskCover_isOpen ≠ 0

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | sectionProducer =>
      intro ι D C b hOpen s x
      exact sectionMultiply_value b.symbol hOpen s x
  | energyBound =>
      intro ι D C M b μ hOpen s
      exact energy_multiply_le b M μ hOpen s
  | quotientBinding =>
      intro ι D C M b μ hOpen s
      exact ⟨quotientOperator_classOf b M μ hOpen s, quotientOperator_norm_le b M μ hOpen⟩
  | symbolCongruence =>
      intro ι D C M a b μ hOpen h
      exact quotientOperator_congr_ae a b M μ hOpen h
  | productLaw =>
      intro ι D C M a b μ hOpen
      exact ⟨quotientOperator_mul a b M μ hOpen, completedOperator_mul a b M μ hOpen⟩
  | gaugeDefect =>
      intro ι D C E G M b μ hOpen
      exact multiplier_gaugeDefect_zero b G M μ hOpen
  | completedTransport =>
      intro ι D C E G M b μ hOpen s
      exact ⟨completedOperator_toCompletion b M μ hOpen s, completedOperator_norm_le b M μ hOpen,
        completedOperator_gauge b G M μ hOpen, completedOperator_adjoint_gauge b G M μ hOpen⟩
  | supportBoundary =>
      exact ⟨Fixtures.diskCoordinate_nonconstant, Fixtures.diskCoordinate_operator_zero,
        Fixtures.diskCoordinate_norm_strict, Fixtures.diskCoordinate_operator_ne_zero_at_half⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionBounded.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionBounded.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionBounded.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionBounded.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionBounded.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionMultiplier
```
