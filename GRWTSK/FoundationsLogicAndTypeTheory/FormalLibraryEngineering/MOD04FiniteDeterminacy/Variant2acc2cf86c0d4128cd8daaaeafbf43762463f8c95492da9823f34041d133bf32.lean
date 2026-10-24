import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME7: exact finite determinacy, distinguished from finite-order approximation. -/
theorem mod04_finiteDeterminacy
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.finiteDeterminacy Y :=
  certificate.me7_finiteDeterminacy

end FCRS.Algebraization.Theorems
