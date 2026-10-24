# Complete source: GRWTSK.Interfaces.PortFiberMultiplierNorm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94d46d98289b96211f1fd9c7616bbb9228f280c8` · SHA-256 `d4c6523346891968b1ff877862368383e7710d38c01ed72b69d715cc50d84006`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberMultiplierRepresentation
import GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm

/-!
# Isolated supremum-norm representation leaf

The new scope selects the supremum-norm topology on the same symbol algebra. The continuous
operator maps remain the historical representations. No target disposition, residual plan,
symbol completeness, star closure, or unconditional faithfulness follows from contractivity.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierNorm

open MeasureTheory
open scoped ENNReal Topology
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm

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
        (MetricWeights.identity GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
        (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
        GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol‖ <
        ‖GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol‖

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
        GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm.Fixtures.strict_operator_norm_loss⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierRepresentation.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierRepresentation.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierRepresentation.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierRepresentation.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierRepresentation.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierNorm
```
