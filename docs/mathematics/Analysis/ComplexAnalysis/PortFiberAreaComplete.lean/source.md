# Complete source: GRWTSK.Interfaces.PortFiberAreaComplete

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4eb2831f018f2f4b2674dce246c28ec6f69ab6d` · SHA-256 `b2893af6d7a9d06ab7cec3754a1468ed25e7d5c5faba64b6bacb67ef0b50323b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberAreaLocalUniform
import GRWTSK.Analysis.Complex.HolomorphicAreaComplete

/-!
# Isolated original-area completeness and completion-realization leaf

Fatou controls the same previously constructed local limit and its differences.
Completeness and surjectivity of the historical embedding follow from that global
argument. The result is area-specific; all preceding dispositions remain separate.
-/

namespace GRWTSK.Interfaces.PortFiberAreaComplete

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea
open GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.Complex.HolomorphicAreaComplete

noncomputable section

def schemaVersion : String := "PortFiberAreaComplete/1"

inductive AddedIndex
  | exactEnergy
  | lowerSemicontinuity
  | finiteLimit
  | tailControl
  | normConvergence
  | quotientComplete
  | completionBinding
  | failureBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactEnergy => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (q : AreaQuotient hOpen),
      scalarEnergy hOpen (realization hOpen q) =
        quotientEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen q
  | .lowerSemicontinuity => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → HolomorphicSection D.X) (f : HolomorphicSection D.X),
      (∀ x : D.X.carrier, Tendsto (fun n => (F n : Section D.X) x) atTop
        (𝓝 ((f : Section D.X) x))) →
      scalarEnergy hOpen f ≤ liminf (fun n => scalarEnergy hOpen (F n)) atTop
  | .finiteLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      scalarEnergy hOpen (holomorphicLimit hOpen F hF) < ∞ ∧
        realization hOpen (limitClass hOpen F hF) = holomorphicLimit hOpen F hF
  | .tailControl => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F) (n : ℕ) (ε : ℝ), 0 ≤ ε →
      (∀ᶠ m in atTop, dist (F n) (F m) ≤ ε) →
      dist (F n) (limitClass hOpen F hF) ≤ ε
  | .normConvergence => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      Tendsto F atTop (𝓝 (limitClass hOpen F hF)) ∧
        ∃! q : AreaQuotient hOpen, Tendsto F atTop (𝓝 q)
  | .quotientComplete => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      CompleteSpace (AreaQuotient hOpen) ∧
        Function.Surjective (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen)
  | .completionBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (∀ q : AreaQuotient hOpen,
        areaCompletionEquiv hOpen q =
          toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q ∧
        completedRealization hOpen
          (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) =
          realization hOpen q) ∧
      (∀ v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        scalarEnergy hOpen (completedRealization hOpen v) =
          completionEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen v ∧
        scalarEnergy hOpen (completedRealization hOpen v) < ∞) ∧
      Function.Injective (completedRealization hOpen)
  | .failureBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
        (q : AreaQuotient hOpen),
        limitClass hOpen (fun _ : ℕ => q)
          (GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) = q) ∧
      (∀ k : ℕ, Tendsto (fun n =>
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k) atTop (𝓝 0)) ∧
      (∀ n : ℕ, (∫⁻ k,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k ∂Measure.count) = 1) ∧
      (∫⁻ _k : ℕ, (0 : ℝ≥0∞) ∂Measure.count) <
        liminf (fun n => ∫⁻ k,
          GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k ∂Measure.count) atTop

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactEnergy => intro ι D hOpen q; exact scalarEnergy_realization hOpen q
  | lowerSemicontinuity => intro ι D hOpen F f hF; exact scalarEnergy_le_liminf hOpen F f hF
  | finiteLimit =>
      intro ι D hOpen F hF
      exact ⟨holomorphicLimit_finite hOpen F hF, realization_limitClass hOpen F hF⟩
  | tailControl => intro ι D hOpen F hF n ε hε h; exact distance_limit_le hOpen F hF n ε hε h
  | normConvergence =>
      intro ι D hOpen F hF
      exact ⟨limitClass_tendsto hOpen F hF, existsUnique_area_limit hOpen F hF⟩
  | quotientComplete =>
      intro ι D hOpen
      exact ⟨areaQuotient_complete hOpen, toCompletion_surjective hOpen⟩
  | completionBinding =>
      intro ι D hOpen
      exact ⟨fun q => ⟨areaCompletionEquiv_apply hOpen q, completedRealization_toCompletion hOpen q⟩,
        fun v => ⟨completedRealization_energy hOpen v, completedRealization_finite hOpen v⟩,
        completedRealization_injective hOpen⟩
  | failureBoundaries =>
      exact ⟨fun ι D hOpen q =>
          GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.constant_limitClass hOpen q,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_pointwise,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_integral,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse_strict_fatou⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberAreaLocalUniform.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberAreaLocalUniform.PreviousIndex
  GRWTSK.Interfaces.PortFiberAreaLocalUniform.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberAreaLocalUniform.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberAreaLocalUniform.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaComplete
```
