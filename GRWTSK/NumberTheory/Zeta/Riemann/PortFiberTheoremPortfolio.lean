import GRWTSK.Logic.SimultaneousProofPortfolio
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal

namespace GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio

open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
open GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal

/-- Open application propositions are supplied by an exact consumer. The interface does not
invent their truth values. -/
structure OpenObligations where
  arithmeticBridge : Prop
  sourceComparison : Prop
  convergenceToWeil : Prop

/-- Local branches in the RH-facing theorem portfolio. -/
inductive LocalIndex
  | simultaneousRestriction
  | ordinaryFunctionGluing
  | holomorphicGlobalizationBoundary
  | arithmeticBridge
  | sourceComparison
  | convergenceToWeil
  deriving DecidableEq, Repr

/-- Exact proposition owned by each local branch. -/
def LocalClaim (O : OpenObligations) : LocalIndex → Prop
  | .simultaneousRestriction => restrictionClaim
  | .ordinaryFunctionGluing => gluingClaim
  | .holomorphicGlobalizationBoundary => holomorphicBoundaryClaim
  | .arithmeticBridge => O.arithmeticBridge
  | .sourceComparison => O.sourceComparison
  | .convergenceToWeil => O.convergenceToWeil

/-- Proven local mathematics and unresolved application obligations coexist in one portfolio. -/
def localPortfolio (O : OpenObligations) :
    Portfolio LocalIndex (LocalClaim O) where
  disposition
    | .simultaneousRestriction => .proved restrictionClaim_proof
    | .ordinaryFunctionGluing => .proved gluingClaim_proof
    | .holomorphicGlobalizationBoundary => .proved holomorphicBoundaryClaim_proof
    | .arithmeticBridge =>
        .unresolved "arithmetic-to-elliptic source bridge remains an external obligation"
    | .sourceComparison =>
        .unresolved "source-faithful comparison with the Weil form remains an external obligation"
    | .convergenceToWeil =>
        .unresolved "vanishing complete residual and convergence remain external obligations"

/-- Local branch dispositions and the terminal RH disposition are recorded independently. -/
def architecture (O : OpenObligations) :
    GRWTSK.Logic.SimultaneousProofPortfolio.Architecture
      LocalIndex (LocalClaim O) RiemannTarget where
  local := localPortfolio O
  target := .unresolved
    "Riemann Hypothesis remains independent of the local port-fiber theorem portfolio"

/-- The simultaneous restriction theorem is available without any application obligation. -/
theorem restriction_available (O : OpenObligations) :
    LocalClaim O .simultaneousRestriction :=
  restrictionClaim_proof

/-- The ordinary gluing theorem is available without any application obligation. -/
theorem gluing_available (O : OpenObligations) :
    LocalClaim O .ordinaryFunctionGluing :=
  gluingClaim_proof

/-- Replace only the arithmetic-bridge status. -/
def withArithmeticDisposition (O : OpenObligations)
    (d : ClaimDisposition O.arithmeticBridge) :
    GRWTSK.Logic.SimultaneousProofPortfolio.Architecture
      LocalIndex (LocalClaim O) RiemannTarget :=
  (architecture O).updateLocal .arithmeticBridge d

/-- Replace only the source-comparison status. -/
def withSourceComparisonDisposition (O : OpenObligations)
    (d : ClaimDisposition O.sourceComparison) :
    GRWTSK.Logic.SimultaneousProofPortfolio.Architecture
      LocalIndex (LocalClaim O) RiemannTarget :=
  (architecture O).updateLocal .sourceComparison d

/-- Rejecting the arithmetic bridge cannot erase the proved restriction branch. -/
theorem restriction_survives_rejected_arithmetic
    (O : OpenObligations) (h : ¬ O.arithmeticBridge) :
    (withArithmeticDisposition O (.refuted h)).local.disposition
        .simultaneousRestriction =
      (architecture O).local.disposition .simultaneousRestriction := by
  simp [withArithmeticDisposition]

/-- Resolving the source comparison cannot alter the terminal RH disposition. -/
theorem source_comparison_update_preserves_target
    (O : OpenObligations) (d : ClaimDisposition O.sourceComparison) :
    (withSourceComparisonDisposition O d).target = (architecture O).target :=
  rfl

/-- A hypothetical supplied refutation of RH leaves every local branch disposition unchanged. -/
theorem local_survives_hypothetical_rh_refutation
    (O : OpenObligations) (h : ¬ RiemannTarget) (i : LocalIndex) :
    ((architecture O).retarget (.refuted h)).local.disposition i =
      (architecture O).local.disposition i :=
  rfl

/-- A hypothetical supplied proof of RH likewise does not rewrite local theorem statuses. -/
theorem local_survives_hypothetical_rh_proof
    (O : OpenObligations) (h : RiemannTarget) (i : LocalIndex) :
    ((architecture O).retarget (.proved h)).local.disposition i =
      (architecture O).local.disposition i :=
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio
