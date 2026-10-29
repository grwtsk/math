namespace Surface
namespace Prismatic
namespace ConeIndex

/-! Audit-facing index for the prismatic comparison cone. -/

def coneName : String := "PrismaticComparison"

def publicTheoremDeclarations : List String := [
  "CrystallineComparisonCertificate.certifiedForMajorProof_of_fields",
  "HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields",
  "PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field",
  "PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields"
]

def certificateOnlyDeclarations : List String := [
  "CrystallineComparisonCertificate",
  "HodgeTateComparisonCertificate",
  "DeRhamComparisonCertificate",
  "EtaleComparisonCertificate",
  "PrismaticEnvelopeTheoremCertificate"
]

def hardInputDeclarations : List String := [
  "comparison witnesses",
  "Nygaard/conjugate witnesses",
  "envelope witnesses",
  "Hilbert embedding witnesses"
]

def forbiddenClaims : List String := [
  "BSD",
  "Ricci surgery",
  "analytic PDE stability",
  "zeta spectral correspondence"
]

end ConeIndex
end Prismatic
end Surface
