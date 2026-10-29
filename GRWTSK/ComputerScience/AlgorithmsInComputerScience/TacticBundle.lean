/-
  TacticBundle.lean — Kernel verification for tactic bundles.
  Elaborates and type-checks embedded tactics without executing them.
-/
import Lean
import Kernel.Core

namespace Kernel.TacticBundle

open Lean Elab Meta Kernel

/-- Internal structure matching the JSON `TacticBundle`. -/
structure TacticBundle where
  name  : String
  code  : String  -- Lean tactic code (as text)
  descr : String
  deriving Repr

/-- Result of attempting to elaborate a tactic script. -/
structure TacticCertResult where
  success : Bool
  message : Option String
  deriving Repr

/-- Elaborate the tactic string and check syntactic + semantic correctness. -/
def certify (b : TacticBundle) : IO Bool := do
  let env ← mkEmptyEnvironment
  let opts := Options.empty
  let input := b.code

  try
    -- Attempt to parse and elaborate the tactic code (not executed)
    let cmdStx ← Parser.runParserCategory input `tactic
    let _ ← Elab.Command.elabCommandTopLevel cmdStx
    return true
  catch e =>
    IO.println s!"[TacticCert] failed for '{b.name}': {e.toString}"
    return false

/-- Kernel-internal feature flag table for known certified tactics. -/
def KernelTactics : IO.Ref (Std.HashSet String) := unsafe unsafeIO (IO.mkRef {})

/-- Register a certified tactic bundle by name. Gated by feature flag. -/
def register (b : TacticBundle) : IO Unit := do
  if ← certify b then
    let h ← KernelTactics.get
    KernelTactics.set (h.insert b.name)
    IO.println s!"[TacticCert] tactic '{b.name}' registered"
  else
    throw <| IO.userError s!"Tactic '{b.name}' failed certification."

/-- Query registered tactic names. -/
def known : IO (List String) := do
  let h ← KernelTactics.get
  return h.toList

end Kernel.TacticBundle
