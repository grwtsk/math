# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsomorphism.Variantd61e46cd2a21e7a0dd3b2a9ceaf07fbe4d12ade7e6661e1758784859bb44bb14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f5768b606db342be3a84dae203ab260fa677cb3` · SHA-256 `2c263bd997a13758e09188c1c3ee8dbea61cf77ada03d2125cafbfce6172e555`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsoInducesCohomologyIso.Variantd31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContinuationQuasiIsoInducesCohomologyIso.Variantd31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12","mathematical_subject":"Foundations.Unclassified","original_sha256":"d31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/ContinuationQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.ContinuationQuasiIsomorphism

/-!
# Folder.Theorem.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports continuation quasi-isomorphism facts.
Ontology: proof.canonical_path.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationQuasiIsoInducesCohomologyIso.Variantd31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : Folder.CanonicalPath.AnalyticContinuationMap}
    (Q : Folder.CanonicalPath.ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.continuation_quasi_iso_induces_cohomology_iso Q

end CanonicalPath
end Theorem
end Folder
```
