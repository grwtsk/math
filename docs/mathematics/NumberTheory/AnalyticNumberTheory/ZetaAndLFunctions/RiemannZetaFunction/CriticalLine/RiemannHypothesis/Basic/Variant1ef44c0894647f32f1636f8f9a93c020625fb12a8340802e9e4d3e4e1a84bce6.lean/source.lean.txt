import Mathlib.Data.Nat.Basic

/-! Nonterminal public fixtures for testing compiled formal inventories. -/

namespace Riemann.Fixtures

theorem identity (n : Nat) : n = n := rfl

theorem identityAgain (n : Nat) : n = n := identity n

theorem identityFromPremise (p : Prop) (h : p) : p := h

def naturalIdentity (n : Nat) : Nat := n

end Riemann.Fixtures
