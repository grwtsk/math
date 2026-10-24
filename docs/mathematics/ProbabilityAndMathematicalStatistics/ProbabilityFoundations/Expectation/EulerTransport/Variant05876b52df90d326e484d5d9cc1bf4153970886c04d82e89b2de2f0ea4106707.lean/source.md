# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.EulerTransport.Variant05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67873c91d44c65bbbbfe00dea71ac856d6cb11a5` · SHA-256 `05876b52df90d326e484d5d9cc1bf4153970886c04d82e89b2de2f0ea4106707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.EulerCharacteristic

/-!
# Folder.DerivedSheaf.EulerTransport

Radiation role: research-boundary
BinaryMatrix spine: This module records Euler-preserving derived transport, not BinaryMatrix data.
Ontology: derived.euler_preserving_transport
Pivot role: none
Zero typology: euler-invariance-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A transport between section complexes.

This is intentionally weaker than a full chain equivalence. It records the
transport maps and the properties needed by downstream index layers.
-/
structure SectionComplexTransport
    (A B : SectionComplex) where
  map : ∀ n : Degree, A.Section n → B.Section n
  respectsDifferential : Prop
  respectsDifferential_certified : respectsDifferential
  quasiIsoLike : Prop
  quasiIsoLike_certified : quasiIsoLike
  label : String

/--
A transport that preserves Euler characteristic.

This is the static index-invariance datum needed to bridge dynamic transport
to the K-theoretic index.
-/
structure EulerPreservingTransport
    (A B : SectionComplex) where
  transport : SectionComplexTransport A B
  sourceEuler : EulerCharacteristic A
  targetEuler : EulerCharacteristic B
  euler_eq : targetEuler.value = sourceEuler.value
  sourceLabel : String

theorem euler_preserving_transport_value_eq
    {A B : SectionComplex}
    (T : EulerPreservingTransport A B) :
    T.targetEuler.value = T.sourceEuler.value :=
  T.euler_eq

theorem euler_preserving_transport_respects_differential
    {A B : SectionComplex}
    (T : EulerPreservingTransport A B) :
    T.transport.respectsDifferential :=
  T.transport.respectsDifferential_certified

theorem euler_preserving_transport_quasi_iso_like
    {A B : SectionComplex}
    (T : EulerPreservingTransport A B) :
    T.transport.quasiIsoLike :=
  T.transport.quasiIsoLike_certified

end DerivedSheaf
end Folder
```
