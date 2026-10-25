/-! Open-file, session-scoped goal-observation provider surface. -/

import IndiscreteTerminalTopos.Audit
import Lean.Server.InfoUtils

namespace IndiscreteTerminalTopos.Rpc

/-- Persistent open-file session identity; it never stores an `RpcRef`. -/
structure SessionIdentity where
  /-- Open document URI. -/
  documentUri : String
  /-- Host-controlled session generation. -/
  generation : Nat
  deriving Repr

/-- Position-indexed goal query. -/
structure GoalsAtParams where
  /-- Associated open-file session. -/
  session : SessionIdentity
  /-- Zero-based line. -/
  line : Nat
  /-- Zero-based UTF-16 character offset. -/
  character : Nat
  deriving Repr

/-- Goal observation backed by elaboration `InfoTree`, not tactic-text scanning. -/
def goalsAtProvider := Lean.Elab.InfoTree.goalsAt?

/-- Opaque server references are not persistent identities. -/
def rpcRefsAreSessionScoped : Bool := true

end IndiscreteTerminalTopos.Rpc
