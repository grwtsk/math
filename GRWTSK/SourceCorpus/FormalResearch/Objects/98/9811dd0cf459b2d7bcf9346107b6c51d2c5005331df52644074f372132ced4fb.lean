import Folder.CanonicalPath.SpectralBoundaryCriterion

/-!
# Folder.CanonicalPath.GlobalAlignmentComposition

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied global-alignment contracts.
Ontology: canonical.path
Pivot role: dual
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Final alignment composition is contract composition only.

This theorem is intentionally not named `riemann_hypothesis`.
-/
structure CanonicalPathGlobalAlignmentContract where
  familiesIndex : Type
  transportInvariance : Type
  traceIdentity : IndexSpectralTraceIdentity
  spectralBoundaryCriterion : SpectralBoundaryCriterion
  allZerosOnCriticalLine : Prop
  allZerosOnCriticalLine_certified : allZerosOnCriticalLine
  sourceLabel : String

theorem canonical_path_global_alignment_if_supplied
    (C : CanonicalPathGlobalAlignmentContract) :
    C.allZerosOnCriticalLine :=
  C.allZerosOnCriticalLine_certified

end CanonicalPath
end Folder
