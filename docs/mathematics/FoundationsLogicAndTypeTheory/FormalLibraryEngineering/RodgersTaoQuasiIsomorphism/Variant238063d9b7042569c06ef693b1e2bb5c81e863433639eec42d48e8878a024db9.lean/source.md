# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93d31254026a6891f00e86c879640655482c1a89` · SHA-256 `238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism

/-!
# Folder.Theorem.DerivedSheaf.RodgersTaoQuasiIsomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao quasi-isomorphism bridge facts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_quasi_isomorphism
Pivot role: spectral
Zero typology: quasi-isomorphism-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem rodgers_tao_flow_is_quasi_isomorphism
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    T.quasiIso.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_is_quasi_isomorphism T

theorem rodgers_tao_flow_has_quasi_isomorphism
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    ∃ q : Folder.DerivedSheaf.QuasiIsomorphism
        T.sourceComplex T.targetComplex,
      q.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_has_quasi_isomorphism T

theorem rodgers_tao_flow_realizes_quasi_iso
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    T.flowRealizesQuasiIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_realizes_quasi_iso T

theorem rodgers_tao_index_transport_quasi_iso
    (T : Folder.DerivedSheaf.RodgersTaoIndexTransport) :
    T.quasiIso.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_index_transport_quasi_iso T

theorem rodgers_tao_index_transport_preserves_euler
    (T : Folder.DerivedSheaf.RodgersTaoIndexTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  Folder.DerivedSheaf.rodgers_tao_index_transport_preserves_euler T

end DerivedSheaf
end Theorem
end Folder
```
