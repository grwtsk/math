# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTrace.Variantb4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3ce09fc2131776e6d833f93095c6284de75a3a5` · SHA-256 `b4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.CategoricalTrace
import Folder.CrystallineTensor.HattoriStallingsTrace

/-!
# Folder.Theorem.CrystallineTensor.CategoricalTrace

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports categorical trace boundary facts.
Ontology: proof.crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace CategoricalTrace

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : Folder.CrystallineTensor.CategoricalTrace alpha) :
    T.cyclic :=
  Folder.CrystallineTensor.categorical_trace_cyclic T

theorem hattori_stallings_trace_defined
    (T : Folder.CrystallineTensor.HattoriStallingsTraceContract) :
    T.traceDefined :=
  Folder.CrystallineTensor.hattori_stallings_trace_defined T

end CategoricalTrace
end CrystallineTensor
end Theorem
end Folder
```
