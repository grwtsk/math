import GRWTSK.Interfaces.PortFiberMultiplierComplete
import GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming

/-!
# Isolated norming-evaluation leaf

The lower norm bound comes from exact nonzero bounded evaluations. Dense availability is
an explicit premise, not a consequence of chart names or full support alone. The derived
operator image is closed; the Dirac fixtures retain the obstruction to off-support recovery.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierNorming

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

noncomputable section

def schemaVersion : String := "PortFiberMultiplierNorming/1"

inductive AddedIndex
  | eigenfunctional
  | pointLowerBound
  | exactNorm
  | closedImage
  | operatorLimit
  | diracEvaluation
  | diracOptimalNorm
  | offSupportFailure
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .eigenfunctional =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (P : PointEvaluationPort M μ hOpen x) (f : BoundedSymbol D.X),
        P.functional.comp (quotientRepresentation M μ hOpen f) = f.value x • P.functional
  | .pointLowerBound =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (P : PointEvaluationPort M μ hOpen x) (f : BoundedSymbol D.X),
        ‖f.value x‖ ≤ ‖quotientRepresentation M μ hOpen f‖ ∧
        ‖f.value x‖ ≤ ‖completedRepresentation M μ hOpen f‖
  | .exactNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
        (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) (f : BoundedSymbol D.X),
        ‖quotientRepresentation M μ hOpen f‖ = ‖f‖ ∧
        ‖completedRepresentation M μ hOpen f‖ = ‖f‖ ∧
        Isometry (completedRepresentation M μ hOpen) ∧
        (representationLinearIsometry M μ hOpen S hS P).toLinearMap =
          (completedAlgHom M μ hOpen).toLinearMap
  | .closedImage =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
        (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1),
        IsClosed (Set.range (completedRepresentation M μ hOpen))
  | .operatorLimit =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
        (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1)
        (α : Type) (l : Filter α) [l.NeBot] (F : α → BoundedSymbol D.X)
        (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen),
        Tendsto (fun a => completedRepresentation M μ hOpen (F a)) l (𝓝 A) →
        ∃! f : BoundedSymbol D.X,
          completedRepresentation M μ hOpen f = A ∧ Tendsto F l (𝓝 f)
  | .diracEvaluation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (q : SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen),
        Nonempty (PointEvaluationPort (MetricWeights.identity D) (Measure.dirac x) hOpen x) ∧
        ‖diracValue D hOpen x q‖ = ‖q‖
  | .diracOptimalNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (f : BoundedSymbol D.X),
        quotientRepresentation (MetricWeights.identity D) (Measure.dirac x) hOpen f =
          f.value x • ContinuousLinearMap.id ℂ _ ∧
        ‖completedRepresentation (MetricWeights.identity D) (Measure.dirac x) hOpen f‖ =
          ‖f.value x‖
  | .offSupportFailure =>
      let D := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover
      let h := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
      let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
      let y := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.halfPoint
      let f := GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol
      (‖completedRepresentation (MetricWeights.identity D) (Measure.dirac x) h f‖ = 0 ∧
        ‖completedRepresentation (MetricWeights.identity D) (Measure.dirac y) h f‖ = (1 : ℝ) / 2) ∧
      ¬ Nonempty (PointEvaluationPort (MetricWeights.identity D) (Measure.dirac x) h y)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | eigenfunctional =>
      intro ι D C M μ hOpen x P f
      exact P.eigenfunctional f
  | pointLowerBound =>
      intro ι D C M μ hOpen x P f
      exact ⟨P.value_norm_le f, P.value_norm_le_completed f⟩
  | exactNorm =>
      intro ι D C M μ hOpen S hS P f
      exact ⟨quotientRepresentation_norm_eq M μ hOpen S hS P f,
        completedRepresentation_norm_eq M μ hOpen S hS P f,
        (representationLinearIsometry M μ hOpen S hS P).isometry,
        representationLinearIsometry_toLinearMap M μ hOpen S hS P⟩
  | closedImage =>
      intro ι D C M μ hOpen S hS P
      exact represented_range_isClosed M μ hOpen S hS P
  | operatorLimit =>
      intro ι D C M μ hOpen S hS P α l _ F A h
      exact existsUnique_symbol_of_operator_limit M μ hOpen S hS P F A h
  | diracEvaluation =>
      intro ι D hOpen x q
      exact ⟨⟨diracPointEvaluationPort D hOpen x⟩, diracValue_norm D hOpen x q⟩
  | diracOptimalNorm =>
      intro ι D hOpen x f
      exact ⟨quotientRepresentation_dirac D hOpen x f,
        completedRepresentation_dirac_norm D hOpen x f⟩
  | offSupportFailure =>
      exact ⟨Fixtures.disk_exact_dirac_norms, Fixtures.no_off_support_evaluation⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierComplete.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierComplete.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierComplete.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierComplete.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierComplete.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierNorming
