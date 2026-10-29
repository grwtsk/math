/-!
# Proposal-only Recamán diversification
-/

namespace Mathematics.GraphAccess

structure RecamanProposal where
  step : Nat
  value : Nat
  actionRef : String
  plateauDeclared : Prop
  plateauEvidence : plateauDeclared
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem recaman_proposal_has_no_authority
    (proposal : RecamanProposal) :
    proposal.authoritativeEffect = false :=
  proposal.authoritativeEffect_exact

theorem recaman_requires_declared_plateau
    (proposal : RecamanProposal) :
    proposal.plateauDeclared :=
  proposal.plateauEvidence

end Mathematics.GraphAccess
