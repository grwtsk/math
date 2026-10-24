import GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport

/-!
# Isolated area gauge, chart-kernel and source-frame projection bindings

A supplied gauge from the identity cocycle is a genuine hypothesis. The target metric,
measure, completed isometry and section maps remain the historical ones. Ordinary L2 is
used only after pullback to the supplied source frame. Target-independent dispositions
are extended disjointly; no terminal theorem or verification receipt is manufactured.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea (areaMeasure)

noncomputable section

def schemaVersion : String := "PortFiberAreaGaugeTransport/1"

inductive AddedIndex
  | originalSection
  | intrinsicEnergy
  | chartEvaluation
  | kernelTransport
  | multiplierAdjoint
  | sourceFrameProjection
  | projectedSection
  | frameBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .originalSection => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover)
      (s : FiniteEnergySection (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) h),
      realizedSection G h (toCompletion (transportMetric G (MetricWeights.identity D))
        (areaMeasure D.X) h (classOf (transportMetric G (MetricWeights.identity D))
          (areaMeasure D.X) h s)) = s.1
  | .intrinsicEnergy => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (v : GaugeAreaCompletion G h),
      energy (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) h
        (realizedSection G h v) =
        completionEnergy (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) h v
  | .chartEvaluation => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (i : ι)
      (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) (v : GaugeAreaCompletion G h),
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport.chartEvaluation G h i x hi v =
        chartCoordinate C h (realizedSection G h v).value i x
  | .kernelTransport => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (i : ι)
      (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) (j : ι)
      (y : D.X.carrier) (hj : y.1 ∈ (D.U j).carrier),
      (chartKernelVector G h i x hi = star (unitValue (G.frame i) ⟨x.1, hi⟩) •
        areaGauge G h (kernelVector h x)) ∧
      (chartKernel G h i x hi j y hj = unitValue (G.frame i) ⟨x.1, hi⟩ *
        star (unitValue (G.frame j) ⟨y.1, hj⟩) * kernel h x y)
  | .multiplierAdjoint => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (f : BoundedSymbol D.X)
      (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier),
      (ContinuousLinearMap.adjoint (completedRepresentation
        (transportMetric G (MetricWeights.identity D)) (areaMeasure D.X) h f))
          (chartKernelVector G h i x hi) = star (f.value x) • chartKernelVector G h i x hi
  | .sourceFrameProjection => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover),
      (∀ v : GaugeAreaCompletion G h, ‖pulledL2Inclusion G h v‖ = ‖v‖) ∧
      pulledProjection G h = bergmanProjection h
  | .projectedSection => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (g : AmbientL2 D.X),
      realizedSection G h (pulledLift G h g) =
        G.bundleSectionEquiv h (scalarSection D h (projectedFunction h g))
  | .frameBoundaries => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (i : ι)
      (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier),
      chartKernelVector (GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport.Fixtures.phaseGauge D) h i x hi ≠
        Complex.I • areaGauge (GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport.Fixtures.phaseGauge D) h
          (kernelVector h x)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | originalSection => intro ι D C G h s; exact realizedSection_on_class G h s
  | intrinsicEnergy => intro ι D C G h v; exact realizedSection_energy G h v
  | chartEvaluation => intro ι D C G h i x hi v; exact chartEvaluation_eq_coordinate G h i x hi v
  | kernelTransport =>
      intro ι D C G h i x hi j y hj
      exact ⟨chartKernelVector_transport G h i x hi, chartKernel_transport G h i x hi j y hj⟩
  | multiplierAdjoint => intro ι D C G h f i x hi; exact target_adjoint_kernel G h f i x hi
  | sourceFrameProjection =>
      intro ι D C G h
      exact ⟨pulledL2Inclusion_norm G h, pulledProjection_eq G h⟩
  | projectedSection => intro ι D C G h g; exact pulledLift_realizedSection G h g
  | frameBoundaries =>
      intro ι D h hArea i x hi
      exact GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport.Fixtures.phase_wrong_sign h hArea i x hi

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity.PreviousIndex
  GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaKernelDensity.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport
