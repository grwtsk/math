import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineTopology
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio

namespace GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationSpectrum
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology
open GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio

/-- New theorems are indexed separately from every historical application branch. -/
inductive ClaimIndex
  | evaluationContinuity
  | evaluationInjectivity
  | bridgeContinuity
  | polynomialEvaluation
  | polynomialRestriction
  deriving DecidableEq, Repr

/-- Exact mathematical claims, without an RH or arithmetic-comparison hypothesis. -/
def Claim : ClaimIndex → Prop
  | .evaluationContinuity =>
      ∀ A : Domain, Continuous (pointToSpectrum A)
  | .evaluationInjectivity =>
      ∀ A : Domain, Function.Injective (pointToSpectrum A)
  | .bridgeContinuity =>
      ∀ (R : CommRingCat) (A : Domain) (bridge : Bridge R A),
        Continuous bridge.pointMap
  | .polynomialEvaluation =>
      ∀ (A : Domain) (z : A.carrier) (p : Polynomial ℂ),
        evaluationRingHom A z (PolynomialModel.coordinateRingMap A p) = p.eval (z : ℂ)
  | .polynomialRestriction =>
      ∀ (A B : Domain) (p : Port A B),
        (GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom p).comp
          (PolynomialModel.coordinateRingMap A) = PolynomialModel.coordinateRingMap B

/-- Every new claim is supplied by its mathematical proof, not by a status label. -/
theorem claim_proof (i : ClaimIndex) : Claim i := by
  cases i with
  | evaluationContinuity => exact pointToSpectrum_continuous
  | evaluationInjectivity => exact pointToSpectrum_injective
  | bridgeContinuity =>
      intro R A bridge
      exact bridge.pointMap_continuous
  | polynomialEvaluation => exact PolynomialModel.coordinateRingMap_eval
  | polynomialRestriction =>
      intro A B p
      exact PolynomialModel.restriction_coordinateRingMap p

/-- A separate all-proved portfolio; historical indices and propositions are not rewritten. -/
def portfolio : Portfolio ClaimIndex Claim where
  disposition i := .proved (claim_proof i)

/-- Extend the existing architecture by a disjoint union of claim indices. -/
def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.architecture O).combineLocal
    portfolio

/-- Every historical branch, including the unresolved application obligations, is unchanged. -/
theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.LocalIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.architecture O).local.disposition i :=
  rfl

/-- The new branch carries exactly its independent proof. -/
theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : ClaimIndex) :
    (architecture O).local.disposition (.inr i) = .proved (claim_proof i) :=
  rfl

/-- Adding actual mathematical results does not silently resolve the terminal target. -/
theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.architecture O).target :=
  rfl

/-- Retargeting also preserves every new mathematical proof. -/
theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (d : GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture.TargetDisposition
      GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.RiemannTarget)
    (i : ClaimIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) = .proved (claim_proof i) :=
  rfl

end GRWTSK.Geometry.AlgebraicGeometry.PortFiberEvaluationTopology
