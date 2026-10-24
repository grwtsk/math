# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Annals.Variant9166101e7693e1008a1cd52b4faae892de99e9a0e0f567337151a82fb5eeecfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `577c8ca5b48110fe398b7415975af9c8f7044f7f` · SHA-256 `9166101e7693e1008a1cd52b4faae892de99e9a0e0f567337151a82fb5eeecfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.Readiness

namespace Surface.Arithmetic.EllipticCurve.BSD
namespace Annals

/-!
# BSD Annals theorem cone

What this theorem cone formalizes:
The BSD cone formalizes elliptic-curve statement interfaces, L-function
interfaces, Mordell-Weil inputs, and conditional readiness gates for BSD-shaped
statements.

Hard inputs:
Analytic continuation, functional equation, order of vanishing, Mordell-Weil,
leading-coefficient, and smooth BSD theorem inputs must be supplied.

Minimal imports:
`Surface.Arithmetic.EllipticCurve.BSD.Readiness`.

Allowed imports:
`Surface.Arithmetic.EllipticCurve.*`,
`Surface.Arithmetic.GaloisCohomology.*`, and BSD-local support modules.

Forbidden imports:
`Surface.Hilbert`, `Surface.Flow.AnalyticPDE`, `Surface.Spectral`, and
`Surface.Prismatic` unless a separately named adapter theorem states the bridge.

Public theorem-facing declarations:
`firstPart`, `secondPart`, `BSDReadiness.ready`,
`currentBSDReadiness_not_ready`.

Certificate-only infrastructure:
`Assumptions`, `FirstPartStatement`, `SecondPartStatement`, `BSDCertificate`,
`BSDTheoremSeed`, `PackedSmoothBSDTheoremInput`.

What is not proved:
The BSD conjecture, analytic continuation, the functional equation, rank
formula, leading-coefficient identity, or smooth BSD theorem input.

Forbidden bridge claims:
No Hilbert-trace, Ricci-flow, analytic PDE, prismatic-comparison, or spectral
correspondence claim is part of this cone.
-/

/-- Public theorem-facing declarations for the BSD cone. -/
def publicTheoremFacingDeclarations : List String := [
  "Surface.Arithmetic.EllipticCurve.BSD.firstPart",
  "Surface.Arithmetic.EllipticCurve.BSD.secondPart",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDReadiness.ready",
  "Surface.Arithmetic.EllipticCurve.BSD.currentBSDReadiness_not_ready"
]

/-- Certificate packages consumed by the BSD cone. -/
def certificateOnlyDeclarations : List String := [
  "Surface.Arithmetic.EllipticCurve.BSD.Assumptions",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDCertificate",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDTheoremSeed",
  "Surface.Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput"
]

/-- Where hard mathematical input enters the BSD cone. -/
def hardInputDeclarations : List String := [
  "AnalyticContinuationCertificate",
  "FunctionalEquationCertificate",
  "OrderOfVanishingCertificate",
  "FinitelyGeneratedAbelianCertificate",
  "BSDCertificate"
]

/-- Claims forbidden from the BSD public theorem page. -/
def forbiddenClaims : List String := [
  "Hilbert trace evidence",
  "spectral correspondence",
  "Ricci flow theorem authority",
  "analytic PDE stability",
  "prismatic comparison"
]

end Annals
end Surface.Arithmetic.EllipticCurve.BSD
```
