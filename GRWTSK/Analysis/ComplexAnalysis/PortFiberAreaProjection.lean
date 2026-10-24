import GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection

/-!
# Isolated projection and arbitrary-L2 kernel formula

This leaf retains the original embedding, area measure, completion and reproducing kernel.
The derived projection is not unrestricted point recovery and carries no runtime authority.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaProjection

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

noncomputable section

def schemaVersion : String := "PortFiberAreaProjection/1"

inductive AddedIndex
  | exactAdjointBinding
  | projectionLaws
  | exactImage
  | orthogonalResidual
  | uniqueApproximation
  | holomorphicOutput
  | arbitraryL2Kernel
  | failureBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .exactAdjointBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (v : AreaCompletion h), bergmanLift h (l2Embedding h v) = v
  | .projectionLaws => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover),
      (bergmanProjection h).comp (bergmanProjection h) = bergmanProjection h ∧
        ContinuousLinearMap.adjoint (bergmanProjection h) = bergmanProjection h ∧
        ‖bergmanProjection h‖ ≤ 1
  | .exactImage => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (g : AmbientL2 D.X),
      Set.range (bergmanProjection h) = (holomorphicSubspace h : Set (AmbientL2 D.X)) ∧
        (bergmanProjection h g = g ↔ g ∈ holomorphicSubspace h)
  | .orthogonalResidual => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (g : AmbientL2 D.X),
      (∀ v : AreaCompletion h, inner ℂ (l2Embedding h v) (g - bergmanProjection h g) = 0) ∧
        (bergmanProjection h g = 0 ↔
          ∀ v : AreaCompletion h, inner ℂ (l2Embedding h v) g = 0)
  | .uniqueApproximation => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (g : AmbientL2 D.X), ∃! p : AmbientL2 D.X, p ∈ holomorphicSubspace h ∧
        ∀ w : AmbientL2 D.X, w ∈ holomorphicSubspace h → ‖g - p‖ ≤ ‖g - w‖
  | .holomorphicOutput => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (g : AmbientL2 D.X),
      scalarEnergy h (projectedFunction h g) < ∞ ∧
        (bergmanProjection h g : Section D.X) =ᵐ[areaMeasure D.X]
          (projectedFunction h g : Section D.X)
  | .arbitraryL2Kernel => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (x : D.X.carrier) (g : AmbientL2 D.X),
      Integrable (fun z => kernel h x z * g z) (areaMeasure D.X) ∧
        (∫ z, kernel h x z * g z ∂areaMeasure D.X) =
          (projectedFunction h g : Section D.X) x
  | .failureBoundaries =>
      let D := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover
      let h := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
      let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
      (bergmanProjection h ≠ 0) ∧
        (projectedFunction h GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2.Fixtures.spikeClass :
          Section D.X) x ≠ GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike x

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactAdjointBinding => intro ι D h v; exact bergmanLift_embedding h v
  | projectionLaws =>
      intro ι D h
      exact ⟨bergmanProjection_idempotent h, bergmanProjection_adjoint h,
        bergmanProjection_norm_le h⟩
  | exactImage =>
      intro ι D h g
      exact ⟨bergmanProjection_range h, bergmanProjection_eq_self_iff h g⟩
  | orthogonalResidual =>
      intro ι D h g
      exact ⟨projection_residual_inner h g, bergmanProjection_eq_zero_iff h g⟩
  | uniqueApproximation => intro ι D h g; exact existsUnique_bestApprox h g
  | holomorphicOutput =>
      intro ι D h g
      exact ⟨projectedFunction_finite h g, bergmanProjection_ae h g⟩
  | arbitraryL2Kernel =>
      intro ι D h x g
      exact ⟨projection_kernel_integrable h x g, integral_projection h x g⟩
  | failureBoundaries =>
      exact ⟨GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection.Fixtures.disk_projection_not_zero,
        GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection.Fixtures.spike_not_recovered⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2.PreviousIndex
  GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaL2.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.ComplexAnalysis.PortFiberAreaProjection
