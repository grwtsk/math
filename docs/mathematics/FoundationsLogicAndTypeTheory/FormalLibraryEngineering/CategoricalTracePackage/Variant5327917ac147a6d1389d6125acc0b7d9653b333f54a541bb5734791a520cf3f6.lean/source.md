# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTracePackage.Variant5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6250830d7efc4b9556c876759196d1b255321a2b` · SHA-256 `5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.CategoricalTracePackage

Radiation role: research-boundary
BinaryMatrix spine: This module records categorical trace packages.
Ontology: canonical.trace_realization
Pivot role: dual
Zero typology: trace
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure CategoricalTracePackage where
  CategoryData : Type
  EndomorphismData : Type
  TraceValue : Type
  traceFormula : Prop
  traceFormula_certified : traceFormula
  hrrOrLefschetzCompatible : Prop
  hrrOrLefschetzCompatible_certified : hrrOrLefschetzCompatible
  sourceLabel : String

theorem categorical_trace_formula_if_supplied
    (C : CategoricalTracePackage) :
    C.traceFormula :=
  C.traceFormula_certified

theorem categorical_trace_hrr_compatible
    (C : CategoricalTracePackage) :
    C.hrrOrLefschetzCompatible :=
  C.hrrOrLefschetzCompatible_certified

end CanonicalPath
end Folder
```
