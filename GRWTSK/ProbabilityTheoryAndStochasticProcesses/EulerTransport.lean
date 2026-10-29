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
