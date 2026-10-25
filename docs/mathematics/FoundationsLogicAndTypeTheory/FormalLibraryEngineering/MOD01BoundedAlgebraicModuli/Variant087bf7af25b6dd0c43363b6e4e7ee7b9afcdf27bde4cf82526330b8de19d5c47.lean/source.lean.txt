import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME1--ME3: excellent Henselian base, proper source, and bounded algebraic moduli. -/
theorem mod01_boundedAlgebraicModuli
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.excellentHenselianBase ∧
    S.moduli.properPolarizedSource ∧
    S.moduli.boundedAlgebraicModuli Y :=
  ⟨certificate.me1_excellentHenselianBase,
   certificate.me2_properPolarizedSource,
   certificate.me3_boundedAlgebraicModuli⟩

end FCRS.Algebraization.Theorems
