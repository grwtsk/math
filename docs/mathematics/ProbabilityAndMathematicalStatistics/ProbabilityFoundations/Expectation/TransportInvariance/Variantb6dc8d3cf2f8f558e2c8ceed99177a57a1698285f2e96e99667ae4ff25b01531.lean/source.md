# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TransportInvariance.Variantb6dc8d3cf2f8f558e2c8ceed99177a57a1698285f2e96e99667ae4ff25b01531

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e86f70f41d6c3d5751c14ae17ecab2b92304dcfe` · SHA-256 `ce9483dbf5a0bec9dd0bbb3a01f150f6f2ddc11d4ddba8d49bfd627232a9d1d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoTransportIsQuasiIsomorphism.Variantcf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.RodgersTaoTransportIsQuasiIsomorphism.Variantcf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"cf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/TransportInvariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoTransportIsQuasiIsomorphism.Variantcf73cbb7b238af5c50f4ad995c4dcaeb9559cfef43b81444fb802f667058e31b

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
