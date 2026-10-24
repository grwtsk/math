# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TransportInvariance.Variantcf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3171d93312e101ed989e505287c589377335eceb` · SHA-256 `cf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.TransportInvariance

/-!
# Folder.Theorem.CanonicalPath.TransportInvariance

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path transport facts, not BinaryMatrix dynamics.
Ontology: proof.canonical_path.transport_invariance
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem rodgers_tao_transport_is_quasi_isomorphism
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.transport.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.rodgers_tao_transport_is_quasi_isomorphism T

theorem rodgers_tao_transport_preserves_euler
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.transport.eulerTransport.targetEuler.value =
      T.transport.eulerTransport.sourceEuler.value :=
  Folder.CanonicalPath.rodgers_tao_transport_preserves_euler T

theorem rodgers_tao_transport_preserves_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (T : Folder.CanonicalPath.RodgersTaoKIndexTransport M) :
    T.sourceIndex.indexClass.value =
      T.targetIndex.indexClass.value :=
  Folder.CanonicalPath.rodgers_tao_transport_preserves_k_index T

end CanonicalPath
end Theorem
end Folder
```
