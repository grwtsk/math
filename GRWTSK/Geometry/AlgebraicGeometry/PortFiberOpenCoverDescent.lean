import GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology
import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineGluing

/-!
# Disjoint portfolio extension for holomorphic open-cover descent

The new claims quantify over exact covers and matching maps. They do not strengthen historical
claims, identify indices, supply arithmetic premises, or modify an optional residual plan.
-/

namespace GRWTSK.Geometry.AlgebraicGeometry.PortFiberOpenCoverDescent

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge

noncomputable section

/-- New claims are indexed separately from every historical port-fiber claim. -/
inductive AddedIndex
  | holomorphicLocality
  | holomorphicSheaf
  | coordinateRingDescent
  | polynomialRecovery
  deriving DecidableEq, Repr

/-- Exact hypotheses and conclusions of the new theorem family. -/
def AddedClaim : AddedIndex → Prop
  | .holomorphicLocality =>
      ∀ (D : BinaryDomainCover) (_ : D.IsOpenCover) (f : Section D.X),
        ExtendsHolomorphically D.X f ↔
          ExtendsHolomorphically D.U (system.map D.xToU f) ∧
          ExtendsHolomorphically D.V (system.map D.xToV f)
  | .holomorphicSheaf =>
      ∀ (D : BinaryDomainCover) (_ : D.IsOpenCover),
        GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate D.holomorphicPortCover
  | .coordinateRingDescent =>
      ∀ (R : CommRingCat) (D : BinaryDomainCover) (_ : D.IsOpenCover)
        (left : Bridge R D.U) (right : Bridge R D.V),
        Descent.Compatible D left right →
          ∃! C : Bridge R D.X, C.restrict D.xToU = left ∧ C.restrict D.xToV = right
  | .polynomialRecovery =>
      ∀ (D : BinaryDomainCover) (hOpen : D.IsOpenCover),
        Descent.glue D hOpen (PolynomialModel.bridge D.U) (PolynomialModel.bridge D.V)
          (Descent.polynomial_compatible D) = PolynomialModel.bridge D.X

/-- Every new branch has an explicit theorem implementation, not a supplied global certificate. -/
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | holomorphicLocality =>
      intro D hOpen f
      exact D.holomorphic_iff_restrictions hOpen f
  | holomorphicSheaf =>
      intro D hOpen
      exact D.holomorphicSheafCertificate hOpen
  | coordinateRingDescent =>
      intro R D hOpen left right h
      exact Descent.existsUnique_glue D hOpen left right h
  | polynomialRecovery =>
      intro D hOpen
      exact Descent.glue_polynomial_model D hOpen

/-- The proof-bearing local portfolio; replay status is not encoded by this constructor. -/
def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

/-- Extend v0.11 by a disjoint sum, preserving its original claims and application obligations. -/
def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology.architecture O).combineLocal portfolio

/-- Every historical local disposition is unchanged at its exact previous index. -/
theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : Sum
      GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.LocalIndex
      GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology.AddedIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology.architecture O).local.disposition i := rfl

/-- Every new index retains the proof of its exact quantified proposition. -/
theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

/-- No new local gluing theorem changes the terminal RH disposition. -/
theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology.architecture O).target := rfl

/-- An independently supplied terminal disposition leaves every new local theorem intact. -/
theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Geometry.AlgebraicGeometry.PortFiberOpenCoverDescent
