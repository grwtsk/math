# Complete source: GRWTSK.Interfaces.PortFiberSectionQuotient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed4f856558e4cb2d96cbd141cd2347688aceee61` · SHA-256 `b6744e70c3612f44c54755e9badea6e6680c550e0612938be7f413e9e5a46565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionEnergy
import GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient

/-!
# Disjoint portfolio extension for the finite-energy a.e. quotient

These small-index claims instantiate universe-polymorphic source statements. Proof terms
are not elaboration, kernel, trust, or replay receipts. No residual or terminal target changes.
-/

namespace GRWTSK.Interfaces.PortFiberSectionQuotient

open MeasureTheory
open scoped ENNReal
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures

noncomputable section

inductive AddedIndex
  | exactQuotientEquality
  | representativeEnergy
  | quotientFiniteness
  | gaugeRepresentative
  | quotientGaugeEnergy
  | diracQuotient
  | supportCounterexample
  | energyCounterexample
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactQuotientEquality =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s t : FiniteEnergySection M μ hOpen),
        classOf M μ hOpen s = classOf M μ hOpen t ↔ AEEqual μ hOpen s.1 t.1
  | .representativeEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen),
        quotientEnergy M μ hOpen (classOf M μ hOpen s) = energy M μ hOpen s.1
  | .quotientFiniteness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        quotientEnergy M μ hOpen q < ∞
  | .gaugeRepresentative =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        gaugeEquiv G M μ hOpen (classOf M μ hOpen s) =
          classOf (transportMetric G M) μ hOpen (finiteEnergyEquiv G M μ hOpen s)
  | .quotientGaugeEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q : SectionQuotient M μ hOpen),
        quotientEnergy (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) =
          quotientEnergy M μ hOpen q
  | .diracQuotient =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (s t : FiniteEnergySection M (Measure.dirac x) hOpen),
        classOf M (Measure.dirac x) hOpen s = classOf M (Measure.dirac x) hOpen t ↔
          s.1.value x = t.1.value x
  | .supportCounterexample =>
      ∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s =
          classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t ∧
        s.1.value onePoint ≠ t.1.value onePoint
  | .energyCounterexample =>
      ∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
            twoCharts_isOpen
            (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
              twoCharts_isOpen s) =
          quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
            twoCharts_isOpen
            (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
              twoCharts_isOpen t) ∧
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s ≠
          classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactQuotientEquality =>
      intro ι D C M μ hOpen s t
      exact classOf_eq_iff M μ hOpen s t
  | representativeEnergy =>
      intro ι D C M μ hOpen s
      exact quotientEnergy_classOf M μ hOpen s
  | quotientFiniteness =>
      intro ι D C M μ hOpen q
      exact quotientEnergy_lt_top M μ hOpen q
  | gaugeRepresentative =>
      intro ι D C E G M μ hOpen s
      exact gaugeEquiv_classOf G M μ hOpen s
  | quotientGaugeEnergy =>
      intro ι D C E G M μ hOpen q
      exact quotientEnergy_gauge G M μ hOpen q
  | diracQuotient =>
      intro ι D C M hOpen x s t
      exact classOf_dirac_eq_iff M hOpen x s t
  | supportCounterexample =>
      exact ⟨coordinateAt zeroPoint, constantAt 0 zeroPoint, same_class_not_pointwise_equal⟩
  | energyCounterexample =>
      exact ⟨constantAt 1 zeroPoint, constantAt (-1) zeroPoint, equal_energy_distinct_classes⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionEnergy.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionEnergy.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionEnergy.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionEnergy.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionEnergy.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionQuotient
```
