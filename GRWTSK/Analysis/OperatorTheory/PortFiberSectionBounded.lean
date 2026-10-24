import GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion
import GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded

/-!
# Isolated bounded-operator and completed-adjoint leaf

These claims retain the old section carriers, measures, metrics, dense embeddings and
source-gauge maps. Stored proof implementations are not verification receipts.
-/

namespace GRWTSK.Analysis.OperatorTheory.PortFiberSectionBounded

open MeasureTheory
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded

noncomputable section

def schemaVersion : String := "PortFiberSectionBounded/1"

inductive AddedIndex
  | exactExtension
  | boundedNorm
  | linearFunctor
  | composition
  | residual
  | adjointCandidate
  | gaugeAdjoint
  | failureBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactExtension =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (q : SectionQuotient M μ hOpen),
        completeMap M N μ hOpen A (toCompletion M μ hOpen q) =
          toCompletion N μ hOpen (A q) ∧ Function.Injective (completeMap M N μ hOpen)
  | .boundedNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (x : SectionCompletion M μ hOpen),
        ‖completeMap M N μ hOpen A x‖ ≤ ‖A‖ * ‖x‖ ∧
        ‖completeMap M N μ hOpen A‖ = ‖A‖
  | .linearFunctor =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A B : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) (c : ℂ),
        completeMap M N μ hOpen 0 = 0 ∧
        completeMap M N μ hOpen (A + B) =
          completeMap M N μ hOpen A + completeMap M N μ hOpen B ∧
        completeMap M N μ hOpen (A - B) =
          completeMap M N μ hOpen A - completeMap M N μ hOpen B ∧
        completeMap M N μ hOpen (c • A) = c • completeMap M N μ hOpen A
  | .composition =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E F : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (P : MetricWeights F)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (B : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient P μ hOpen)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen),
        completeMap M M μ hOpen (ContinuousLinearMap.id ℂ _) = ContinuousLinearMap.id ℂ _ ∧
        completeMap M P μ hOpen (B.comp A) =
          (completeMap N P μ hOpen B).comp (completeMap M N μ hOpen A)
  | .residual =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
        (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
          SectionQuotient (transportMetric G M) μ hOpen),
        completeMap M (transportMetric G M) μ hOpen (quotientGaugeMap G M μ hOpen) =
          completionGaugeMap G M μ hOpen ∧
        completeMap M (transportMetric G M) μ hOpen (gaugeDefect G M μ hOpen A B) =
          completedGaugeDefect G M μ hOpen A B ∧
        ‖completedGaugeDefect G M μ hOpen A B‖ = ‖gaugeDefect G M μ hOpen A B‖ ∧
        (completedGaugeDefect G M μ hOpen A B = 0 ↔ gaugeDefect G M μ hOpen A B = 0)
  | .adjointCandidate =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (S : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient M μ hOpen),
        (∀ x y, inner ℂ (S y) x = inner ℂ y (A x)) →
        completeMap N M μ hOpen S = ContinuousLinearMap.adjoint (completeMap M N μ hOpen A)
  | .gaugeAdjoint =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (T : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
        (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
          SectionQuotient (transportMetric G M) μ hOpen),
        ContinuousLinearMap.adjoint (gaugeConjugate G M μ hOpen T) =
          gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint T) ∧
        (gaugeDefect G M μ hOpen A B = 0 →
          completeMap (transportMetric G M) (transportMetric G M) μ hOpen B =
            gaugeConjugate G M μ hOpen (completeMap M M μ hOpen A) ∧
          ContinuousLinearMap.adjoint
              (completeMap (transportMetric G M) (transportMetric G M) μ hOpen B) =
            gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completeMap M M μ hOpen A)))
  | .failureBoundaries =>
      (ContinuousLinearMap.id ℂ Fixtures.DiracSpace) ≠ 0 ∧
      ContinuousLinearMap.adjoint Fixtures.phaseOperator =
        (-Complex.I) • ContinuousLinearMap.id ℂ Fixtures.DiracSpace ∧
      ContinuousLinearMap.adjoint Fixtures.phaseOperator ≠ Fixtures.phaseOperator

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactExtension =>
      intro ι D C E M N μ hOpen A q
      exact ⟨completeMap_toCompletion M N μ hOpen A q, completeMap_injective M N μ hOpen⟩
  | boundedNorm =>
      intro ι D C E M N μ hOpen A x
      exact ⟨completeMap_bound M N μ hOpen A x, completeMap_norm M N μ hOpen A⟩
  | linearFunctor =>
      intro ι D C E M N μ hOpen A B c
      exact ⟨completeMap_zero M N μ hOpen, completeMap_add M N μ hOpen A B,
        completeMap_sub M N μ hOpen A B, completeMap_smul M N μ hOpen c A⟩
  | composition =>
      intro ι D C E F M N P μ hOpen B A
      exact ⟨completeMap_id M μ hOpen, completeMap_comp M N P μ hOpen B A⟩
  | residual =>
      intro ι D C E G M μ hOpen A B
      exact ⟨completeMap_gauge G M μ hOpen, completeMap_gaugeDefect G M μ hOpen A B,
        completedGaugeDefect_norm G M μ hOpen A B,
        completedGaugeDefect_eq_zero_iff G M μ hOpen A B⟩
  | adjointCandidate =>
      intro ι D C E M N μ hOpen A S h
      exact completeMap_adjoint_of_pairing M N μ hOpen A S h
  | gaugeAdjoint =>
      intro ι D C E G M μ hOpen T A B
      refine ⟨gaugeConjugate_adjoint G M μ hOpen T, ?_⟩
      intro h
      exact ⟨completed_conjugacy_of_defect_zero G M μ hOpen A B h,
        completed_adjoint_of_defect_zero G M μ hOpen A B h⟩
  | failureBoundaries =>
      exact ⟨Fixtures.completedIdentity_ne_zero, Fixtures.phase_adjoint, Fixtures.phase_not_self_adjoint⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion.PreviousIndex
  GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberSectionCompletion.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.OperatorTheory.PortFiberSectionBounded
