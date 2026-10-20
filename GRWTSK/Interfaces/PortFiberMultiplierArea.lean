import GRWTSK.Interfaces.PortFiberAreaMean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

/-!
# Isolated actual-area quotient evaluation and multiplier norming

Eight disjoint claims extend the historical portfolio. The measure is unnormalized complex
area on the exact domain subtype. Finite total area is a detector hypothesis, not an
assumed norming or point-evaluation theorem. Completed-section realization is not asserted.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierArea

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle (CircleWindow)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

noncomputable section

def schemaVersion : String := "PortFiberMultiplierArea/1"

inductive AddedIndex
  | areaBinding
  | energyComparison
  | aeCompatibility
  | boundedEvaluation
  | detectorPort
  | radiusIndependence
  | areaNorming
  | measurableBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .areaBinding => ∀ (X : Domain), MeasurableSet X.carrier →
      (areaMeasure X).map (fun x : X.carrier => (x : ℂ)) =
        (volume : Measure ℂ).restrict X.carrier ∧
      areaMeasure X univ = (volume : Measure ℂ) X.carrier ∧
      ∀ x : X.carrier, areaMeasure X {x} = 0
  | .energyComparison => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (s : BundleSection (Cocycle.identity D) hOpen),
      ENNReal.ofReal ((Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2) ≤
        energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s
  | .aeCompatibility => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (s t : BundleSection (Cocycle.identity D) hOpen),
      AEEqual (areaMeasure D.X) hOpen s t ↔ ∀ x, s.value x = t.value x
  | .boundedEvaluation => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover),
      (∀ s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        functional W hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
          s.1.value W.centerPoint) ∧
      ‖functional W hOpen‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹
  | .detectorPort => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (f : BoundedSymbol D.X),
      (finiteAreaPointPort W hOpen hArea).functional = functional W hOpen ∧
      (finiteAreaPointPort W hOpen hArea).functional.comp
          (quotientRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f) =
        f.value W.centerPoint • (finiteAreaPointPort W hOpen hArea).functional
  | .radiusIndependence => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W V : CircleWindow D.X) (hOpen : D.IsOpenCover),
      W.centerPoint = V.centerPoint → functional W hOpen = functional V hOpen
  | .areaNorming => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ →
      (∀ f : BoundedSymbol D.X,
        ‖completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f‖ = ‖f‖) ∧
      IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen))
  | .measurableBoundary =>
      GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike =ᵐ[
        areaMeasure GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk] 0 ∧
      GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center = 1 ∧
      ¬ ExtendsHolomorphically
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
        GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | areaBinding => intro X hX; exact ⟨areaMeasure_map X hX, areaMeasure_univ X hX, areaMeasure_singleton X hX⟩
  | energyComparison => intro ι D W hOpen s; exact window_energy_bound W hOpen s
  | aeCompatibility => intro ι D hOpen s t; exact aeEqual_area_iff hOpen s t
  | boundedEvaluation => intro ι D W hOpen; exact ⟨functional_classOf W hOpen, functional_norm_le W hOpen⟩
  | detectorPort =>
      intro ι D W hOpen hArea f
      exact ⟨rfl, (finiteAreaPointPort W hOpen hArea).eigenfunctional f⟩
  | radiusIndependence => intro ι D W V hOpen h; exact functional_congr W V hOpen h
  | areaNorming =>
      intro ι D hOpen hArea
      exact ⟨area_representation_norm hOpen hArea, area_representation_closed hOpen hArea⟩
  | measurableBoundary =>
      exact ⟨GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike_ae_zero,
        GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike_center,
        GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike_not_holomorphic⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberAreaMean.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberAreaMean.PreviousIndex
  GRWTSK.Interfaces.PortFiberAreaMean.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberAreaMean.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target = (GRWTSK.Interfaces.PortFiberAreaMean.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierArea
