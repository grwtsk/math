import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful

namespace FCRS.Algebraization.Theorems

/--
Algebraization fibers are nonempty when effectivity holds and, by this
the result says that any two algebraizations are uniquely compatibly isomorphic.
-/
theorem hen08_fiberCanonicity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile) :
    FibersUniquelyIsomorphic S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  exact registry.hen08 hExact.full hExact.faithful

end FCRS.Algebraization.Theorems
