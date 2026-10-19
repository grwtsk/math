module

public meta import Surface.Core.Classification

/-!
# Finite transport authority firewall

Transport metadata may carry deterministic or finite evidence. It never exposes
an unrelated theorem proposition merely by being well formed or content
addressed.
-/

public section

namespace Surface.Core.Transport

@[surface_novel]
structure FiniteTransportArtifact where
  schemaId : String
  artifactId : String
deriving DecidableEq, Repr

@[expose] def FiniteTransportHasTheoremAuthority
    (_artifact : FiniteTransportArtifact) : Prop :=
  False

@[surface_novel, surface_published]
theorem finiteTransport_has_no_theorem_authority
    (artifact : FiniteTransportArtifact) :
    ¬ FiniteTransportHasTheoremAuthority artifact := by
  simp [FiniteTransportHasTheoremAuthority]

end Surface.Core.Transport
