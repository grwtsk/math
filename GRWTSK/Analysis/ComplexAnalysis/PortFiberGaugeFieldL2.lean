import GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicGaugeFieldL2

/-!
# Isolated gauge-relative ambient bundle-field L2 bindings

The new carrier is an a.e. quotient of finite measurable target fields, with
measurability explicitly relative to the supplied inverse gauge. All integral,
normalization and projection maps use that same gauge, transported metric and measure.
No algebraic/topological instance, gauge-independent Borel identification or terminal
application claim is added. Proof implementations are not verification receipts.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PortFiberGaugeFieldL2

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicGaugeFieldL2
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea (areaMeasure)

noncomputable section

def schemaVersion : String := "PortFiberGaugeFieldL2/1"

inductive AddedIndex
  | metricDensity
  | ambientBijection
  | intrinsicPairing
  | energyIdentity
  | historicalEmbedding
  | projectionRealization
  | projectionLaws
  | nullPointBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .metricDensity => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (s : RawField C h),
      fieldEnergy G μ h s = ∫⁻ x, ENNReal.ofReal (‖unframe G h s x‖ ^ 2) ∂μ
  | .ambientBijection => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover),
      (∀ q : FieldL2 G μ h, fromScalarL2 G μ h (toScalarL2 G μ h q) = q) ∧
      (∀ g : Lp ℂ 2 μ, toScalarL2 G μ h (fromScalarL2 G μ h g) = g)
  | .intrinsicPairing => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (s t : FiniteField G μ h),
      Integrable (fun x => (transportMetric G (MetricWeights.identity D)).pairing h x
        (s.value x) (t.value x)) μ ∧
      fieldPairing G μ h (fieldClass G μ h s) (fieldClass G μ h t) =
        ∫ x, (transportMetric G (MetricWeights.identity D)).pairing h x (s.value x) (t.value x) ∂μ
  | .energyIdentity => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (q : FieldL2 G μ h),
      quotientFieldEnergy G μ h q = ENNReal.ofReal (‖toScalarL2 G μ h q‖ ^ 2)
  | .historicalEmbedding => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (v : GaugeAreaCompletion G h),
      toScalarL2 G (areaMeasure D.X) h (targetEmbedding G h v) = pulledL2Inclusion G h v
  | .projectionRealization => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover)
      (q : FieldL2 G (areaMeasure D.X) h),
      fieldProjection G h q = targetEmbedding G h
        (areaGauge G h (bergmanLift h (toScalarL2 G (areaMeasure D.X) h q)))
  | .projectionLaws => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover)
      (q r : FieldL2 G (areaMeasure D.X) h),
      fieldProjection G h (fieldProjection G h q) = fieldProjection G h q ∧
      fieldPairing G (areaMeasure D.X) h (fieldProjection G h q) r =
        fieldPairing G (areaMeasure D.X) h q (fieldProjection G h r) ∧
      quotientFieldEnergy G (areaMeasure D.X) h (fieldProjection G h q) ≤
        quotientFieldEnergy G (areaMeasure D.X) h q
  | .nullPointBoundary =>
      let D := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover
      let h := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
      let x := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.center
      ∀ (C : Cocycle D) (G : Gauge (Cocycle.identity D) C),
        ¬ ∃ T : FieldL2 G (areaMeasure D.X) h → ℂ,
          ∀ s : FiniteField G (areaMeasure D.X) h,
            T (fieldClass G (areaMeasure D.X) h s) = unframe G h s.value x

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | metricDensity => intro ι D C G μ h s; exact fieldEnergy_eq G μ h s
  | ambientBijection => intro ι D C G μ h; exact ⟨from_to G μ h, to_from G μ h⟩
  | intrinsicPairing =>
      intro ι D C G μ h s t
      exact ⟨fieldPair_integrable G μ h s t, fieldPairing_class G μ h s t⟩
  | energyIdentity => intro ι D C G μ h q; exact quotientFieldEnergy_norm G μ h q
  | historicalEmbedding => intro ι D C G h v; exact targetEmbedding_normalizes G h v
  | projectionRealization => intro ι D C G h q; exact fieldProjection_realizes G h q
  | projectionLaws =>
      intro ι D C G h q r
      exact ⟨fieldProjection_idempotent G h q, fieldProjection_pairing G h q r,
        fieldProjection_energy_le G h q⟩
  | nullPointBoundary =>
      intro C G
      exact GRWTSK.Analysis.ComplexAnalysis.HolomorphicGaugeFieldL2.Fixtures.no_allFields_point_recovery G

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport.PreviousIndex
  GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaGaugeTransport.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.ComplexAnalysis.PortFiberGaugeFieldL2
