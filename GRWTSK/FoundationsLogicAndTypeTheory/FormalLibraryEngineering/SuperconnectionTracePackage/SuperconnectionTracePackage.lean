import Folder.CanonicalPath.SuperconnectionTracePackage

/-!
# Folder.Theorem.CanonicalPath.SuperconnectionTracePackage

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports superconnection trace package facts.
Ontology: proof.canonical_path.superconnection_trace
Pivot role: spectral
Zero typology: trace
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem superconnection_trace_formula_if_supplied
    (S : Folder.CanonicalPath.SuperconnectionTracePackage) :
    S.supertraceFormula :=
  Folder.CanonicalPath.superconnection_trace_formula_if_supplied S

theorem superconnection_family_index_compatible
    (S : Folder.CanonicalPath.SuperconnectionTracePackage) :
    S.familyIndexCompatibility :=
  Folder.CanonicalPath.superconnection_family_index_compatible S

end CanonicalPath
end Theorem
end Folder
