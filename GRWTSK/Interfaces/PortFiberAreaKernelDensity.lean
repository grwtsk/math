import GRWTSK.Interfaces.PortFiberAreaProjection
import GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity

/-!
# Isolated kernel totality and bounded-operator determination

Density is proved for the original kernel vectors and the actual completed norm.
The ambient closed span is the existing holomorphic L2 subspace, not all L2.
The historical projection, multiplier adjoint, measures and target dispositions remain fixed.
-/

namespace GRWTSK.Interfaces.PortFiberAreaKernelDensity

open MeasureTheory Set
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
open GRWTSK.Analysis.Complex.HolomorphicAreaL2
open GRWTSK.Analysis.Complex.HolomorphicAreaProjection
open GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

noncomputable section

def schemaVersion : String := "PortFiberAreaKernelDensity/1"

inductive AddedIndex
  | denseEvaluation
  | exactAnnihilator
  | normDenseSpan
  | boundedDetermination
  | adjointDetermination
  | ambientClosedSpan
  | projectionDetermination
  | samplingBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .denseEvaluation => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ v w : AreaCompletion h,
      (∀ x ∈ S, evaluationAt h x v = evaluationAt h x w) → v = w
  | .exactAnnihilator => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier),
      (∀ v : AreaCompletion h, v ∈ (kernelSpan h S).orthogonal ↔
        ∀ x ∈ S, evaluationAt h x v = 0) ∧
      (Dense S → (kernelSpan h S).orthogonal = ⊥)
  | .normDenseSpan => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      Dense (kernelSpan h S : Set (AreaCompletion h)) ∧
        ∀ (v : AreaCompletion h) (ε : ℝ), 0 < ε →
          ∃ w ∈ kernelSpan h S, dist v w < ε
  | .boundedDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      ∀ (F : Type) [NormedAddCommGroup F] [NormedSpace ℂ F]
        (A B : AreaCompletion h →L[ℂ] F),
        (∀ x ∈ S, A (kernelVector h x) = B (kernelVector h x)) → A = B
  | .adjointDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ (f : BoundedSymbol D.X)
        (T : AreaCompletion h →L[ℂ] AreaCompletion h),
        (∀ x ∈ S, T (kernelVector h x) = star (f.value x) • kernelVector h x) →
        T = ContinuousLinearMap.adjoint
          (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) h f)
  | .ambientClosedSpan => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      (ambientKernelSpan h S).topologicalClosure = holomorphicSubspace h
  | .projectionDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ g : AmbientL2 D.X,
      (∀ p : AmbientL2 D.X, p ∈ holomorphicSubspace h →
        (∀ x ∈ S, inner ℂ (l2Embedding h (kernelVector h x)) (g - p) = 0) →
          p = bergmanProjection h g) ∧
      (bergmanProjection h g = 0 ↔
        ∀ x ∈ S, inner ℂ (l2Embedding h (kernelVector h x)) g = 0)
  | .samplingBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover), kernelSpan h ∅ = ⊥) ∧
      GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.diskCoordinateVector ≠ 0 ∧
      ¬ Dense (kernelSpan
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
        {GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center} :
        Set (AreaCompletion
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen))

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | denseEvaluation => intro ι D h S hS v w hv; exact evaluation_ext_on_dense h S hS v w hv
  | exactAnnihilator =>
      intro ι D h S
      exact ⟨mem_kernelSpan_orthogonal h S, kernelSpan_orthogonal_eq_bot h S⟩
  | normDenseSpan =>
      intro ι D h S hS
      exact ⟨kernelSpan_dense h S hS, kernel_approximation h S hS⟩
  | boundedDetermination =>
      intro ι D h S hS F _ _ A B hAB
      exact boundedMap_ext_on_kernels h S hS A B hAB
  | adjointDetermination =>
      intro ι D h S hS f T hT
      exact multiplier_adjoint_unique h S hS f T hT
  | ambientClosedSpan => intro ι D h S hS; exact ambientKernelSpan_closure h S hS
  | projectionDetermination =>
      intro ι D h S hS g
      exact ⟨projection_unique_of_kernelMoments h S hS g,
        projection_zero_iff_kernelMoments h S hS g⟩
  | samplingBoundaries =>
      exact ⟨fun _ _ h => GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.empty_kernelSpan h,
        GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.diskCoordinateVector_ne_zero,
        GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.disk_center_not_total⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberAreaProjection.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberAreaProjection.PreviousIndex
  GRWTSK.Interfaces.PortFiberAreaProjection.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberAreaProjection.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberAreaProjection.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaKernelDensity
