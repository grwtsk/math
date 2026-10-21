/-
DependentIndexTransportEqualityData — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6
Organized SHA-256: 756e6b2b88fd7a42bad940d5235d0366bb5da49d16897405d9df0b7eceb11501
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Retain the complete dependent K-class equality/transport package and all three exact theorem bodies. Both sourceIndex and targetIndex remain in KTheoryIndex M, with the actual supplied equality sourceIndex.indexClass.value = targetIndex.indexClass.value. The stored RodgersTaoIndexTransport retains its separate quasiIso and Euler-preserving package: the first conclusion is an independently selected inducesCohomologyIso proposition, while the second is a genuine supplied Int-valued Euler equality. All M/T parameters and inherited proof applications remain literal. No extra equation connects the two K-index classes to the stored transport complexes; no compatibility, analytic flow action, K-group law, cohomology construction or index theorem is invented. KTheorySpace supplies carriers/operations without group laws, and EulerCharacteristic stores a chosen value/signed-sum proposition, not a computed sum. -/

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
