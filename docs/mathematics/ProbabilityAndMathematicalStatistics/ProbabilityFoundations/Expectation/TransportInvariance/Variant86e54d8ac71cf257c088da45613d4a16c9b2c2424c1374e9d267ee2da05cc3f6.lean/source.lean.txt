import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.CanonicalPath.TransportInvariance

Radiation role: research-boundary
BinaryMatrix spine: This module names Rodgers-Tao transport invariance targets, not BinaryMatrix dynamics.
Ontology: canonical_path.transport_invariance
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
K-index invariance under a supplied Rodgers-Tao index transport.

The quasi-isomorphism and Euler preservation are inherited from
`RodgersTaoIndexTransport`; equality of K-index classes is an additional
contract field.
-/
structure RodgersTaoKIndexTransport
    (M : DerivedSheaf.MellKTheory) where
  sourceIndex : DerivedSheaf.KTheoryIndex M
  targetIndex : DerivedSheaf.KTheoryIndex M
  transport : DerivedSheaf.RodgersTaoIndexTransport
  kIndexPreserved :
    sourceIndex.indexClass.value = targetIndex.indexClass.value
  sourceLabel : String

theorem rodgers_tao_transport_is_quasi_isomorphism
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.transport.quasiIso.inducesCohomologyIso :=
  DerivedSheaf.rodgers_tao_index_transport_quasi_iso T.transport

theorem rodgers_tao_transport_preserves_euler
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.transport.eulerTransport.targetEuler.value =
      T.transport.eulerTransport.sourceEuler.value :=
  DerivedSheaf.rodgers_tao_index_transport_preserves_euler T.transport

theorem rodgers_tao_transport_preserves_k_index
    {M : DerivedSheaf.MellKTheory}
    (T : RodgersTaoKIndexTransport M) :
    T.sourceIndex.indexClass.value =
      T.targetIndex.indexClass.value :=
  T.kIndexPreserved

end CanonicalPath
end Folder
