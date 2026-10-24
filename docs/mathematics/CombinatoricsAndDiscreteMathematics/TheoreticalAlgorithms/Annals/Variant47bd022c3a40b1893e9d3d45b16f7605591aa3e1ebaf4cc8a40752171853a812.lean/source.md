# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Annals.Variant47bd022c3a40b1893e9d3d45b16f7605591aa3e1ebaf4cc8a40752171853a812

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df6ef7592f57751a1705adb58815d1ae6c7b28ac` · SHA-256 `47bd022c3a40b1893e9d3d45b16f7605591aa3e1ebaf4cc8a40752171853a812`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.KakeyaTubeCover
import Surface.Homology.OrientedFlatness
import Surface.Homology.FiniteOS.Authority

namespace Surface
namespace Homology
namespace Annals

/-!
# Homology and finite OS Annals theorem cone

What this theorem cone formalizes:
The homology cone formalizes chain complexes, chain maps, quasi-isomorphism
descriptors, Betti proof certificates, finite OS syntax, finite OS authority
witnesses, Kakeya cover structure, and oriented-flatness obligations.

Hard inputs:
Boundary-squared-zero, boundary commutation, homology computation, Betti proof,
quasi-isomorphism, homology-stability coverage, multiscale normalization,
orientation, plank/gluing, and homological-relaxation witnesses must be
supplied.

Minimal imports:
`Surface.Homology.KakeyaTubeCover`, `Surface.Homology.OrientedFlatness`,
`Surface.Homology.FiniteOS.Authority`.

Allowed imports:
Finite chain-complex, finite OS, Kakeya-cover, and oriented-flatness interfaces
inside `Surface.Homology`.

Forbidden imports:
Analytic PDE, prismatic comparison, Hilbert spectral, BSD, and quantitative
Kakeya theorem modules unless a separately named adapter theorem states the
bridge.

Public theorem-facing declarations:
`FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority`,
`finite_os_objects_authoritative_witness`,
`OrientedFlatnessCertificate.certifiedForMajorProof`,
`standardKakeyaTubeCoverRefined_boundary_blocked`.

Certificate-only infrastructure:
`KakeyaTubeCoverCertificate`, `OrientedFlatnessCertificate`,
`FiniteOSHomologyStabilityCriteria`, `FiniteOSAuthorityWitness`.

What is not proved:
Analytic Kakeya estimates, Assouad dimension bounds, strict sheaf gluing,
boundary propagation, analytic PDE behavior, Hilbert spectral evidence,
prismatic comparison, or theorem readiness of the standard Hilbert flow.

Forbidden bridge claims:
Finite OS syntax, Kakeya covers, and oriented-flatness descriptors are not
analytic, prismatic, or spectral theorem authority without exact adapter
theorems and supplied witnesses.
-/

def publicTheoremFacingDeclarations : List String := [
  "Surface.Homology.FiniteOSAuthorityWitness.certifiedForFiniteOSAuthority",
  "Surface.Homology.finite_os_objects_authoritative_witness",
  "Surface.Homology.OrientedFlatnessCertificate.certifiedForMajorProof",
  "Surface.Homology.standardKakeyaTubeCoverRefined_boundary_blocked"
]

def certificateOnlyDeclarations : List String := [
  "KakeyaTubeCoverCertificate",
  "OrientedFlatnessCertificate",
  "FiniteOSHomologyStabilityCriteria",
  "FiniteOSAuthorityWitness"
]

def hardInputDeclarations : List String := [
  "ChainComplex.boundarySquaredZero",
  "ChainMapDescriptor.commutesWithBoundary",
  "QuasiIsomorphismDescriptor.inducesHomologyIso",
  "BettiCertificateDescriptor.proofCertificate",
  "HomologyStabilityCoverageAdmissible"
]

def forbiddenClaims : List String := [
  "analytic topology from finite OS",
  "spectral evidence from finite OS",
  "strict sheaf gluing from oriented flatness",
  "analytic Kakeya estimate from a cover"
]

end Annals
end Homology
end Surface
```
