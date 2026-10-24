import GRWTSK.Interfaces.PortFiberHolomorphyCore
import GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy

/-!
# Isolated section-energy leaf and disjoint theorem portfolio

This leaf imports the unchanged v0.16 core; the core and aggregate library do not import it.
The finite-energy carrier is neither a quotient nor a Hilbert space. Source proof terms and
static acceptance criteria do not constitute Lean elaboration, trust audits, or replay receipts.
-/

namespace GRWTSK.Interfaces.PortFiberSectionEnergy

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

noncomputable section

/-- The isolated leaf's source version does not change the historical core version. -/
def schemaVersion : String := "PortFiberSectionEnergy/1"

inductive AddedIndex
  | densityMeasurable
  | zeroEnergyAE
  | energyGauge
  | finiteEnergyTransport
  | aeGauge
  | diracEnergy
  | infiniteMass
  | measureDistinction
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .densityMeasurable =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen), Measurable (density M hOpen s)
  | .zeroEnergyAE =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : BundleSection C hOpen),
        energy M μ hOpen s = 0 ↔ ∀ᵐ x ∂μ, s.value x = 0
  | .energyGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen),
        energy (transportMetric G M) μ hOpen (G.bundleSectionEquiv hOpen s) =
          energy M μ hOpen s
  | .finiteEnergyTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        ∃ e : FiniteEnergySection M μ hOpen ≃
            FiniteEnergySection (transportMetric G M) μ hOpen,
          ∀ s, (e s).1 = G.bundleSectionEquiv hOpen s.1
  | .aeGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : BundleSection C hOpen),
        AEEqual μ hOpen (G.bundleSectionEquiv hOpen s) (G.bundleSectionEquiv hOpen t) ↔
          AEEqual μ hOpen s t
  | .diracEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier),
        energy M (Measure.dirac x) hOpen s = density M hOpen s x
  | .infiniteMass =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover), μ Set.univ = ∞ →
        energy (MetricWeights.identity D) μ hOpen
          (scalarSection D hOpen
            (GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology.constantSection D.X 1)) = ∞
  | .measureDistinction =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (μ ν : Measure D.X.carrier),
        energy M μ hOpen s = 0 ∧ energy M ν hOpen s = 1 ∧ ¬ ∀ x, s.value x = 0

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | densityMeasurable =>
      intro ι D C M hOpen s
      exact density_measurable M hOpen s
  | zeroEnergyAE =>
      intro ι D C M μ hOpen s
      exact energy_eq_zero_iff M μ hOpen s
  | energyGauge =>
      intro ι D C E G M μ hOpen s
      exact energy_gauge G M μ hOpen s
  | finiteEnergyTransport =>
      intro ι D C E G M μ hOpen
      exact ⟨finiteEnergyEquiv G M μ hOpen, fun _ => rfl⟩
  | aeGauge =>
      intro ι D C E G μ hOpen s t
      exact aeEqual_gauge_iff G μ hOpen s t
  | diracEnergy =>
      intro ι D C M hOpen s x
      exact energy_dirac M hOpen s x
  | infiniteMass =>
      intro ι D μ hOpen hμ
      exact unitSection_energy_infinite D μ hOpen hμ
  | measureDistinction =>
      let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
      exact ⟨D, Cocycle.identity D, MetricWeights.identity D,
        GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.coordinate, Measure.dirac GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint, Measure.dirac GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.onePoint,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.coordinate_energy_zero, GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.coordinate_energy_one,
        GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zero_energy_not_pointwise_zero.2⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMetricAdjoint.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMetricAdjoint.PreviousIndex
  GRWTSK.Interfaces.PortFiberMetricAdjoint.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMetricAdjoint.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMetricAdjoint.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionEnergy
