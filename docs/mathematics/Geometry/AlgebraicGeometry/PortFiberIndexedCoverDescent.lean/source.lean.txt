import GRWTSK.Interfaces.PortFiberOpenCoverDescent
import GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing

/-!
# Disjoint portfolio extension for indexed holomorphic descent

The source theorems are universe-polymorphic. This portfolio records their small-index,
small-source-ring instances and extends the historical portfolio without changing any old
proposition, local disposition, application obligation, residual plan, or terminal target.
-/

namespace GRWTSK.Interfaces.PortFiberIndexedCoverDescent

open CategoryTheory
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.AlgebraicGeometry.AnalyticAffineBridge

noncomputable section

/-- Each new quantified claim has its own index, disjoint from all earlier claim indices. -/
inductive AddedIndex
  | holomorphicLocality
  | sectionDescent
  | coordinateRingDescent
  | sourcePrecomposition
  | polynomialRecovery
  | coverReindexing
  deriving DecidableEq, Repr

/-- The exact propositions stored by this portfolio; no global glue is an input. -/
def AddedClaim : AddedIndex → Prop
  | .holomorphicLocality =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (_ : D.IsOpenCover) (f : Section D.X),
        ExtendsHolomorphically D.X f ↔
          ∀ i, ExtendsHolomorphically (D.U i) (restrict (D.xTo i) f)
  | .sectionDescent =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (_ : D.IsOpenCover)
        (s : D.Family), D.Matching s →
          ∃! f : HolomorphicSection D.X, ∀ i,
            GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom
              (D.xTo i) f = s i
  | .coordinateRingDescent =>
      ∀ (ι : Type) (R : CommRingCat.{0}) (D : IndexedDomainCover ι) (_ : D.IsOpenCover)
        (localMaps : ∀ i, Bridge R (D.U i)),
        IndexedDescent.Compatible D localMaps →
          ∃! C : Bridge R D.X, ∀ i, C.restrict (D.xTo i) = localMaps i
  | .sourcePrecomposition =>
      ∀ (ι : Type) (R S : CommRingCat.{0}) (D : IndexedDomainCover ι)
        (hOpen : D.IsOpenCover) (localMaps : ∀ i, Bridge R (D.U i))
        (h : IndexedDescent.Compatible D localMaps) (f : S ⟶ R),
        (IndexedDescent.glue D hOpen localMaps h).precomp f =
          IndexedDescent.glue D hOpen (fun i => (localMaps i).precomp f)
            (IndexedDescent.compatible_precomp D localMaps h f)
  | .polynomialRecovery =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
        IndexedDescent.glue D hOpen (fun i => PolynomialModel.bridge (D.U i))
          (IndexedDescent.polynomial_compatible D) = PolynomialModel.bridge D.X
  | .coverReindexing =>
      ∀ (ι κ : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
        (s : D.Family) (h : D.Matching s) (r : κ → ι) (hr : Function.Surjective r),
        (D.reindex r hr).glue (D.reindex_isOpen hOpen r hr) (fun j => s (r j))
          (D.reindex_matching s h r hr) = D.glue hOpen s h

/-- Proof implementations for all new quantified claims; external replay remains separate. -/
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | holomorphicLocality =>
      intro ι D hOpen f
      exact D.holomorphic_iff_restrictions hOpen f
  | sectionDescent =>
      intro ι D hOpen s h
      exact D.existsUnique_glue hOpen s h
  | coordinateRingDescent =>
      intro ι R D hOpen localMaps h
      exact IndexedDescent.existsUnique_glue D hOpen localMaps h
  | sourcePrecomposition =>
      intro ι R S D hOpen localMaps h f
      exact IndexedDescent.glue_precomp D hOpen localMaps h f
  | polynomialRecovery =>
      intro ι D hOpen
      exact IndexedDescent.glue_polynomial_model D hOpen
  | coverReindexing =>
      intro ι κ D hOpen s h r hr
      exact D.glue_reindex hOpen s h r hr

/-- The proof-bearing source portfolio is not a kernel-audit or replay receipt. -/
def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

/-- Extend v0.12 by a disjoint sum without replacing any earlier branch. -/
def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberOpenCoverDescent.architecture O).combineLocal portfolio

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : Sum
      (Sum GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.LocalIndex
        GRWTSK.Interfaces.PortFiberEvaluationTopology.AddedIndex)
      GRWTSK.Interfaces.PortFiberOpenCoverDescent.AddedIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberOpenCoverDescent.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberOpenCoverDescent.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberIndexedCoverDescent
