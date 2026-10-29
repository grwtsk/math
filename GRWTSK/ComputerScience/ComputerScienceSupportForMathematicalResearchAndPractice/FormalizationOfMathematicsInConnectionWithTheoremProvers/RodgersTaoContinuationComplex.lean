import Folder.CanonicalPath.RodgersTaoContinuationComplex

/-!
# Folder.Theorem.CanonicalPath.RodgersTaoContinuationComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao continuation-complex contract facts.
Ontology: proof.canonical_path.rodgers_tao_continuation
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem rodgers_tao_continuation_identity_if_supplied
    (C : Folder.CanonicalPath.RodgersTaoContinuationComplex) :
    C.identityLaw? :=
  Folder.CanonicalPath.rodgers_tao_continuation_identity_if_supplied C

theorem rodgers_tao_continuation_composition_if_supplied
    (C : Folder.CanonicalPath.RodgersTaoContinuationComplex) :
    C.compositionLaw? :=
  Folder.CanonicalPath.rodgers_tao_continuation_composition_if_supplied C

end CanonicalPath
end Theorem
end Folder
