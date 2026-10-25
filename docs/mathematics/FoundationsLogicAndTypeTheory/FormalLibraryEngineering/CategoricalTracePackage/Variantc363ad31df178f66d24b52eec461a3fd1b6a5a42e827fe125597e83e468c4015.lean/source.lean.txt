import Folder.CanonicalPath.CategoricalTracePackage

/-!
# Folder.Theorem.CanonicalPath.CategoricalTracePackage

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports categorical trace package facts.
Ontology: proof.canonical_path.categorical_trace
Pivot role: dual
Zero typology: trace
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem categorical_trace_formula_if_supplied
    (C : Folder.CanonicalPath.CategoricalTracePackage) :
    C.traceFormula :=
  Folder.CanonicalPath.categorical_trace_formula_if_supplied C

theorem categorical_trace_hrr_compatible
    (C : Folder.CanonicalPath.CategoricalTracePackage) :
    C.hrrOrLefschetzCompatible :=
  Folder.CanonicalPath.categorical_trace_hrr_compatible C

end CanonicalPath
end Theorem
end Folder
