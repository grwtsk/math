# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variant8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26fa03311c1b72b39b4a8687950c801fad3da721` · SHA-256 `8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Arithmetic.EllipticCurve.BSD
namespace ConeIndex

/-! Audit-facing index for the BSD theorem cone. -/

def coneName : String := "BSD"

def publicTheoremDeclarations : List String := [
  "BSD.firstPart",
  "BSD.secondPart",
  "BSDReadiness.ready",
  "currentBSDReadiness_not_ready"
]

def certificateOnlyDeclarations : List String := [
  "BSDCertificate",
  "BSDTheoremSeed",
  "PackedSmoothBSDTheoremInput"
]

def hardInputDeclarations : List String := [
  "AnalyticContinuationCertificate",
  "FunctionalEquationCertificate",
  "OrderOfVanishingCertificate",
  "FinitelyGeneratedAbelianCertificate"
]

def forbiddenClaims : List String := [
  "Hilbert trace bridge",
  "Ricci flow bridge",
  "analytic PDE bridge",
  "spectral correspondence"
]

end ConeIndex
end Surface.Arithmetic.EllipticCurve.BSD
```
