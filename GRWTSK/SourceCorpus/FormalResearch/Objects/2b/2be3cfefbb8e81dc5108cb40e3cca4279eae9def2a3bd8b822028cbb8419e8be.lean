import Folder.CanonicalPath.AnalyticContinuationMap

/-!
# Folder.Theorem.CanonicalPath.AnalyticContinuationMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports analytic continuation-map facts.
Ontology: proof.canonical_path.continuation_map
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_map_respects_differential
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.respectsDifferential :=
  Folder.CanonicalPath.continuation_map_respects_differential C

theorem continuation_map_has_estimates
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  Folder.CanonicalPath.continuation_map_has_estimates C

end CanonicalPath
end Theorem
end Folder
