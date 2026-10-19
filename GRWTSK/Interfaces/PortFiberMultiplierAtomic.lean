import GRWTSK.Interfaces.PortFiberMultiplierNorming
import GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

/-!
# Isolated atomic-evaluation producer leaf

Positive atomic measure bounds construct the old point-evaluation ports. A selected dense
atomic measure gives exact multiplier norms and a closed image for the identity bundle.
This is existence of a norming measure, not an identification with an application measure.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierAtomic

open Filter Topology MeasureTheory
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
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

noncomputable section

def schemaVersion : String := "PortFiberMultiplierAtomic/1"

inductive AddedIndex
  | atomDetection
  | evaluationBound
  | portConstruction
  | weightedMeasure
  | denseNorm
  | canonicalMeasure
  | sameRepresentation
  | missingAtom
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .atomDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (p : D.X.carrier → Prop),
        (∀ᵐ y ∂μ, p y) → p x
  | .evaluationBound =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection (MetricWeights.identity D) μ hOpen),
        A.functional hOpen (classOf (MetricWeights.identity D) μ hOpen s) = s.1.value x ∧
        ‖A.functional hOpen‖ ≤ (Real.sqrt (A.mass : ℝ))⁻¹
  | .portConstruction =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
        (hμ : μ Set.univ < ∞),
        (A.finiteMassPointPort hOpen hμ).functional = A.functional hOpen ∧
        (A.finiteMassPointPort hOpen hμ).functional ≠ 0
  | .weightedMeasure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (p : ℕ → D.X.carrier)
        (w : ℕ → ℝ≥0) (hw : ∀ n, 0 < w n),
        atomicMeasure D p w Set.univ = ∑' n, (w n : ℝ≥0∞) ∧
        ∀ n, Nonempty (PositiveAtom (D := D) (atomicMeasure D p w) (p n))
  | .denseNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
        (p : ℕ → D.X.carrier) (hp : DenseRange p) (w : ℕ → ℝ≥0)
        (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
        (f : BoundedSymbol D.X),
        ‖completedRepresentation (MetricWeights.identity D) (atomicMeasure D p w) hOpen f‖ = ‖f‖
  | .canonicalMeasure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
        (hOpen : D.IsOpenCover),
        denseAtomicMeasure D Set.univ = 2 ∧
        Isometry (denseAtomicRepresentation D hOpen) ∧
        IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
          (denseAtomicMeasure D) hOpen))
  | .sameRepresentation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
        (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X),
        denseAtomicRepresentation D hOpen f =
          completedRepresentation (MetricWeights.identity D) (denseAtomicMeasure D) hOpen f
  | .missingAtom =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier) (x : D.X.carrier),
        (0 : ℝ≥0) • Measure.dirac x ≤ μ) ∧
      ¬ Nonempty (PositiveAtom
        (D := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
        (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.halfPoint)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | atomDetection =>
      intro ι D μ x A p hp
      exact A.ae_at hp
  | evaluationBound =>
      intro ι D μ x A hOpen s
      exact ⟨A.functional_classOf hOpen s, A.functional_norm_le hOpen⟩
  | portConstruction =>
      intro ι D μ x A hOpen hμ
      exact ⟨rfl, (A.finiteMassPointPort hOpen hμ).nonzero⟩
  | weightedMeasure =>
      intro ι D p w hw
      exact ⟨atomicMeasure_univ D p w, fun n => ⟨summandAtom D p w n (hw n)⟩⟩
  | denseNorm =>
      intro ι D hOpen p hp w hw hSum f
      exact atomicMeasure_norm_eq D hOpen p hp w hw hSum f
  | canonicalMeasure =>
      intro ι D _ hOpen
      exact ⟨denseAtomicMeasure_univ D, (denseAtomicRepresentation D hOpen).isometry,
        denseAtomicRepresentation_closed D hOpen⟩
  | sameRepresentation =>
      intro ι D _ hOpen f
      exact denseAtomicRepresentation_apply D hOpen f
  | missingAtom =>
      exact ⟨fun ι D μ x => Fixtures.zero_weight_dominated μ x,
        Fixtures.no_half_atom_at_center⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierNorming.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierNorming.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierNorming.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierNorming.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierNorming.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierAtomic
