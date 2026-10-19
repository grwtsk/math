import GRWTSK.Interfaces.PortFiberLineBundle
import GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

/-!
# Disjoint theorem-portfolio extension for holomorphic gauge transport

This portfolio stores small-index instances of the universe-polymorphic source theorems. Gauge
transport does not retarget an application theorem, identify unrelated source objects, modify a
residual ledger, or supply an audit receipt.
-/

namespace GRWTSK.Interfaces.PortFiberGaugeTransport

open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Operator.HolomorphicLinePort
open GRWTSK.Analysis.Operator.HolomorphicLineGaugePort

noncomputable section

inductive AddedIndex
  | inverseGauge
  | constructedFrameChange
  | totalSpaceTransport
  | sectionMapBinding
  | operatorConjugacy
  | operatorHolomorphy
  | sectionNaturality
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .inverseGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E),
        G.comp G.symm = Gauge.identity C ∧ G.symm.comp G = Gauge.identity E
  | .constructedFrameChange =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (h : ∀ i, (GRWTSK.Analysis.Complex.HolomorphicSectionRing.HolomorphicSection (D.U i))ˣ),
        Nonempty (Gauge C (Construction.changeFrames C h))
  | .totalSpaceTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (hOpen : D.IsOpenCover),
        Continuous (G.totalMap hOpen) ∧ Continuous (G.symm.totalMap hOpen)
  | .sectionMapBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier),
        (G.bundleSectionEquiv hOpen s).value x = G.fiberMap hOpen x (s.value x)
  | .operatorConjugacy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a : (C.vectorBundleCore hOpen).Fiber x),
        (transport G A).descend hOpen x (G.fiberMap hOpen x a) =
          G.fiberMap hOpen x (A.descend hOpen x a)
  | .operatorHolomorphy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C),
        A.PreservesHolomorphy → (transport G A).PreservesHolomorphy
  | .sectionNaturality =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C) (hOpen : D.IsOpenCover) (hA : A.PreservesHolomorphy)
        (s : BundleSection C hOpen),
        G.bundleSectionEquiv hOpen (A.mapSection hOpen hA s) =
          (transport G A).mapSection hOpen (transport_preservesHolomorphy G A hA)
            (G.bundleSectionEquiv hOpen s)

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | inverseGauge =>
      intro ι D C E G
      exact ⟨G.comp_symm, G.symm_comp⟩
  | constructedFrameChange =>
      intro ι D C h
      exact ⟨Construction.changeFramesGauge C h⟩
  | totalSpaceTransport =>
      intro ι D C E G hOpen
      exact ⟨G.totalMap_continuous hOpen, G.symm.totalMap_continuous hOpen⟩
  | sectionMapBinding =>
      intro ι D C E G hOpen s x
      exact G.bundleSectionEquiv_value hOpen s x
  | operatorConjugacy =>
      intro ι D C E G A hOpen x a
      exact descend_intertwines G A hOpen x a
  | operatorHolomorphy =>
      intro ι D C E G A hA
      exact transport_preservesHolomorphy G A hA
  | sectionNaturality =>
      intro ι D C E G A hOpen hA s
      exact mapSection_naturality G A hOpen hA s

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberLineBundle.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberLineBundle.PreviousIndex
  GRWTSK.Interfaces.PortFiberLineBundle.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberLineBundle.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberLineBundle.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberGaugeTransport
