# Complete source: GRWTSK.Interfaces.PortFiberSectionLinear

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96e6e21b30130c6a463d910708d81942f770e54c` · SHA-256 `51683dc015c9966aff5fdc2c1ab8a8d1834d73e14d2941a417bf8f1d5ba335f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionQuotient
import GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear

/-!
# Isolated portfolio extension for finite-energy linear operations

The historical quotient, its energy, and its gauge equivalence are unchanged. These eight
small-index source claims instantiate universe-polymorphic theorems, not kernel receipts.
No Mathlib module/normed-space instances, completed spaces, or residual discharges are added.
-/

namespace GRWTSK.Interfaces.PortFiberSectionLinear

open MeasureTheory
open scoped ENNReal
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures

noncomputable section

def schemaVersion : String := "PortFiberSectionLinear/1"

inductive AddedIndex
  | finiteClosure
  | aeOperations
  | representativeOperations
  | vectorLaws
  | quotientQuadraticEnergy
  | zeroEnergyClass
  | gaugeLinear
  | failureBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .finiteClosure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        energy M μ hOpen (sectionZero C hOpen) = 0 ∧
        (∀ s t : FiniteEnergySection M μ hOpen, energy M μ hOpen (sectionAdd s.1 t.1) < ∞) ∧
        (∀ (c : ℂ) (s : FiniteEnergySection M μ hOpen), energy M μ hOpen (sectionSMul c s.1) < ∞)
  | .aeOperations =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ s s' t t' : BundleSection C hOpen, AEEqual μ hOpen s s' → AEEqual μ hOpen t t' →
          AEEqual μ hOpen (sectionAdd s t) (sectionAdd s' t')) ∧
        (∀ (c : ℂ) (s t : BundleSection C hOpen), AEEqual μ hOpen s t →
          AEEqual μ hOpen (sectionSMul c s) (sectionSMul c t))
  | .representativeOperations =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        quotientZero M μ hOpen = classOf M μ hOpen (finiteZero M μ hOpen) ∧
        (∀ s t : FiniteEnergySection M μ hOpen,
          quotientAdd M μ hOpen (classOf M μ hOpen s) (classOf M μ hOpen t) =
            classOf M μ hOpen (finiteAdd M μ hOpen s t)) ∧
        (∀ (c : ℂ) (s : FiniteEnergySection M μ hOpen),
          quotientSMul M μ hOpen c (classOf M μ hOpen s) =
            classOf M μ hOpen (finiteSMul M μ hOpen c s))
  | .vectorLaws =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover), QuotientVectorLaws M μ hOpen
  | .quotientQuadraticEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ (c : ℂ) (q : SectionQuotient M μ hOpen),
          quotientEnergy M μ hOpen (quotientSMul M μ hOpen c q) =
            ENNReal.ofReal (Complex.normSq c) * quotientEnergy M μ hOpen q) ∧
        (∀ q r : SectionQuotient M μ hOpen,
          quotientEnergy M μ hOpen (quotientAdd M μ hOpen q r) ≤
            2 * (quotientEnergy M μ hOpen q + quotientEnergy M μ hOpen r))
  | .zeroEnergyClass =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        quotientEnergy M μ hOpen q = 0 ↔ q = quotientZero M μ hOpen
  | .gaugeLinear =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        gaugeEquiv G M μ hOpen (quotientZero M μ hOpen) =
          quotientZero (transportMetric G M) μ hOpen ∧
        (∀ q r : SectionQuotient M μ hOpen,
          gaugeEquiv G M μ hOpen (quotientAdd M μ hOpen q r) =
            quotientAdd (transportMetric G M) μ hOpen
              (gaugeEquiv G M μ hOpen q) (gaugeEquiv G M μ hOpen r)) ∧
        (∀ (c : ℂ) (q : SectionQuotient M μ hOpen),
          gaugeEquiv G M μ hOpen (quotientSMul M μ hOpen c q) =
            quotientSMul (transportMetric G M) μ hOpen c (gaugeEquiv G M μ hOpen q)) ∧
        (∀ q r : SectionQuotient (transportMetric G M) μ hOpen,
          (gaugeEquiv G M μ hOpen).symm (quotientAdd (transportMetric G M) μ hOpen q r) =
            quotientAdd M μ hOpen ((gaugeEquiv G M μ hOpen).symm q)
              ((gaugeEquiv G M μ hOpen).symm r)) ∧
        (∀ (c : ℂ) (q : SectionQuotient (transportMetric G M) μ hOpen),
          (gaugeEquiv G M μ hOpen).symm (quotientSMul (transportMetric G M) μ hOpen c q) =
            quotientSMul M μ hOpen c ((gaugeEquiv G M μ hOpen).symm q))
  | .failureBoundaries =>
      (∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
            (sectionAdd s.1 t.1) ≠
          energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s.1 +
            energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t.1) ∧
      (∀ (μ : Measure twoCharts.X.carrier), μ Set.univ = ∞ →
        energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
            (scalarSection twoCharts twoCharts_isOpen (constantSection twoCharts.X 1)) = ∞ ∧
          energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
            (sectionSMul 0 (scalarSection twoCharts twoCharts_isOpen
              (constantSection twoCharts.X 1))) = 0)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | finiteClosure =>
      intro ι D C M μ hOpen
      exact ⟨energy_zero M μ hOpen, fun s t => (finiteAdd M μ hOpen s t).2,
        fun c s => (finiteSMul M μ hOpen c s).2⟩
  | aeOperations =>
      intro ι D C μ hOpen
      exact ⟨fun _ _ _ _ hs ht => aeEqual_add μ hOpen hs ht,
        fun c _ _ h => aeEqual_smul μ hOpen c h⟩
  | representativeOperations =>
      intro ι D C M μ hOpen
      exact ⟨rfl, quotientAdd_classOf M μ hOpen, quotientSMul_classOf M μ hOpen⟩
  | vectorLaws =>
      intro ι D C M μ hOpen
      exact quotientVectorLaws M μ hOpen
  | quotientQuadraticEnergy =>
      intro ι D C M μ hOpen
      exact ⟨quotientEnergy_smul M μ hOpen, quotientEnergy_add_le M μ hOpen⟩
  | zeroEnergyClass =>
      intro ι D C M μ hOpen q
      exact quotientEnergy_eq_zero_iff M μ hOpen q
  | gaugeLinear =>
      intro ι D C E G M μ hOpen
      exact ⟨gaugeEquiv_zero G M μ hOpen, gaugeEquiv_add G M μ hOpen,
        gaugeEquiv_smul G M μ hOpen, gaugeEquiv_symm_add G M μ hOpen,
        gaugeEquiv_symm_smul G M μ hOpen⟩
  | failureBoundaries =>
      exact ⟨⟨constantAt 1 zeroPoint, constantAt 1 zeroPoint,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear.Fixtures.energy_not_additive⟩,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear.Fixtures.zero_scalar_does_not_reflect_finiteness⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionQuotient.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionQuotient.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionQuotient.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionQuotient.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionQuotient.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionLinear
```
