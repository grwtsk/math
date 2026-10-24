import GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic
import GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

/-!
# Isolated nonatomic circle-evaluation leaf

The same finite-energy quotient acquires center evaluation from holomorphic mean value,
not from a positive atom or a chosen representative. This leaf supplies one fixed measure
and one center per circle window. It does not assert a dense family for a prescribed measure.
-/

namespace GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierCircle

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

noncomputable section

def schemaVersion : String := "PortFiberMultiplierCircle/1"

inductive AddedIndex
  | normalizedNonatomic
  | analyticMean
  | squareIntegrability
  | quotientEvaluation
  | optimalFunctional
  | multiplierBinding
  | noAtomicSubstitution
  | holomorphicBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .normalizedNonatomic =>
      ∀ (X : Domain) (W : CircleWindow X), W.measure Set.univ = 1 ∧
        ∀ x : X.carrier, W.measure {x} = 0
  | .analyticMean =>
      ∀ (X : Domain) (W : CircleWindow X) (f : HolomorphicSection X),
        (∫ x, (f : Section X) x ∂W.measure) = (f : Section X) W.centerPoint
  | .squareIntegrability =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection (MetricWeights.identity D) W.measure hOpen),
        Integrable (fun x => s.1.value x * s.1.value x) W.measure ∧
        (∫ x, s.1.value x * s.1.value x ∂W.measure) =
          s.1.value W.centerPoint * s.1.value W.centerPoint
  | .quotientEvaluation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : CircleWindow D.X) (hOpen : D.IsOpenCover),
        (∀ s : FiniteEnergySection (MetricWeights.identity D) W.measure hOpen,
          W.functional hOpen (classOf (MetricWeights.identity D) W.measure hOpen s) =
            s.1.value W.centerPoint) ∧
        ∀ q : SectionQuotient (MetricWeights.identity D) W.measure hOpen,
          ‖W.functional hOpen q‖ ≤ ‖q‖
  | .optimalFunctional =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : CircleWindow D.X) (hOpen : D.IsOpenCover),
        ‖W.functional hOpen‖ = 1
  | .multiplierBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
        (f : BoundedSymbol D.X),
        (W.pointPort hOpen).functional = W.functional hOpen ∧
        (W.pointPort hOpen).functional.comp
          (quotientRepresentation (MetricWeights.identity D) W.measure hOpen f) =
          f.value W.centerPoint • (W.pointPort hOpen).functional ∧
        ‖f.value W.centerPoint‖ ≤
          ‖completedRepresentation (MetricWeights.identity D) W.measure hOpen f‖
  | .noAtomicSubstitution =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : CircleWindow D.X) (x : D.X.carrier),
        ¬ Nonempty (PositiveAtom (D := D) W.measure x)
  | .holomorphicBoundary =>
      (GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike =ᵐ[
        GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.halfCircle.measure] 0) ∧
      GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike
        GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.halfCircle.centerPoint = 1 ∧
      ¬ ExtendsHolomorphically
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
        GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | normalizedNonatomic => intro X W; exact ⟨W.measure_univ, W.measure_singleton⟩
  | analyticMean => intro X W f; exact W.integral_holomorphic f
  | squareIntegrability =>
      intro ι D W hOpen s
      exact ⟨W.section_square_integrable hOpen s, W.section_square_mean hOpen s.1⟩
  | quotientEvaluation =>
      intro ι D W hOpen
      exact ⟨W.functional_classOf hOpen, W.value_norm_bound hOpen⟩
  | optimalFunctional => intro ι D W hOpen; exact W.functional_norm hOpen
  | multiplierBinding =>
      intro ι D W hOpen f
      exact ⟨rfl, (W.pointPort hOpen).eigenfunctional f, W.center_norm_le_operator hOpen f⟩
  | noAtomicSubstitution => intro ι D W x; exact W.no_positiveAtom x
  | holomorphicBoundary =>
      exact ⟨GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike_ae_zero,
        GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike_center,
        GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle.Fixtures.spike_not_holomorphic⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic.PreviousIndex
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierAtomic.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierCircle
