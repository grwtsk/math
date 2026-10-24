# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TransportRoundtrip.Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3b77e1ce6bcff537b555e86880e98b9d37f3031` · SHA-256 `d90aa51fa3aacab92398055619abe668f3c1af1aed1c3c684e58059bceda8dde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanExpandContractRoundtrip.Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CatalanExpandContractRoundtrip.Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Fiber/TransportRoundtrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanExpandContractRoundtrip.Variant8489c301fc026495565488374052a95d08cca332cf49eae3af811e76d925cd34

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
