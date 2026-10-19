import Mathematics.SemiLocalDefect.WP0.Obligation.Core

/-!
# Post-WP3 frontier primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive PostWP3UnknownKind
  | horizonEnergyCauchy
  | cofinalSoninEnergy
  | hardySoninTraceBound
  | semiLocalArithmeticTrace
  | arithmeticTailConvergence
  | weilBoundaryIdentification
  | registrySpanPositivity
  | packetDensity
  | weilFormContinuity
deriving DecidableEq, Repr

def postWP3Frontier :
    Array PostWP3UnknownKind :=
  #[
    .horizonEnergyCauchy,
    .cofinalSoninEnergy,
    .hardySoninTraceBound,
    .semiLocalArithmeticTrace,
    .arithmeticTailConvergence,
    .weilBoundaryIdentification,
    .registrySpanPositivity,
    .packetDensity,
    .weilFormContinuity
  ]

structure OpenPostWP3Obligation where
  id : Nat
  kind : PostWP3UnknownKind
  subject : String
  description : String
  blockedTheorems : Array String
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
