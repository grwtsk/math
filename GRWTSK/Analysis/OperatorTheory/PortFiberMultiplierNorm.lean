import GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation
import GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierNorm

/-!
# Isolated supremum-norm representation leaf

The new scope selects the supremum-norm topology on the same symbol algebra. The continuous
operator maps remain the historical representations. No target disposition, residual plan,
symbol completeness, star closure, or unconditional faithfulness follows from contractivity.
-/

namespace GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierNorm

open MeasureTheory
open scoped ENNReal Topology
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierNorm
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionBounded
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierNorm

noncomputable section

def schemaVersion : String := "PortFiberMultiplierNorm/1"

inductive AddedIndex
  | functionBinding
  | normCharacterization
  | topologyBinding
  | contractivity
  | mapIdentity
  | operatorConvergence
  | gaugeBinding
  | failureBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .functionBinding =>
      ∀ (X : Domain) (f : BoundedSymbol X) (x : X.carrier),
        boundedFunction X f x = f.value x ∧
        Function.Injective (boundedFunctionHom X) ∧
        functionLinearIsometry X f = boundedFunctionHom X f
  | .normCharacterization =>
      ∀ (X : Domain) (f g : BoundedSymbol X) (K : ℝ), 0 ≤ K →
        (‖f‖ ≤ K ↔ ∀ x : X.carrier, ‖f.value x‖ ≤ K) ∧
        (‖f - g‖ ≤ K ↔ ∀ x : X.carrier, ‖f.value x - g.value x‖ ≤ K) ∧
        ‖f‖ = sInf {r : ℝ | 0 ≤ r ∧ ∀ x : X.carrier, ‖f.value x‖ ≤ r}
  | .topologyBinding =>
      ∀ X : Domain,
        (inferInstance : TopologicalSpace (BoundedSymbol X)) =
          (symbolNormedCommRing X).toUniformSpace.toTopologicalSpace ∧
        Continuous (fun f : BoundedSymbol X => f.value)
  | .contractivity =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X),
        ‖quotientRepresentation M μ hOpen f‖ ≤ ‖f‖ ∧
        ‖completedRepresentation M μ hOpen f‖ ≤ ‖f‖ ∧
        ‖quotientRepresentationCLM M μ hOpen‖ ≤ 1 ∧
        ‖completedRepresentationCLM M μ hOpen‖ ≤ 1
  | .mapIdentity =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X),
        quotientRepresentationCLM M μ hOpen f = quotientRepresentation M μ hOpen f ∧
        completedRepresentationCLM M μ hOpen f = completedRepresentation M μ hOpen f ∧
        (completedRepresentationCLM M μ hOpen).toLinearMap =
          (completedAlgHom M μ hOpen).toLinearMap
  | .operatorConvergence =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f g : BoundedSymbol D.X),
        ‖completedRepresentation M μ hOpen f - completedRepresentation M μ hOpen g‖ ≤ ‖f - g‖ ∧
        Continuous (completedRepresentation M μ hOpen)
  | .gaugeBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f : BoundedSymbol D.X),
        completedRepresentationCLM (transportMetric G M) μ hOpen f =
          gaugeConjugate G M μ hOpen (completedRepresentationCLM M μ hOpen f)
  | .failureBoundaries =>
      (∀ (X : Domain) [IsEmpty X.carrier] (f : BoundedSymbol X), f = 0 ∧ ‖f‖ = 0) ∧
      ‖completedRepresentation
        (MetricWeights.identity GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
        (Measure.dirac GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.center)
        GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
        GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol‖ <
        ‖GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol‖

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | functionBinding =>
      intro X f x
      exact ⟨boundedFunction_apply X f x, boundedFunctionHom_injective X,
        functionLinearIsometry_apply X f⟩
  | normCharacterization =>
      intro X f g K hK
      exact ⟨norm_le_iff X f K hK, norm_sub_le_iff X f g K hK, norm_eq_infimum X f⟩
  | topologyBinding =>
      intro X
      exact ⟨symbolTopology_coherent X, valueMap_continuous X⟩
  | contractivity =>
      intro ι D C M μ hOpen f
      exact ⟨quotientRepresentation_norm_le M μ hOpen f,
        completedRepresentation_norm_le M μ hOpen f,
        quotientRepresentationCLM_norm_le M μ hOpen, completedRepresentationCLM_norm_le M μ hOpen⟩
  | mapIdentity =>
      intro ι D C M μ hOpen f
      exact ⟨quotientRepresentationCLM_apply M μ hOpen f,
        completedRepresentationCLM_apply M μ hOpen f,
        completedRepresentationCLM_toLinearMap M μ hOpen⟩
  | operatorConvergence =>
      intro ι D C M μ hOpen f g
      exact ⟨completedRepresentation_sub_norm_le M μ hOpen f g,
        completedRepresentation_continuous M μ hOpen⟩
  | gaugeBinding =>
      intro ι D C E G M μ hOpen f
      exact completedRepresentationCLM_gauge G M μ hOpen f
  | failureBoundaries =>
      exact ⟨fun X _ f => ⟨empty_symbol_eq_zero X f, empty_symbol_norm X f⟩,
        GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierNorm.Fixtures.strict_operator_norm_loss⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation.PreviousIndex
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierRepresentation.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierNorm
