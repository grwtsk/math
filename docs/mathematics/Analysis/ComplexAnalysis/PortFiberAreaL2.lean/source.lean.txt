import GRWTSK.Interfaces.PortFiberAreaReproducing
import GRWTSK.Analysis.Complex.HolomorphicAreaL2

/-!
# Isolated ordinary-L2 realization and integral reproduction

The source, area measure, original quotient, completion, kernel, and multiplier action are
unchanged. The L2 image is characterized by existence of a holomorphic representative, not
pointwise recovery for all representatives. Stored proof terms are not verification receipts.
-/

namespace GRWTSK.Interfaces.PortFiberAreaL2

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicAreaComplete
open GRWTSK.Analysis.Complex.HolomorphicAreaReproducing
open GRWTSK.Analysis.Complex.HolomorphicAreaL2
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

noncomputable section

def schemaVersion : String := "PortFiberAreaL2/1"

inductive AddedIndex
  | l2Membership
  | integralPairing
  | isometricBinding
  | imageCharacterization
  | closedImage
  | integralReproduction
  | multiplierBinding
  | nullPointBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .l2Membership => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v : AreaCompletion hOpen),
      MemLp (realizedValue hOpen v) 2 (areaMeasure D.X) ∧
        (toL2 hOpen v : Section D.X) =ᵐ[areaMeasure D.X] realizedValue hOpen v
  | .integralPairing => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v w : AreaCompletion hOpen),
      Integrable (fun x => star (realizedValue hOpen v x) * realizedValue hOpen w x)
        (areaMeasure D.X) ∧
      inner ℂ v w = ∫ x, star (realizedValue hOpen v x) * realizedValue hOpen w x
        ∂areaMeasure D.X
  | .isometricBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v w : AreaCompletion hOpen),
      inner ℂ (toL2 hOpen v) (toL2 hOpen w) = inner ℂ v w ∧
        ‖toL2 hOpen v‖ = ‖v‖ ∧
        Set.range (originalL2Embedding hOpen) = Set.range (l2Embedding hOpen)
  | .imageCharacterization => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (g : Lp ℂ 2 (areaMeasure D.X)),
      g ∈ holomorphicSubspace hOpen ↔ ∃ f : HolomorphicSection D.X,
        scalarEnergy hOpen f < ∞ ∧ (g : Section D.X) =ᵐ[areaMeasure D.X] (f : Section D.X)
  | .closedImage => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      IsClosed (holomorphicSubspace hOpen : Set (Lp ℂ 2 (areaMeasure D.X)))
  | .integralReproduction => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (x : D.X.carrier) (v : AreaCompletion hOpen),
      Integrable (fun z => kernel hOpen x z * realizedValue hOpen v z) (areaMeasure D.X) ∧
      (∫ z, kernel hOpen x z * realizedValue hOpen v z ∂areaMeasure D.X) =
        realizedValue hOpen v x
  | .multiplierBinding => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) (v : AreaCompletion hOpen),
      (l2Embedding hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
        hOpen f v) : Section D.X) =ᵐ[areaMeasure D.X]
          fun x => f.value x * (l2Embedding hOpen v : Section D.X) x
  | .nullPointBoundary =>
      GRWTSK.Analysis.Complex.HolomorphicAreaL2.Fixtures.spikeClass = 0 ∧
      let X := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
      let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
      ¬ ∃ E : Lp ℂ 2 (areaMeasure X) → ℂ,
        ∀ (f : Section X) (hf : MemLp f 2 (areaMeasure X)), E (hf.toLp f) = f x

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | l2Membership => intro ι D h v; exact ⟨realized_memLp h v, toL2_ae h v⟩
  | integralPairing =>
      intro ι D h v w
      exact ⟨realized_pair_integrable h v w, completed_inner_integral h v w⟩
  | isometricBinding =>
      intro ι D h v w
      exact ⟨toL2_inner h v w, toL2_norm h v, originalL2Embedding_range h⟩
  | imageCharacterization => intro ι D h g; exact mem_holomorphicSubspace_iff h g
  | closedImage => intro ι D h; exact holomorphicSubspace_closed h
  | integralReproduction =>
      intro ι D h x v
      exact ⟨kernel_integrable h x v, integral_reproduces h x v⟩
  | multiplierBinding => intro ι D h f v; exact l2Embedding_multiplier_ae h f v
  | nullPointBoundary =>
      exact ⟨GRWTSK.Analysis.Complex.HolomorphicAreaL2.Fixtures.spikeClass_zero,
        GRWTSK.Analysis.Complex.HolomorphicAreaL2.Fixtures.no_allL2_point_recovery⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberAreaReproducing.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberAreaReproducing.PreviousIndex
  GRWTSK.Interfaces.PortFiberAreaReproducing.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberAreaReproducing.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberAreaReproducing.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaL2
