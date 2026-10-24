import GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform

/-!
# Isolated area-Cauchy local-limit leaf

Exact area classes determine holomorphic functions. Their energy-norm Cauchy sequences
have unique holomorphic locally uniform limits. Finite-energy membership and convergence
of those limits, section-space completeness and completion realization are not asserted.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaLocalUniform

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierCircle (CircleWindow identitySymbol)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform

noncomputable section

def schemaVersion : String := "PortFiberAreaLocalUniform/1"

inductive AddedIndex
  | exactRealization
  | evaluationBinding
  | compactEstimate
  | uniformCauchy
  | holomorphicLimit
  | derivativeLimit
  | constantRecovery
  | emptyCompact
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactRealization => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      Function.Injective (realization hOpen) ∧
      ∀ s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        realization hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
          identitySymbol hOpen s.1
  | .evaluationBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X) (q : AreaQuotient hOpen),
      functional W hOpen q = (realization hOpen q : Section D.X) W.centerPoint
  | .compactEstimate => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (K : Set ℂ), IsCompact K → K ⊆ D.X.carrier →
      ∃ δ > 0, cthickening δ K ⊆ D.X.carrier ∧
        ∀ (q r : AreaQuotient hOpen) (z : ℂ), z ∈ K →
          dist (ambient hOpen q z) (ambient hOpen r z) ≤
            (Real.sqrt (Real.pi * δ ^ 2))⁻¹ * dist q r
  | .uniformCauchy => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∀ K : Set ℂ, IsCompact K → K ⊆ D.X.carrier →
        UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop K
  | .holomorphicLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∃! f : HolomorphicSection D.X,
        TendstoLocallyUniformlyOn (fun n => ambient hOpen (F n))
          (ambientRepresentative D.X (f : Section D.X)) atTop D.X.carrier
  | .derivativeLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      TendstoLocallyUniformlyOn (fun n => deriv (ambient hOpen (F n)))
        (deriv (ambientRepresentative D.X (holomorphicLimit hOpen F hF : Section D.X)))
        atTop D.X.carrier
  | .constantRecovery => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (q : AreaQuotient hOpen),
      holomorphicLimit hOpen (fun _ : ℕ => q)
        (GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) =
          realization hOpen q
  | .emptyCompact => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop ∅

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactRealization =>
      intro ι D hOpen
      exact ⟨realization_injective hOpen, realization_classOf hOpen⟩
  | evaluationBinding => intro ι D hOpen W q; exact functional_eq_realization W hOpen q
  | compactEstimate => intro ι D hOpen K hK hKX; exact compact_control hOpen hK hKX
  | uniformCauchy => intro ι D hOpen F hF K hK hKX; exact uniformCauchy_on_compact hOpen F hF hK hKX
  | holomorphicLimit => intro ι D hOpen F hF; exact existsUnique_holomorphic_limit hOpen F hF
  | derivativeLimit => intro ι D hOpen F hF; exact derivative_limit hOpen F hF
  | constantRecovery =>
      intro ι D hOpen q
      exact GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform.Fixtures.constant_limit hOpen q
  | emptyCompact =>
      intro ι D hOpen F hF
      exact GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform.Fixtures.empty_compact_control hOpen F hF

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea.PreviousIndex
  GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.OperatorTheory.PortFiberMultiplierArea.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaLocalUniform
