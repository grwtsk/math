# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variant9686056712d1b3b9257c54c97f7289bfbcd86935898c1564be61beecf7200ef7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb7fbb2313e1a214f13c1fdbd13b3bf8e59bca89` · SHA-256 `9686056712d1b3b9257c54c97f7289bfbcd86935898c1564be61beecf7200ef7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
