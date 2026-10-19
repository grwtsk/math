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
