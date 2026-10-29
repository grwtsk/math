import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
A scoped nonalgebraizable object refutes unrestricted essential surjectivity
in characteristic zero or mixed characteristic.
-/
theorem hen07_characteristicBoundary
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hCharacteristic : S.P.characteristicZeroOrMixedProfile)
    (hCounterexample : S.P.knownRankTwoNonAlgebraizableObject) :
    ¬ EssentiallySurjective S.functors.HenPullback := by
  have hOutside :=
    registry.hen07 hCharacteristic hCounterexample
  exact counterexampleNotEssentiallySurjective
    S.functors.HenPullback
    hOutside

end FCRS.Algebraization.Theorems
