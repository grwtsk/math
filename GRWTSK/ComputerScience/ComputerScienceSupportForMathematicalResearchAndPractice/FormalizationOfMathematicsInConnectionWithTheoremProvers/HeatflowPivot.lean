/-!
# Folder.CanonicalPath.HeatflowPivot

Radiation role: research-boundary
BinaryMatrix spine: This module records heat-flow pivot windows, not BinaryMatrix data.
Ontology: heatflow_pivot
Pivot role: heatflow
Zero typology: heatflow-barrier
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract heat-flow parameter. -/
structure HeatflowParameter where
  tLabel : String

/-- Abstract `H_t` object. Does not assert real-zero properties. -/
structure HeatflowObject where
  parameter : HeatflowParameter
  functionLabel : String

/-- Local analytic heat-flow window. -/
structure HeatflowWindow where
  center : HeatflowParameter
  xRangeLabel : String
  yRangeLabel : String

theorem heatflow_object_has_parameter
    (H : HeatflowObject) :
    ∃ t : HeatflowParameter, H.parameter = t :=
  ⟨H.parameter, rfl⟩

theorem heatflow_window_has_center
    (W : HeatflowWindow) :
    ∃ t : HeatflowParameter, W.center = t :=
  ⟨W.center, rfl⟩

end CanonicalPath
end Folder
