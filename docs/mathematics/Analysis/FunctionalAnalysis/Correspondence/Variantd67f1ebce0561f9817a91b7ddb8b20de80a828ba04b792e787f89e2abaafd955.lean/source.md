# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Correspondence.Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1068e8751ca0dfc5f2c890eb667160b03c501c9` · SHA-256 `329a686dbdbeec48354c1dc9bf05cf010e5ee3f605d226e9fc95ffc6e99c5ae6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.LocalMatchStatus.Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LocalMatchStatus.Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334","mathematical_subject":"Foundations.Unclassified","original_sha256":"0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Correspondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.SpectralCandidate

/-!
# Local analytic--spectral correspondence

Heuristic statuses are observations.  Only the dedicated certified structure
contains the equalities needed to enter the authoritative matching graph.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.LocalMatchStatus.Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334

namespace Mathematics.RHIsolation

inductive LocalMatchStatus
  | geometricCandidate
  | uniqueNearest
  | countCompatible
  | certifiedCorrespondence
  | rejected
  | unresolved
deriving DecidableEq, Repr

structure LocalMatchAssessment
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (analytic : CertifiedZeroRegion authority)
    (spectral : SpectralCandidate) where
  status : LocalMatchStatus
  evidenceDigest : CertificateDigest

structure LocalCorrespondenceCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (analytic : CertifiedZeroRegion authority)
    (spectral : SpectralCandidate) where
  assessment :
    LocalMatchAssessment analytic spectral
  status_certified :
    assessment.status =
      .certifiedCorrespondence
  multiplicityEqual :
    analytic.count.count =
      spectral.multiplicity
  analyticWindowUnique : Prop
  analyticWindowUniqueProof :
    analyticWindowUnique
  spectralWindowUnique : Prop
  spectralWindowUniqueProof :
    spectralWindowUnique
  arithmeticContributionEqual : Prop
  arithmeticContributionEqualProof :
    arithmeticContributionEqual
  traceContributionEqual : Prop
  traceContributionEqualProof :
    traceContributionEqual

theorem certifiedLocalCorrespondence_preservesMultiplicity
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {analytic : CertifiedZeroRegion authority}
    {spectral : SpectralCandidate}
    (certificate :
      LocalCorrespondenceCertificate
        analytic spectral) :
    analytic.count.count =
      spectral.multiplicity :=
  certificate.multiplicityEqual

end Mathematics.RHIsolation
```
