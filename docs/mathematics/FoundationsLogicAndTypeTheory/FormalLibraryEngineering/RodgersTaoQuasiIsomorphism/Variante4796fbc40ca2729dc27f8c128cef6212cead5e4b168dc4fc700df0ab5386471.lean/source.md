# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoQuasiIsomorphism.Variante4796fbc40ca2729dc27f8c128cef6212cead5e4b168dc4fc700df0ab5386471

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf1dee4c23078ce7c0351a1d535463dac094c20c` · SHA-256 `b1ffca2b06c35af589a1b321454f70d845e557c8526b199d7d54905ea5eafd94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","mathematical_subject":"Foundations.Unclassified","original_sha256":"238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/RodgersTaoQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9

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
