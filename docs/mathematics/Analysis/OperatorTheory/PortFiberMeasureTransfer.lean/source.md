# Complete source: GRWTSK.Interfaces.PortFiberMeasureTransfer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fedec963221b45b638017c2707cec225a6e9263` · SHA-256 `2cf42a2da9f5822671adde08285694cfa064683adac11d44c3c0bc5396a63989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberMultiplierCircle
import GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture

/-!
# Isolated measure-domination and fixed nonatomic norming leaf

All local circle evaluations are transferred to one fixed measure through actual
measure inequalities. The selected mixture is a constructed model, not an identification
with a prescribed area/arithmetic measure. Earlier claims and targets retain their scopes.
-/

namespace GRWTSK.Interfaces.PortFiberMeasureTransfer

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
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
open GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture

noncomputable section

def schemaVersion : String := "PortFiberMeasureTransfer/1"

inductive AddedIndex
  | dominationEstimate
  | exactRestriction
  | orderedComposition
  | fixedMeasureEvaluation
  | mixtureNullity
  | denseMixtureNorm
  | selectedConstruction
  | noAtomPromotion
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .dominationEstimate =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ ν : Measure D.X.carrier) (A : MeasureDomination (D := D) μ ν)
        (hOpen : D.IsOpenCover),
        (∀ s : BundleSection C hOpen,
          energy M ν hOpen s ≤ (A.bound : ℝ≥0∞) * energy M μ hOpen s) ∧
        ‖A.restrictionCLM M hOpen‖ ≤ Real.sqrt (A.bound : ℝ)
  | .exactRestriction =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ ν : Measure D.X.carrier) (A : MeasureDomination (D := D) μ ν)
        (hOpen : D.IsOpenCover),
        (∀ s : FiniteEnergySection M μ hOpen,
          A.restrictionCLM M hOpen (classOf M μ hOpen s) =
            classOf M ν hOpen (A.finiteRestrict M hOpen s)) ∧
        ∀ f : BoundedSymbol D.X,
          (A.restrictionCLM M hOpen).comp (quotientRepresentation M μ hOpen f) =
            (quotientRepresentation M ν hOpen f).comp (A.restrictionCLM M hOpen)
  | .orderedComposition =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ ν λ : Measure D.X.carrier) (A : MeasureDomination (D := D) μ ν)
        (B : MeasureDomination (D := D) ν λ) (hOpen : D.IsOpenCover),
        (A.comp B).restrictionCLM M hOpen =
          (B.restrictionCLM M hOpen).comp (A.restrictionCLM M hOpen)
  | .fixedMeasureEvaluation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (W : CircleWindow D.X) (A : MeasureDomination (D := D) μ W.measure)
        (hOpen : D.IsOpenCover) (hμ : μ Set.univ < ∞),
        (∀ s : FiniteEnergySection (MetricWeights.identity D) μ hOpen,
          (MeasureDomination.circlePointPort W A hOpen hμ).functional
            (classOf (MetricWeights.identity D) μ hOpen s) = s.1.value W.centerPoint) ∧
        ‖(MeasureDomination.circlePointPort W A hOpen hμ).functional‖ ≤
          Real.sqrt (A.bound : ℝ)
  | .mixtureNullity =>
      ∀ (X : Domain) (W : ℕ → CircleWindow X) (w : ℕ → ℝ≥0),
        circleMixture W w Set.univ = ∑' n, (w n : ℝ≥0∞) ∧
        ∀ x : X.carrier, circleMixture W w {x} = 0
  | .denseMixtureNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : ℕ → CircleWindow D.X)
        (w : ℕ → ℝ≥0) (hOpen : D.IsOpenCover)
        (hCenters : DenseRange (fun n => (W n).centerPoint)) (hw : ∀ n, 0 < w n)
        (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞),
        (∀ f : BoundedSymbol D.X,
          ‖completedRepresentation (MetricWeights.identity D) (circleMixture W w) hOpen f‖ = ‖f‖) ∧
        IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
          (circleMixture W w) hOpen))
  | .selectedConstruction =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) [Nonempty D.X.carrier] (hOpen : D.IsOpenCover),
        ∃ μ : Measure D.X.carrier, μ Set.univ = 2 ∧ (∀ x : D.X.carrier, μ {x} = 0) ∧
          (∀ f : BoundedSymbol D.X,
            ‖completedRepresentation (MetricWeights.identity D) μ hOpen f‖ = ‖f‖) ∧
          IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) μ hOpen))
  | .noAtomPromotion =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (W : ℕ → CircleWindow D.X)
        (w : ℕ → ℝ≥0) (x : D.X.carrier),
        ¬ Nonempty (PositiveAtom (D := D) (circleMixture W w) x)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | dominationEstimate =>
      intro ι D C M μ ν A hOpen
      exact ⟨A.energy_le M hOpen, A.restrictionCLM_norm_le M hOpen⟩
  | exactRestriction =>
      intro ι D C M μ ν A hOpen
      exact ⟨A.restrictionCLM_classOf M hOpen, A.restrictionCLM_multiplier M hOpen⟩
  | orderedComposition =>
      intro ι D C M μ ν λ A B hOpen
      exact A.restrictionCLM_comp B M hOpen
  | fixedMeasureEvaluation =>
      intro ι D μ W A hOpen hμ
      exact ⟨(MeasureDomination.circlePointPort W A hOpen hμ).on_class,
        MeasureDomination.circlePointPort_norm_le W A hOpen hμ⟩
  | mixtureNullity => intro X W w; exact ⟨circleMixture_univ W w, circleMixture_singleton W w⟩
  | denseMixtureNorm =>
      intro ι D W w hOpen hCenters hw hSum
      exact ⟨circleMixture_norm_eq W w hOpen hCenters hw hSum,
        circleMixture_closed W w hOpen hCenters hw hSum⟩
  | selectedConstruction => intro ι D _ hOpen; exact exists_nonatomic_norming_measure D hOpen
  | noAtomPromotion => intro ι D W w x; exact no_positiveAtom W w x

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierCircle.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierCircle.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierCircle.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierCircle.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierCircle.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMeasureTransfer
```
