import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME4: formal effectivity for the selected bounded semantic object. -/
theorem mod02_formalEffectivity
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.formalEffectivity Y :=
  certificate.me4_formalEffectivity

end FCRS.Algebraization.Theorems
