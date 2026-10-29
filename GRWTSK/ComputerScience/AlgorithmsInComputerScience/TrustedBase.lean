import Surface.ContinuousAssurance.WorldModel.AssumptionContext

/-!
# Recorded trusted-base closure

This record reports a checker invocation's declared and observed axiom names.
It remains data. In particular, a Boolean `closureComplete` flag cannot itself
produce a Lean proof.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Pinned checker and observed trusted-base metadata. -/
structure TrustedBaseClosure where
  checkerId : ArtifactIdentity
  checkerVersion : String
  allowedAxioms : List String
  observedAxioms : List String
  closureComplete : Bool
  evidence : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- Declarative closure means completeness plus observed/allowed inclusion. -/
def TrustedBaseClosure.DeclaredClosed (closure : TrustedBaseClosure) : Prop :=
  closure.closureComplete = true ∧
    ∀ axiomName ∈ closure.observedAxioms,
      axiomName ∈ closure.allowedAxioms

/-- Declared closure exposes the observed/allowed inclusion and nothing more. -/
theorem TrustedBaseClosure.observed_allowed
    {closure : TrustedBaseClosure}
    (closed : closure.DeclaredClosed)
    {axiomName : String}
    (observed : axiomName ∈ closure.observedAxioms) :
    axiomName ∈ closure.allowedAxioms :=
  closed.2 axiomName observed

end Surface.ContinuousAssurance.WorldModel

