# Complete source: GRWTSK.Interfaces.PortFiberPortfolioLedger

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff66c7de52d1f72263a78c374df092f430fd9247` · SHA-256 `83ecb473c5a35f4c846de1c23a7538514fcda5bac7aa9711178b8bf7642d17ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio
import GRWTSK.Interfaces.OptionalAdapterComposition

namespace GRWTSK.Interfaces.PortFiberPortfolioLedger

open GRWTSK.Interfaces.OptionalAdapterGate
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio

universe u

/-- A local theorem portfolio paired with an independently validated residual plan.

The theorem dispositions and terminal target are not fields of the residual plan, so the plan
cannot strengthen, refute, erase, or otherwise rewrite them. -/
structure GovernedPortfolio
    {I Key : Type u} [DecidableEq Key]
    (Claim : I → Prop) (Target : Prop)
    (initial final : Ledger Key) where
  architecture : Architecture I Claim Target
  plan : AcceptedPlan initial final

namespace GovernedPortfolio

variable {I Key : Type u} [DecidableEq Key]
variable {Claim : I → Prop} {Target : Prop}
variable {initial final : Ledger Key}

/-- Exact local theorem disposition, independent of residual-plan state. -/
def localDisposition
    (G : GovernedPortfolio Claim Target initial final) (i : I) :
    ClaimDisposition (Claim i) :=
  G.architecture.local.disposition i

/-- Exact terminal target disposition, independent of residual-plan state. -/
def targetDisposition
    (G : GovernedPortfolio Claim Target initial final) :
    TargetDisposition Target :=
  G.architecture.target

/-- A residual key untouched by the accepted plan remains unchanged. -/
theorem ledger_eq_of_not_touches
    (G : GovernedPortfolio Claim Target initial final)
    {key : Key} (h : ¬ G.plan.Touches key) :
    final key = initial key :=
  G.plan.apply_eq_of_not_touches h

/-- Structural absence remains absence at every untouched key. -/
theorem ledger_none_of_not_touches
    (G : GovernedPortfolio Claim Target initial final)
    {key : Key} (hkey : initial key = none)
    (h : ¬ G.plan.Touches key) :
    final key = none :=
  G.plan.preserves_none_of_not_touches hkey h

/-- Retargeting changes no local theorem disposition and retains the same residual plan. -/
def retarget
    {Target' : Prop}
    (G : GovernedPortfolio Claim Target initial final)
    (d : TargetDisposition Target') :
    GovernedPortfolio Claim Target' initial final where
  architecture := G.architecture.retarget d
  plan := G.plan

@[simp]
theorem retarget_local
    {Target' : Prop}
    (G : GovernedPortfolio Claim Target initial final)
    (d : TargetDisposition Target') (i : I) :
    (G.retarget d).localDisposition i = G.localDisposition i :=
  rfl

/-- Updating one local branch retains the target and residual plan exactly. -/
def updateLocal [DecidableEq I]
    (G : GovernedPortfolio Claim Target initial final)
    (i : I) (d : ClaimDisposition (Claim i)) :
    GovernedPortfolio Claim Target initial final where
  architecture := G.architecture.updateLocal i d
  plan := G.plan

@[simp]
theorem updateLocal_target [DecidableEq I]
    (G : GovernedPortfolio Claim Target initial final)
    (i : I) (d : ClaimDisposition (Claim i)) :
    (G.updateLocal i d).targetDisposition = G.targetDisposition :=
  rfl

end GovernedPortfolio

namespace Fixtures

open GRWTSK.Interfaces.OptionalAdapterGate.Fixtures
open GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
open GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio

/-- The RH-facing mixed theorem portfolio with no selected optional residual changes. -/
def unresolvedNoPlan (O : OpenObligations) :
    GovernedPortfolio
      (Claim := LocalClaim O)
      RiemannTarget emptyLedger emptyLedger where
  architecture := architecture O
  plan := .nil emptyLedger

/-- The empty plan preserves every local theorem disposition. -/
theorem unresolvedNoPlan_local
    (O : OpenObligations) (i : LocalIndex) :
    (unresolvedNoPlan O).localDisposition i =
      (architecture O).local.disposition i :=
  rfl

/-- The empty plan leaves every residual structurally absent. -/
theorem unresolvedNoPlan_ledger
    (O : OpenObligations) (key : Key) :
    emptyLedger key = emptyLedger key :=
  (unresolvedNoPlan O).ledger_eq_of_not_touches (by
    simp [AcceptedPlan.Touches])

/-- Even a hypothetical RH refutation cannot alter the empty residual ledger or local portfolio. -/
theorem hypothetical_refutation_preserves_local
    (O : OpenObligations) (h : ¬ RiemannTarget) (i : LocalIndex) :
    ((unresolvedNoPlan O).retarget (.refuted h)).localDisposition i =
      (unresolvedNoPlan O).localDisposition i :=
  rfl

end Fixtures

end GRWTSK.Interfaces.PortFiberPortfolioLedger
```
