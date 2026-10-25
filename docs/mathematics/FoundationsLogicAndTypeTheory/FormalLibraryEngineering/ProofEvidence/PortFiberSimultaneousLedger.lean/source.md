# Complete source: GRWTSK.Interfaces.PortFiberSimultaneousLedger

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `559d1fe6e2f2a3030998ea8ee24e9cb9922fc8f2` · SHA-256 `3f316cf43ace98a19eb0a2f861e927aea244540aefc728e70434b0677f618225`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
import GRWTSK.Interfaces.OptionalAdapterComposition

namespace GRWTSK.Interfaces.PortFiberSimultaneousLedger

open GRWTSK.Interfaces.OptionalAdapterGate
open GRWTSK.Logic.SimultaneousProofArchitecture

universe u

/-- Convert one proof-carrying port-fiber stage into an optional adapter only after the exact
consumer, source compatibility, residual change, and change validity are supplied.

Both the port certificate and the local theorem are retained in the adapter theorem claim. -/
def toAcceptedAdapter {Key : Type u} [DecidableEq Key]
    {L : Ledger Key}
    (S : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.BoundStage.{u})
    (profile : Profile)
    (consumerIdentity : String)
    (sourceCompatibility : Prop)
    (sourceCompatibilityProof : sourceCompatibility)
    (change : Change Key)
    (validChange : change.ValidFor L) : AcceptedAdapter L where
  profile := profile
  producerIdentity :=
    S.sourceIdentity.repository ++ ":" ++ S.sourceIdentity.path ++
      "#" ++ S.sourceIdentity.declaration
  consumerIdentity := consumerIdentity
  sourceRevision := S.sourceIdentity.revision
  theoremClaim := S.certificate ∧ S.theoremClaim
  theoremProof := ⟨S.certified, S.theoremProof⟩
  sourceCompatibility := sourceCompatibility
  sourceCompatibilityProof := sourceCompatibilityProof
  change := change
  validChange := validChange

/-- A simultaneous local-theorem architecture paired with an independently validated residual plan.

The plan cannot change the architecture or its terminal target disposition; it changes only the
ledger encoded in its own type. -/
structure GovernedArchitecture {I Key : Type u} [DecidableEq Key]
    (initial final : Ledger Key) where
  architecture :
    GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.Architecture.{u, u} I
  plan : AcceptedPlan initial final

namespace GovernedArchitecture

variable {I Key : Type u} [DecidableEq Key]
variable {initial final : Ledger Key}

/-- Every local theorem remains available independently of residual-plan execution. -/
theorem local (G : GovernedArchitecture initial final) (i : I) :
    G.architecture.LocalClaim i :=
  G.architecture.allLocal i

/-- The terminal disposition is exactly the architecture's disposition and is not modified by
residual updates. -/
def targetDisposition (G : GovernedArchitecture initial final) :=
  G.architecture.targetDisposition

/-- A residual key untouched by the accepted plan is unchanged. -/
theorem ledger_eq_of_not_touches
    (G : GovernedArchitecture initial final) {key : Key}
    (h : ¬ G.plan.Touches key) :
    final key = initial key :=
  G.plan.apply_eq_of_not_touches h

/-- Structural absence is preserved at untouched residual keys. -/
theorem ledger_none_of_not_touches
    (G : GovernedArchitecture initial final) {key : Key}
    (hkey : initial key = none) (h : ¬ G.plan.Touches key) :
    final key = none :=
  G.plan.preserves_none_of_not_touches hkey h

end GovernedArchitecture

namespace Fixtures

open GRWTSK.Interfaces.OptionalAdapterGate.Fixtures

/-- The current RH-unresolved port architecture with no selected optional residual update. -/
def unresolvedNoAdapter :
    GovernedArchitecture
      (I :=
        GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.Fixtures.StageIndex)
      (Key := Key)
      emptyLedger emptyLedger where
  architecture :=
    GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.Fixtures.architecture
  plan := .nil emptyLedger

/-- Local holomorphic and topological-ring theorems remain available with an empty plan. -/
theorem unresolvedNoAdapter_local
    (i : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture.Fixtures.StageIndex) :
    unresolvedNoAdapter.architecture.LocalClaim i :=
  unresolvedNoAdapter.local i

/-- The empty optional plan cannot alter either residual key. -/
theorem unresolvedNoAdapter_ledger (key : Key) :
    emptyLedger key = emptyLedger key :=
  unresolvedNoAdapter.ledger_eq_of_not_touches (by
    simp [AcceptedPlan.Touches])

end Fixtures

end GRWTSK.Interfaces.PortFiberSimultaneousLedger
```
