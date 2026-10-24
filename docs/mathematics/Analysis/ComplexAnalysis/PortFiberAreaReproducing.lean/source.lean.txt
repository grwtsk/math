import GRWTSK.Interfaces.PortFiberAreaComplete
import GRWTSK.Analysis.Complex.HolomorphicAreaReproducing

/-!
# Isolated actual-area reproducing and operator-realization leaf

All maps refer to the historical completion and exact holomorphic realization. Riesz is
applied to constructed bounded evaluations; finite-area positivity is separate. Source
proof terms are not replay receipts, and this leaf changes no terminal target disposition.
-/

namespace GRWTSK.Interfaces.PortFiberAreaReproducing

open MeasureTheory
open scoped ENNReal BigOperators
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Complex.HolomorphicAreaComplete
open GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle (CircleWindow)

noncomputable section

def schemaVersion : String := "PortFiberAreaReproducing/1"

inductive AddedIndex
  | evaluationBinding
  | multiplierAction
  | reproducingVector
  | gramKernel
  | diagonalControl
  | finiteAreaPositivity
  | adjointBinding
  | phaseBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .evaluationBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X) (v : AreaCompletion hOpen),
      completedEvaluation W hOpen v =
        (completedRealization hOpen v : Section D.X) W.centerPoint
  | .multiplierAction => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (f : BoundedSymbol D.X) (v : AreaCompletion hOpen),
      completedRealization hOpen
        (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) =
          f.1 * completedRealization hOpen v
  | .reproducingVector => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (x : D.X.carrier), ∃! k : AreaCompletion hOpen,
        ∀ v, inner ℂ k v = (completedRealization hOpen v : Section D.X) x
  | .gramKernel => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (∀ z w : D.X.carrier, star (kernel hOpen z w) = kernel hOpen w z) ∧
      ∀ (κ : Type) (S : Finset κ) (p : κ → D.X.carrier) (c : κ → ℂ),
        0 ≤ (∑ i ∈ S, ∑ j ∈ S, star (c i) * c j * kernel hOpen (p i) (p j)).re
  | .diagonalControl => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X),
      kernel hOpen W.centerPoint W.centerPoint = (‖evaluationAt hOpen W.centerPoint‖ : ℂ) ^ 2 ∧
      (kernel hOpen W.centerPoint W.centerPoint).re ≤
        ((Real.sqrt (Real.pi * W.radius ^ 2))⁻¹) ^ 2
  | .finiteAreaPositivity => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ →
      ∀ x : D.X.carrier, 0 < (kernel hOpen x x).re
  | .adjointBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (f : BoundedSymbol D.X) (x : D.X.carrier),
      (ContinuousLinearMap.adjoint
        (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f))
          (kernelVector hOpen x) = star (f.value x) • kernelVector hOpen x
  | .phaseBoundary => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ → ∀ x : D.X.carrier,
      (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
        (areaMeasure D.X) hOpen (BoundedSymbol.constants D.X Complex.I)))
          (kernelVector hOpen x) ≠ Complex.I • kernelVector hOpen x

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | evaluationBinding => intro ι D h W v; exact completedEvaluation_eq_value W h v
  | multiplierAction => intro ι D h f v; exact completedRealization_multiplier h f v
  | reproducingVector =>
      intro ι D h x
      exact ⟨kernelVector h x, kernelVector_reproduces h x, kernelVector_unique h x⟩
  | gramKernel =>
      intro ι D h
      exact ⟨kernel_conj_symm h, fun κ S p c => kernel_gram_nonneg h S p c⟩
  | diagonalControl =>
      intro ι D h W
      exact ⟨kernel_diagonal h W.centerPoint, kernel_diagonal_bound W h⟩
  | finiteAreaPositivity => intro ι D h hArea x; exact kernel_diagonal_pos h hArea x
  | adjointBinding => intro ι D h f x; exact adjoint_multiplier_kernel h f x
  | phaseBoundary =>
      intro ι D h hArea x
      exact GRWTSK.Analysis.Complex.HolomorphicAreaReproducing.Fixtures.phase_wrong_sign h hArea x

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberAreaComplete.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberAreaComplete.PreviousIndex
  GRWTSK.Interfaces.PortFiberAreaComplete.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberAreaComplete.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberAreaComplete.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaReproducing
