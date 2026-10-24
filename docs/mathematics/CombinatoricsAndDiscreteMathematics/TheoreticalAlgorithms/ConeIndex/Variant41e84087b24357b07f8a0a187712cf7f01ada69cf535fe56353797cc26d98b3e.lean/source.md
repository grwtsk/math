# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variant41e84087b24357b07f8a0a187712cf7f01ada69cf535fe56353797cc26d98b3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46c8947819d234f1cc5ce7e8631da7c8f218ff90` · SHA-256 `41e84087b24357b07f8a0a187712cf7f01ada69cf535fe56353797cc26d98b3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Homology
namespace ConeIndex

/-! Audit-facing index for the finite OS and homology cone. -/

def coneName : String := "FiniteOSHomology"

def publicTheoremDeclarations : List String := [
  "finite_os_objects_authoritative_witness",
  "OrientedFlatnessCertificate.certifiedForMajorProof_of_fields",
  "KakeyaTubeCoverCertificate.admissibleFiniteStructuralInput_of_fields"
]

def certificateOnlyDeclarations : List String := [
  "FiniteOSAuthorityWitness",
  "FiniteOSHomologyStabilityCriteria",
  "OrientedFlatnessCertificate",
  "KakeyaTubeCoverCertificate"
]

def hardInputDeclarations : List String := [
  "chain-complex validity",
  "chain-map boundary commutation",
  "quasi-isomorphism witness",
  "Betti proof certificate",
  "homology-stability coverage"
]

def forbiddenClaims : List String := [
  "finite OS as analytic topology",
  "Kakeya cover as analytic estimate",
  "oriented flatness as Hilbert theorem readiness"
]

end ConeIndex
end Homology
end Surface
```
