import Folder.CanonicalPath.ZetaRHTarget

/-!
# Folder.Theorem.CanonicalPath.ZetaRHTarget

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports zeta RH target facts.
Ontology: proof.canonical_path.zeta_target
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem zeta_rh_target_has_conclusion
    (T : Folder.CanonicalPath.ClassicalZetaRHTarget) :
    ∃ P : Prop, T.criticalLineConclusion = P :=
  Folder.CanonicalPath.zeta_rh_target_has_conclusion T

theorem h0_translation_matches_completed_zeta_if_supplied
    (T : Folder.CanonicalPath.H0RealZeroTranslation) :
    T.h0MatchesCompletedZeta :=
  Folder.CanonicalPath.h0_translation_matches_completed_zeta_if_supplied T

theorem h0_translation_equivalence_if_supplied
    (T : Folder.CanonicalPath.H0RealZeroTranslation) :
    T.rhIffH0RealZeros :=
  Folder.CanonicalPath.h0_translation_equivalence_if_supplied T

end CanonicalPath
end Theorem
end Folder
