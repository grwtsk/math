# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TransportRoundtrip.Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f3bfa54be5c62aa5db26a9c8f1174e91fac8041` · SHA-256 `8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.CatalanTransport
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism

/-!
# Folder.Theorem.Fiber.TransportRoundtrip

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.fiber.transport_roundtrip
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Monodromy

theorem catalan_expand_contract_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (x : C.bundle.Fiber T) :
    (Fiber.transportPath C.transport p).symm
      ((Fiber.transportPath C.transport p) x) = x :=
  expand_contract_roundtrip C p x

theorem catalan_contract_expand_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (y : C.bundle.Fiber U) :
    (Fiber.transportPath C.transport p)
      ((Fiber.transportPath C.transport p).symm y) = y :=
  contract_expand_roundtrip C p y

end Monodromy

namespace Fiber

/--
Rodgers-Tao derived transport preserves Euler characteristic, provided the
Rodgers-Tao flow has been supplied as an Euler-preserving transport of section
complexes.

This is the bridge from dynamic analytic transport to static index stability.
It is contract composition, not an internal proof of the Rodgers-Tao theorem.
-/
theorem rodgersTao_transport_preserves_euler_characteristic
    (T : DerivedSheaf.RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  DerivedSheaf.rodgers_tao_transport_preserves_euler_characteristic T

/--
Rodgers-Tao transport is a quasi-isomorphism only when the analytic heat-flow
data has been supplied as a quasi-isomorphism of section complexes.
-/
theorem rodgersTao_transport_is_quasi_isomorphism
    (T : DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    T.quasiIso.inducesCohomologyIso :=
  DerivedSheaf.rodgers_tao_flow_is_quasi_isomorphism T

theorem rodgersTao_index_transport_is_quasi_isomorphism
    (T : DerivedSheaf.RodgersTaoIndexTransport) :
    T.quasiIso.inducesCohomologyIso :=
  DerivedSheaf.rodgers_tao_index_transport_quasi_iso T

theorem rodgersTao_index_transport_preserves_euler
    (T : DerivedSheaf.RodgersTaoIndexTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  DerivedSheaf.rodgers_tao_index_transport_preserves_euler T

end Fiber
end Folder
```
