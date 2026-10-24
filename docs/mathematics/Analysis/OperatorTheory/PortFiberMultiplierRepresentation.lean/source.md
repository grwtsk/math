# Complete source: GRWTSK.Interfaces.PortFiberMultiplierRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86376220002dcdf501aae27a3ebd1fd8245a85fb` · SHA-256 `42cba5ac9efce167936a5ec6dc97a1a3643a5e89eac303a1aa4aa3d5c9c2d5a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionMultiplier
import GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation

/-!
# Isolated bounded-symbol representation leaf

The disjoint claims preserve the old portfolio. Algebra representation, a.e. detection,
and full-support faithfulness are different assertions with their own exact hypotheses.
Source proof terms do not certify elaboration, trust, or any terminal target.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierRepresentation

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation

noncomputable section

def schemaVersion : String := "PortFiberMultiplierRepresentation/1"

inductive AddedIndex
  | oldProducer
  | algebraLaws
  | completionBinding
  | boundAndGauge
  | aeDetection
  | faithfulDetection
  | finiteUnit
  | supportFailure
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .oldProducer =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (b : BoundedMultiplier D.X),
        quotientRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
          quotientOperator b M μ hOpen ∧
        completedRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
          completedOperator b M μ hOpen
  | .algebraLaws =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f g : BoundedSymbol D.X) (c : ℂ),
        completedAlgHom M μ hOpen 1 = 1 ∧
        completedAlgHom M μ hOpen (f + g) =
          completedAlgHom M μ hOpen f + completedAlgHom M μ hOpen g ∧
        completedAlgHom M μ hOpen (f * g) =
          completedAlgHom M μ hOpen f * completedAlgHom M μ hOpen g ∧
        completedAlgHom M μ hOpen (c • f) = c • completedAlgHom M μ hOpen f ∧
        Commute (completedRepresentation M μ hOpen f) (completedRepresentation M μ hOpen g)
  | .completionBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f g : BoundedSymbol D.X) (q : SectionQuotient M μ hOpen),
        completedRepresentation M μ hOpen f (toCompletion M μ hOpen q) =
          toCompletion M μ hOpen (quotientRepresentation M μ hOpen f q) ∧
        (completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
          quotientRepresentation M μ hOpen f = quotientRepresentation M μ hOpen g)
  | .boundAndGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f : BoundedSymbol D.X) (K : ℝ≥0),
        (∀ x, ‖f.value x‖ ≤ (K : ℝ)) →
        ‖completedRepresentation M μ hOpen f‖ ≤ (K : ℝ) ∧
        completedRepresentation (transportMetric G M) μ hOpen f =
          gaugeConjugate G M μ hOpen (completedRepresentation M μ hOpen f)
  | .aeDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen) (f g : BoundedSymbol D.X),
        (∀ᵐ x ∂μ, s.1.value x ≠ 0) →
        (completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
          f.value =ᵐ[μ] g.value)
  | .faithfulDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        (∀ᵐ x ∂μ, s.1.value x ≠ 0) →
        Function.Injective (quotientRepresentation M μ hOpen) ∧
        Function.Injective (completedRepresentation M μ hOpen)
  | .finiteUnit =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover),
        μ Set.univ < ∞ →
        Function.Injective (completedRepresentation (MetricWeights.identity D) μ hOpen)
  | .supportFailure =>
      GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol ≠ 0 ∧
      completedRepresentation
          (MetricWeights.identity GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
          (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol = 0

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | oldProducer =>
      intro ι D C M μ hOpen b
      exact ⟨quotientRepresentation_ofMultiplier M μ hOpen b,
        completedRepresentation_ofMultiplier M μ hOpen b⟩
  | algebraLaws =>
      intro ι D C M μ hOpen f g c
      exact ⟨map_one _, map_add _ f g, map_mul _ f g, map_smul _ c f,
        completedRepresentation_commutes M μ hOpen f g⟩
  | completionBinding =>
      intro ι D C M μ hOpen f g q
      exact ⟨completedRepresentation_toCompletion M μ hOpen f q,
        completedRepresentation_eq_iff M μ hOpen f g⟩
  | boundAndGauge =>
      intro ι D C E G M μ hOpen f K hK
      exact ⟨completedRepresentation_bound M μ hOpen f K hK,
        completedRepresentation_gauge G M μ hOpen f⟩
  | aeDetection =>
      intro ι D C M μ hOpen s f g hs
      exact completedRepresentation_eq_iff_ae M μ hOpen s hs f g
  | faithfulDetection =>
      intro ι D C M μ _ hOpen s hs
      exact ⟨quotientRepresentation_injective M μ hOpen s hs,
        completedRepresentation_injective M μ hOpen s hs⟩
  | finiteUnit =>
      intro ι D μ _ hOpen hμ
      exact identityBundle_faithful D μ hOpen hμ
  | supportFailure => exact GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.nonzero_symbol_in_kernel

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionMultiplier.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionMultiplier.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionMultiplier.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionMultiplier.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionMultiplier.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierRepresentation
```
