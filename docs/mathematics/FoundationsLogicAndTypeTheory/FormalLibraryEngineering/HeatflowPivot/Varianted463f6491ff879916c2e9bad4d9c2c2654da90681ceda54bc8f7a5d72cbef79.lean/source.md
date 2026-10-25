# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatflowPivot.Varianted463f6491ff879916c2e9bad4d9c2c2654da90681ceda54bc8f7a5d72cbef79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4900c1f1222b4546c0b124f8ea9dfc00848bd2a6` · SHA-256 `ed463f6491ff879916c2e9bad4d9c2c2654da90681ceda54bc8f7a5d72cbef79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
