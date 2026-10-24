# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Annals.Variant65769fbff1777afb91b9f66202a4dc8bb9fcebc9cf459420e4b7e2fa59574f24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ad4a9faddc3208530f1b2b1fff596940e947d5e` · SHA-256 `5119c7edc676837ce34d52e39162a52c6bcbb89660b800b42440d023325b17b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicTheoremFacingDeclarations.Variant78fd25e05b455dc3fc254e33a0b11d1ade1389d5668ebcdbe179c616bc364c79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78fd25e05b455dc3fc254e33a0b11d1ade1389d5668ebcdbe179c616bc364c79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PublicTheoremFacingDeclarations.Variant78fd25e05b455dc3fc254e33a0b11d1ade1389d5668ebcdbe179c616bc364c79","mathematical_subject":"Computation.DataStructures","original_sha256":"78fd25e05b455dc3fc254e33a0b11d1ade1389d5668ebcdbe179c616bc364c79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/Annals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Prismatic.Comparisons
import Surface.Prismatic.TheoremSeed
import Surface.Prismatic.Envelope
import Surface.Prismatic.Hilbert


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PublicTheoremFacingDeclarations.Variant78fd25e05b455dc3fc254e33a0b11d1ade1389d5668ebcdbe179c616bc364c79

namespace Surface
namespace Prismatic
namespace Annals

/-!
# Prismatic comparison Annals theorem cone

What this theorem cone formalizes:
The prismatic cone formalizes prisms, envelopes, comparison-certificate
interfaces, Nygaard/conjugate inputs, and explicitly gated Hilbert/prismatic
embedding inputs.

Hard inputs:
Crystalline, Hodge-Tate, de Rham, etale, base-change, Frobenius-image,
Nygaard/conjugate, envelope, and Hilbert/prismatic compatibility witnesses must
be supplied.

Minimal imports:
`Surface.Prismatic.Comparisons`, `Surface.Prismatic.TheoremSeed`,
`Surface.Prismatic.Envelope`, `Surface.Prismatic.Hilbert`.

Allowed imports:
`Surface.Prismatic.*` and explicitly gated Hilbert/prismatic embedding modules.

Forbidden imports:
BSD, analytic PDE, Ricci, RH narrative modules, and zeta spectral modules unless
a separately named adapter theorem states the exact bridge.

Public theorem-facing declarations:
Comparison `certifiedForMajorProof_of_fields` unpacking theorems,
`PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field`,
`PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields`.

Certificate-only infrastructure:
Comparison certificates, envelope certificates, theorem seeds, and
Hilbert/prismatic embedding certificates.

What is not proved:
Prismatic comparison theorems, BSD, analytic PDE stability, Ricci surgery,
Hilbert--Pólya, Connes trace formulas, or spectral correspondence.

Forbidden bridge claims:
No arithmetic, Ricci, analytic PDE, or zeta spectral claim is part of this cone
without an explicitly named adapter theorem.
-/

def publicTheoremFacingDeclarations : List String := [
  "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof_of_fields",
  "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields",
  "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field",
  "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields"
]

def certificateOnlyDeclarations : List String := [
  "CrystallineComparisonCertificate",
  "HodgeTateComparisonCertificate",
  "PrismaticEnvelopeTheoremCertificate",
  "PrismaticHilbertEmbeddingTheoremCertificate"
]

def hardInputDeclarations : List String := [
  "Prism",
  "PrismaticCohomology",
  "ComparisonCertificate fields",
  "HodgeTateTheoremSeed"
]

def forbiddenClaims : List String := [
  "BSD theorem",
  "Ricci flow theorem",
  "analytic PDE theorem",
  "zeta spectral correspondence"
]

end Annals
end Prismatic
end Surface
```
