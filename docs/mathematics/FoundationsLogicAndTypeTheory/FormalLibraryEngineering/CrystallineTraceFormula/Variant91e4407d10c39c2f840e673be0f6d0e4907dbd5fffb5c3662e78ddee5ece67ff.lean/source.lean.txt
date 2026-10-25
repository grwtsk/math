import Folder.CrystallineIndex.CrystallineTraceFormula

/-!
# Folder.Theorem.CrystallineIndex.CrystallineTraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline trace formula contract facts.
Ontology: proof.crystalline_index.trace_formula
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CrystallineTraceFormula

theorem crystalline_trace_formula_holds
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : Folder.CrystallineIndex.CrystallineTraceFormula H) :
    T.traceFormulaHolds :=
  Folder.CrystallineIndex.crystalline_trace_formula_holds T

end CrystallineTraceFormula
end CrystallineIndex
end Theorem
end Folder
