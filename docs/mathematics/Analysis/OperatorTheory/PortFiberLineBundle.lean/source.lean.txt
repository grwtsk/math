import GRWTSK.Interfaces.PortFiberIndexedCoverDescent
import GRWTSK.Analysis.Operator.HolomorphicLinePort

/-!
# Disjoint portfolio extension for realized line bundles and chart-compatible operators

The propositions concern the exact constructed Mathlib bundle. Neither a cocycle nor local
operator compatibility supplies a global frame, metric theorem, Picard identification, analytic
KK product, or arithmetic application. Historical claims and terminal dispositions are untouched.
-/

namespace GRWTSK.Interfaces.PortFiberLineBundle

open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Operator.HolomorphicLinePort

noncomputable section

inductive AddedIndex
  | overlapInvertibility
  | bundleTopology
  | sectionRealization
  | operatorDescent
  | operatorComposition
  | holomorphicMultiplication
  deriving DecidableEq, Repr

/-- Small-index instances of the universe-polymorphic subject theorems. -/
def AddedClaim : AddedIndex → Prop
  | .overlapInvertibility =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (i j : ι)
        (x : D.X.carrier), x.1 ∈ (D.U i).carrier → x.1 ∈ (D.U j).carrier →
          C.scalar i j x ≠ 0
  | .bundleTopology =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (hOpen : D.IsOpenCover),
        Continuous (C.vectorBundleCore hOpen).proj ∧ IsOpenMap (C.vectorBundleCore hOpen).proj
  | .sectionRealization =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (hOpen : D.IsOpenCover),
        Nonempty (TwistedFamily C ≃ BundleSection C hOpen) ∧
          ∀ s : BundleSection C hOpen,
            Continuous (fun x => (⟨x, s.value x⟩ : (C.vectorBundleCore hOpen).TotalSpace))
  | .operatorDescent =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (hOpen : D.IsOpenCover)
        (A : CompatibleOperators C) (i : ι) (x : D.X.carrier)
        (hi : x.1 ∈ (D.U i).carrier) (a : (C.vectorBundleCore hOpen).Fiber x),
        ((C.vectorBundleCore hOpen).localTriv i ⟨x, A.descend hOpen x a⟩).2 =
          A.localOp i ⟨x.1, hi⟩ (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2)
  | .operatorComposition =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (hOpen : D.IsOpenCover)
        (A B : CompatibleOperators C) (x : D.X.carrier),
        (A.comp B).descend hOpen x = (B.descend hOpen x).comp (A.descend hOpen x)
  | .holomorphicMultiplication =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (f : HolomorphicSection D.X),
        (CompatibleOperators.multiplication C f).PreservesHolomorphy

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | overlapInvertibility =>
      intro ι D C i j x hi hj
      exact C.scalar_ne_zero i j x hi hj
  | bundleTopology =>
      intro ι D C hOpen
      exact ⟨C.projection_continuous hOpen, C.projection_isOpenMap hOpen⟩
  | sectionRealization =>
      intro ι D C hOpen
      exact ⟨⟨sectionEquiv C hOpen⟩, fun s => s.continuous_totalSection⟩
  | operatorDescent =>
      intro ι D C hOpen A i x hi a
      exact A.coordinate_descend hOpen i x hi a
  | operatorComposition =>
      intro ι D C hOpen A B x
      exact A.descend_comp B hOpen x
  | holomorphicMultiplication =>
      intro ι D C f
      exact CompatibleOperators.multiplication_preservesHolomorphy (C := C) f

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberIndexedCoverDescent.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  (Sum
    (Sum GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.LocalIndex
      GRWTSK.Interfaces.PortFiberEvaluationTopology.AddedIndex)
    GRWTSK.Interfaces.PortFiberOpenCoverDescent.AddedIndex)
  GRWTSK.Interfaces.PortFiberIndexedCoverDescent.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberIndexedCoverDescent.architecture O).local.disposition i := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberIndexedCoverDescent.architecture O).target := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberLineBundle
