# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalIndexNonzeroBoundary.Variantbbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddf4fb32e5731f39cb06b556d8a31dacc229b4ce` · SHA-256 `bbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.FamiliesIndexClass

/-!
# Folder.CanonicalPath.GlobalIndexNonzeroBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module marks pointwise global index nonzero as a boundary target.
Ontology: canonical.pointwise_global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Pointwise global K-index nonvanishing is recorded as a strong theorem target.

The field `knownAsTheorem` defaults to false to keep the boundary honest.
-/
structure PointwiseGlobalIndexNonzeroTarget
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexFamily : FamiliesIndexClass M F
  pointwiseNonzero : Prop
  knownAsTheorem : Bool := false
  warning :
    String :=
      "Pointwise global nonvanishing is a theorem target, not a current theorem."

theorem pointwise_global_index_nonzero_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (T : PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  h

end CanonicalPath
end Folder
```
