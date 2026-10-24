# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TransportInvariance.Variantab6e77bcfcc87db38b3e2279a548a945d1c51e1b979c013bccad15029e4ed45f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dff7470cdf9f91539c3d9161a39fcdba6c260ff` · SHA-256 `ed122b26d1668cfaddbb74180bb66c94ed5475e8cc74b99c3ddb7e1f580381db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoKIndexTransport.Variant86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.RodgersTaoKIndexTransport.Variant86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/TransportInvariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoKIndexTransport.Variant86e54d8ac71cf257c088da45613d4a16c9b2c2424c1374e9d267ee2da05cc3f6

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
```
