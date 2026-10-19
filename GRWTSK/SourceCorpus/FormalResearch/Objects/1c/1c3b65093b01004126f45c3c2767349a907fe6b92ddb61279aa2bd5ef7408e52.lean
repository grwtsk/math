import Formal.Blueprint.Analytic
import Formal.Blueprint.PrimeNumberTheoremAnd
import Formal.Blueprint.Tactic

/-!
Blueprint boundary root.

This module is an explicit marker for formal files that may contain `sorry`,
unresolved external imports, copied blueprint statements, tactic experiments,
or theorem-shaped obligations. It imports only conceptual marker modules.
Nothing under this root may be imported by `Formal.Kernel`.
-/

namespace Formal.Blueprint

inductive AuthorityBand where
  | blueprint
  deriving DecidableEq, Repr

def mayCloseTheoremAuthority : AuthorityBand -> Bool
  | .blueprint => false

theorem blueprint_cannot_close_authority :
    mayCloseTheoremAuthority .blueprint = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Analytic"
  , "PrimeNumberTheoremAnd"
  , "Tactic"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 3 := by
  rfl

end Formal.Blueprint
