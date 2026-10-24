# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Correspondence.Variant0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe52972acdac79849985f1e5e37e8bee86bca487` · SHA-256 `0ffeb6441d7bcf74ddedb339661b807a9a142eb20bb1cdb23295ad54200a8334`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.SpectralCandidate

/-!
# Local analytic--spectral correspondence

Heuristic statuses are observations.  Only the dedicated certified structure
contains the equalities needed to enter the authoritative matching graph.
-/

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
