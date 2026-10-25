# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineTraceFormula.Variantd217c128fe8192bc2df761dc538fadc23b49d4c1e1b4556e2a0d06a6b498a0e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a85999b588c4c63c12e199941c7a95dcf4d397d` · SHA-256 `d217c128fe8192bc2df761dc538fadc23b49d4c1e1b4556e2a0d06a6b498a0e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
