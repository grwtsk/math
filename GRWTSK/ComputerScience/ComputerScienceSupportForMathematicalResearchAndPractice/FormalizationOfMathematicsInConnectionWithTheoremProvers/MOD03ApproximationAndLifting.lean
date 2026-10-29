import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME5--ME6: Artin/Popescu/Elkik approximation and Henselian lifting. -/
theorem mod03_approximationAndLifting
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.approximation Y ∧
    S.moduli.henselianLifting Y :=
  ⟨certificate.me5_approximation,
   certificate.me6_henselianLifting⟩

end FCRS.Algebraization.Theorems
