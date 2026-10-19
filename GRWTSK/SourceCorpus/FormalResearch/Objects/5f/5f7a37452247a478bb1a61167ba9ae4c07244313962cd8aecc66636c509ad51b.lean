import Mathematics.MobiusOntology.CommittedCut

/-!
# Authority classes

Runtime, numerical, Boolean, analytic, and computational artifacts have
separate codomains.  Only theorem authority can mint an unrestricted theorem
certificate.
-/

namespace Mathematics.MobiusOntology

inductive AuthorityClass
  | runtimeEvent
  | numericalComputation
  | booleanFeasibility
  | analyticTheorem
  | computationalTheorem
  | bridgeTheorem
  | theorem
  deriving DecidableEq, Repr

inductive MayMint : AuthorityClass → AuthorityClass → Prop
  | same (authority) : MayMint authority authority
  | analyticToTheorem : MayMint .analyticTheorem .theorem
  | computationalToTheorem :
      MayMint .computationalTheorem .theorem
  | bridgeToComputational :
      MayMint .bridgeTheorem .computationalTheorem

theorem runtime_cannot_mint_theorem :
    ¬ MayMint .runtimeEvent .theorem := by
  intro impossible
  cases impossible

theorem boolean_cannot_mint_theorem :
    ¬ MayMint .booleanFeasibility .theorem := by
  intro impossible
  cases impossible

theorem analytic_cannot_mint_computational :
    ¬ MayMint .analyticTheorem .computationalTheorem := by
  intro impossible
  cases impossible

structure AuthorityArtifact
    (Payload : Type*) where
  authority : AuthorityClass
  payload : Payload
  statement : Prop

end Mathematics.MobiusOntology
