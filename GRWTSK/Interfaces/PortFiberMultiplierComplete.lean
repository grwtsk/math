import GRWTSK.Interfaces.PortFiberMultiplierNorm
import GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

/-!
# Isolated bounded-holomorphic-symbol completeness leaf

Openness and nontrivial filters retain their exact scopes. Completeness concerns the
old symbol supremum norm, not the holomorphic section quotient or the operator image.
Stored local proof dispositions are not kernel or replay receipts.
-/

namespace GRWTSK.Interfaces.PortFiberMultiplierComplete

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
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

noncomputable section

def schemaVersion : String := "PortFiberMultiplierComplete/1"

inductive AddedIndex
  | canonicalRecovery
  | uniformLimit
  | localDerivative
  | completeClosedImage
  | uniqueLimit
  | operatorLimit
  | kernelBoundary
  | filterBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .canonicalRecovery =>
      ∀ (X : Domain) (g : X.carrier →ᵇ ℂ),
        (g ∈ Set.range (boundedFunctionHom X) ↔
          ExtendsHolomorphically X (g : Section X)) ∧
        ∀ hg : ExtendsHolomorphically X (g : Section X),
          boundedFunctionHom X (ofBoundedFunction X g hg) = g
  | .uniformLimit =>
      ∀ (X : Domain), IsOpen X.carrier →
        ∀ (α : Type) (l : Filter α) [l.NeBot]
          (F : α → X.carrier →ᵇ ℂ) (g : X.carrier →ᵇ ℂ),
          Tendsto F l (𝓝 g) →
          (∀ᶠ a in l, ExtendsHolomorphically X (F a : Section X)) →
          ExtendsHolomorphically X (g : Section X)
  | .localDerivative =>
      ∀ (X : Domain), IsOpen X.carrier →
        ∀ (α : Type) (l : Filter α) [l.NeBot]
          (F : α → BoundedSymbol X) (f : BoundedSymbol X),
          Tendsto F l (𝓝 f) →
          TendstoLocallyUniformlyOn (fun a => deriv (ambientRepresentative X (F a).value))
            (deriv (ambientRepresentative X f.value)) l X.carrier
  | .completeClosedImage =>
      ∀ (X : Domain), IsOpen X.carrier →
        IsClosed (Set.range (boundedFunctionHom X)) ∧ CompleteSpace (BoundedSymbol X)
  | .uniqueLimit =>
      ∀ (X : Domain), IsOpen X.carrier →
        (∀ (α : Type) (l : Filter α) [l.NeBot] (F : α → BoundedSymbol X)
          (g : X.carrier →ᵇ ℂ),
          Tendsto (fun a => boundedFunctionHom X (F a)) l (𝓝 g) →
          ∃! f : BoundedSymbol X, boundedFunctionHom X f = g ∧ Tendsto F l (𝓝 f)) ∧
        (∀ (F : ℕ → BoundedSymbol X), CauchySeq F →
          ∃! f : BoundedSymbol X, Tendsto F atTop (𝓝 f))
  | .operatorLimit =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (F : ℕ → BoundedSymbol D.X), CauchySeq F →
        ∃! f : BoundedSymbol D.X,
          Tendsto F atTop (𝓝 f) ∧
          Tendsto (fun n => completedRepresentation M μ hOpen (F n)) atTop
            (𝓝 (completedRepresentation M μ hOpen f))
  | .kernelBoundary =>
      (CompleteSpace (BoundedSymbol
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk) ∧
        GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol ≠ 0 ∧
        completedRepresentation
          (MetricWeights.identity
            GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
          (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
          GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol = 0) ∧
      (CompleteSpace (BoundedSymbol Fixtures.emptyDomain) ∧
        ∀ f : BoundedSymbol Fixtures.emptyDomain, f = 0 ∧ ‖f‖ = 0)
  | .filterBoundary =>
      let X := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
      Tendsto (fun _ : ℕ => (0 : BoundedSymbol X)) ⊥ (𝓝 0) ∧
      Tendsto (fun _ : ℕ => (0 : BoundedSymbol X)) ⊥ (𝓝 1) ∧
      (0 : BoundedSymbol X) ≠ 1

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | canonicalRecovery =>
      intro X g
      exact ⟨boundedFunction_range_iff X g, boundedFunction_ofBoundedFunction X g⟩
  | uniformLimit =>
      intro X hX α l _ F g h hF
      exact holomorphic_of_tendsto X hX h hF
  | localDerivative =>
      intro X hX α l _ F f h
      exact symbol_deriv_tendsto X hX h
  | completeClosedImage =>
      intro X hX
      exact ⟨boundedFunction_range_isClosed X hX, symbol_complete X hX⟩
  | uniqueLimit =>
      intro X hX
      constructor
      · intro α l _ F g h
        exact existsUnique_symbol_limit X hX F g h
      · intro F hF
        exact existsUnique_cauchyLimit X hX F hF
  | operatorLimit =>
      intro ι D C M μ hOpen F hF
      exact cauchy_symbols_and_operators M μ hOpen F hF
  | kernelBoundary =>
      exact ⟨Fixtures.complete_symbols_with_kernel, Fixtures.empty_complete_and_zero⟩
  | filterBoundary => exact Fixtures.bottom_limits_not_unique

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMultiplierNorm.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMultiplierNorm.PreviousIndex
  GRWTSK.Interfaces.PortFiberMultiplierNorm.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMultiplierNorm.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMultiplierNorm.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberMultiplierComplete
