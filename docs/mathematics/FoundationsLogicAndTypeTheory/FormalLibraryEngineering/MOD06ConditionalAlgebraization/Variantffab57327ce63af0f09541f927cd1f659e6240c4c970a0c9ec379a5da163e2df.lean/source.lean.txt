import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
ME1--ME8 plus the type-specific pipeline theorem produce an algebraic
preimage of the Henselian semantic object.
-/
theorem mod06_conditionalAlgebraization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    EssentialImage S.functors.SemanticPullback Y :=
  registry.modPipeline Y certificate

end FCRS.Algebraization.Theorems
