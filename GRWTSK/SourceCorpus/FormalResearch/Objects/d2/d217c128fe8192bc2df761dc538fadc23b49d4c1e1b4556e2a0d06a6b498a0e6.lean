import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineTraceFormula

Radiation role: research-boundary
BinaryMatrix spine: This module records crystalline trace formula contracts, not BinaryMatrix traces.
Ontology: crystalline_index.trace_formula
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

inductive CrystallineTraceKind where
  | grothendieckMessing
  | deligneIllusie
  | hattoriStallings
  | categorical
deriving DecidableEq, Repr

structure CrystallineTraceFormula
    (H : CohomologyTheory) where
  traceKind : CrystallineTraceKind
  AnalyticSide : Type _
  GeometricSide : Type _
  traceMap : AnalyticSide → GeometricSide
  targetClass : CohomologyClass H
  traceFormulaHolds : Prop
  traceFormulaHolds_certified : traceFormulaHolds
  sourceLabel : String

theorem crystalline_trace_formula_holds
    {H : CohomologyTheory}
    (T : CrystallineTraceFormula H) :
    T.traceFormulaHolds :=
  T.traceFormulaHolds_certified

end CrystallineIndex
end Folder
