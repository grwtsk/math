import FCRS.Algebraization.Theorems.ALG01_PolarizedEffectivity
import FCRS.Algebraization.Theorems.ALG02_ProperGAGA

namespace FCRS.Algebraization.Theorems

/--
Polarized algebraization completeness:
fullness and faithfulness come from proper GAGA, while essential
surjectivity comes from polarized effectivity.
-/
theorem alg03_polarizedCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.polarizedProfile) :
    EquivalenceWitness S.functors.PolAn := by
  have hEffectivity :=
    (alg01_polarizedEffectivity S registry) hProfile
  have hGAGA :=
    (alg02_properGAGA S registry) hProfile
  exact {
    full := hGAGA.full
    faithful := hGAGA.faithful
    essentiallySurjective := hEffectivity.essentiallySurjective
  }

end FCRS.Algebraization.Theorems
