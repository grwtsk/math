# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineTraceFormula.Variant91e4407d10c39c2f840e673be0f6d0e4907dbd5fffb5c3662e78ddee5ece67ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed90bb25f6f0e809807c9c67a895ae35a5eeaa0b` · SHA-256 `91e4407d10c39c2f840e673be0f6d0e4907dbd5fffb5c3662e78ddee5ece67ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
