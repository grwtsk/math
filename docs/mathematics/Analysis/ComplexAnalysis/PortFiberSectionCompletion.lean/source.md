# Complete source: GRWTSK.Interfaces.PortFiberSectionCompletion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0` · SHA-256 `5d8e26d41ce0bf738229faa5b1bec55c63a32fe5b6eeb79d998c31072764f26b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberSectionInnerProduct
import GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion

/-!
# Isolated abstract-completion leaf

The new complete carrier retains a dense isometric embedding of the old quotient and the
unique continuous extension of its exact gauge map. No representative, ambient L2 equality,
original-quotient completeness, or terminal-target conclusion is added.
-/

namespace GRWTSK.Interfaces.PortFiberSectionCompletion

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion

noncomputable section

def schemaVersion : String := "PortFiberSectionCompletion/1"

inductive AddedIndex
  | completionEmbedding
  | innerEnergyBinding
  | boundedExtension
  | gaugeEmbedding
  | gaugePreservation
  | gaugeUniqueness
  | failureBoundaries
  | complexOrder
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .completionEmbedding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        CompleteSpace (SectionCompletion M μ hOpen) ∧
        Function.Injective (toCompletion M μ hOpen) ∧
        DenseRange (toCompletion M μ hOpen) ∧ Isometry (toCompletion M μ hOpen)
  | .innerEnergyBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (s t : FiniteEnergySection M μ hOpen)
        (x : SectionCompletion M μ hOpen),
        inner ℂ (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) = inner ℂ q r ∧
        inner ℂ (toCompletion M μ hOpen (classOf M μ hOpen s))
          (toCompletion M μ hOpen (classOf M μ hOpen t)) = sectionPairing M μ hOpen s t ∧
        completionEnergy M μ hOpen (toCompletion M μ hOpen q) = quotientEnergy M μ hOpen q ∧
        completionEnergy M μ hOpen x < ∞ ∧
        dist (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) =
          Real.sqrt ((quotientEnergy M μ hOpen (q - r)).toReal)
  | .boundedExtension =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ (F : Type) [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F]
          (f : SectionQuotient M μ hOpen →L[ℂ] F),
          ∃! g : SectionCompletion M μ hOpen →L[ℂ] F,
            ∀ q, g (toCompletion M μ hOpen q) = f q) ∧
        extendLinear M μ hOpen (toCompletion M μ hOpen).toContinuousLinearMap =
          ContinuousLinearMap.id ℂ (SectionCompletion M μ hOpen)
  | .gaugeEmbedding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q : SectionQuotient M μ hOpen)
        (r : SectionQuotient (transportMetric G M) μ hOpen),
        gaugeCompletionEquiv G M μ hOpen (toCompletion M μ hOpen q) =
          toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) ∧
        (gaugeCompletionEquiv G M μ hOpen).symm
            (toCompletion (transportMetric G M) μ hOpen r) =
          toCompletion M μ hOpen ((gaugeEquiv G M μ hOpen).symm r) ∧
        Isometry (gaugeCompletionEquiv G M μ hOpen)
  | .gaugePreservation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (x y : SectionCompletion M μ hOpen)
        (z : SectionCompletion (transportMetric G M) μ hOpen),
        inner ℂ (gaugeCompletionEquiv G M μ hOpen x) (gaugeCompletionEquiv G M μ hOpen y) =
          inner ℂ x y ∧
        completionEnergy (transportMetric G M) μ hOpen (gaugeCompletionEquiv G M μ hOpen x) =
          completionEnergy M μ hOpen x ∧
        (gaugeCompletionEquiv G M μ hOpen).symm (gaugeCompletionEquiv G M μ hOpen x) = x ∧
        gaugeCompletionEquiv G M μ hOpen ((gaugeCompletionEquiv G M μ hOpen).symm z) = z
  | .gaugeUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f : SectionCompletion M μ hOpen → SectionCompletion (transportMetric G M) μ hOpen),
        Continuous f →
        (∀ q, f (toCompletion M μ hOpen q) =
          toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q)) →
        f = ⇑(gaugeCompletionEquiv G M μ hOpen)
  | .failureBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : SectionCompletion M 0 hOpen), x = 0) ∧
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x y : SectionCompletion M μ hOpen),
        ‖x‖ = ‖y‖ ∧ x ≠ y
  | .complexOrder =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x y : SectionCompletion M μ hOpen),
        inner ℂ x y = Complex.I ∧ inner ℂ y x = -Complex.I

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | completionEmbedding =>
      intro ι D C M μ hOpen
      exact ⟨sectionCompletion_complete M μ hOpen, toCompletion_injective M μ hOpen,
        toCompletion_denseRange M μ hOpen, toCompletion_isometry M μ hOpen⟩
  | innerEnergyBinding =>
      intro ι D C M μ hOpen q r s t x
      exact ⟨toCompletion_inner M μ hOpen q r, toCompletion_classOf_inner M μ hOpen s t,
        completionEnergy_toCompletion M μ hOpen q, completionEnergy_lt_top M μ hOpen x,
        toCompletion_dist M μ hOpen q r⟩
  | boundedExtension =>
      intro ι D C M μ hOpen
      constructor
      · intro F _ _ _ f
        exact existsUnique_extension M μ hOpen f
      · exact extendLinear_embedding M μ hOpen
  | gaugeEmbedding =>
      intro ι D C E G M μ hOpen q r
      exact ⟨gaugeCompletion_toCompletion G M μ hOpen q,
        gaugeCompletion_symm_toCompletion G M μ hOpen r, gaugeCompletion_isometry G M μ hOpen⟩
  | gaugePreservation =>
      intro ι D C E G M μ hOpen x y z
      exact ⟨gaugeCompletion_inner G M μ hOpen x y, completionEnergy_gauge G M μ hOpen x,
        (gaugeCompletionEquiv G M μ hOpen).symm_apply_apply x,
        (gaugeCompletionEquiv G M μ hOpen).apply_symm_apply z⟩
  | gaugeUniqueness =>
      intro ι D C E G M μ hOpen f hf h
      exact gaugeCompletion_unique G M μ hOpen f hf h
  | failureBoundaries =>
      constructor
      · intro ι D C M hOpen x
        exact zeroMeasure_completion_eq_zero M hOpen x
      · let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
        let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
        let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
        exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
          Fixtures.diracVector 1, Fixtures.diracVector (-1), Fixtures.equal_norm_distinct_completed⟩
  | complexOrder =>
      let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
      let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
      let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
      exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
        Fixtures.diracVector 1, Fixtures.diracVector Complex.I,
        Fixtures.completed_imaginary_pairing, Fixtures.completed_reversed_imaginary_pairing⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberSectionInnerProduct.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberSectionInnerProduct.PreviousIndex
  GRWTSK.Interfaces.PortFiberSectionInnerProduct.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberSectionInnerProduct.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberSectionInnerProduct.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberSectionCompletion
```
