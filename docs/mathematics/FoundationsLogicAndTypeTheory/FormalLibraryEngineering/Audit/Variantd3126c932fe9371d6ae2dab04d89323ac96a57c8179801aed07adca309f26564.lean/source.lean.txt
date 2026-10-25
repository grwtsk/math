module

public import Presentation.Transport.Projection

/-! # Presentation transport authority firewall -/

public section

namespace Presentation.Transport

@[surface_novel]
structure PresentationProjectionArtifact where
  projectionId : String
  rendererId : String
deriving DecidableEq, Repr

@[expose] def PresentationProjectionHasTheoremAuthority
    (_artifact : PresentationProjectionArtifact) : Prop :=
  False

@[surface_novel, surface_published]
theorem presentationProjection_has_no_theorem_authority
    (artifact : PresentationProjectionArtifact) :
    ¬ PresentationProjectionHasTheoremAuthority artifact := by
  simp [PresentationProjectionHasTheoremAuthority]

end Presentation.Transport
