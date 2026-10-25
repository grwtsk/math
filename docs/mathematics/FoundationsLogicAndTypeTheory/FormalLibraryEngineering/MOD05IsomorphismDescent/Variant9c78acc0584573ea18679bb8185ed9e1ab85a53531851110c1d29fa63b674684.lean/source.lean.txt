import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME8: effective descent of the final isomorphism and its cocycle data. -/
theorem mod05_isomorphismDescent
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.effectiveIsomorphismDescent Y :=
  certificate.me8_effectiveIsomorphismDescent

end FCRS.Algebraization.Theorems
