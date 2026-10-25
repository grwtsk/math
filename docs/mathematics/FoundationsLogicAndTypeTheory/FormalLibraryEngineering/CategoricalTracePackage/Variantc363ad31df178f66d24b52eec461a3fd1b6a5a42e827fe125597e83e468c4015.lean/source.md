# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTracePackage.Variantc363ad31df178f66d24b52eec461a3fd1b6a5a42e827fe125597e83e468c4015

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe2a72c45b53cbec7ab20b08bd1ba3d6328563de` · SHA-256 `c363ad31df178f66d24b52eec461a3fd1b6a5a42e827fe125597e83e468c4015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
