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
