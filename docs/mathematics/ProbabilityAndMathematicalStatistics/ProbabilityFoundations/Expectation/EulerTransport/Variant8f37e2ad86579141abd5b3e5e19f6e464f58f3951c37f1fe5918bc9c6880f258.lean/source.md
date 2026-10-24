# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.EulerTransport.Variant8f37e2ad86579141abd5b3e5e19f6e464f58f3951c37f1fe5918bc9c6880f258

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd46f62f2118b1304664ff800eabdcd6ee858f6d` · SHA-256 `8f37e2ad86579141abd5b3e5e19f6e464f58f3951c37f1fe5918bc9c6880f258`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.EulerTransport

/-!
# Folder.Theorem.DerivedSheaf.EulerTransport

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Euler-transport facts, not BinaryMatrix data.
Ontology: derived.euler_preserving_transport
Pivot role: none
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem euler_preserving_transport_value_eq
    {A B : Folder.DerivedSheaf.SectionComplex}
    (T : Folder.DerivedSheaf.EulerPreservingTransport A B) :
    T.targetEuler.value = T.sourceEuler.value :=
  Folder.DerivedSheaf.euler_preserving_transport_value_eq T

theorem euler_preserving_transport_respects_differential
    {A B : Folder.DerivedSheaf.SectionComplex}
    (T : Folder.DerivedSheaf.EulerPreservingTransport A B) :
    T.transport.respectsDifferential :=
  Folder.DerivedSheaf.euler_preserving_transport_respects_differential T

theorem euler_preserving_transport_quasi_iso_like
    {A B : Folder.DerivedSheaf.SectionComplex}
    (T : Folder.DerivedSheaf.EulerPreservingTransport A B) :
    T.transport.quasiIsoLike :=
  Folder.DerivedSheaf.euler_preserving_transport_quasi_iso_like T

end DerivedSheaf
end Theorem
end Folder
```
