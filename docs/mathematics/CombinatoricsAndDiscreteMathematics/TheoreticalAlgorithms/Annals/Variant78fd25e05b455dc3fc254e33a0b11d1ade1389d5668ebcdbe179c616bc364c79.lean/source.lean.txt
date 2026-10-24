import Surface.Prismatic.Comparisons
import Surface.Prismatic.TheoremSeed
import Surface.Prismatic.Envelope
import Surface.Prismatic.Hilbert

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
