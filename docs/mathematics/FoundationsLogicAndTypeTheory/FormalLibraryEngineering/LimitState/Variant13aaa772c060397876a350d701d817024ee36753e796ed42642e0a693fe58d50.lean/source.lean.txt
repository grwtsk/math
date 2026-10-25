import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem

/-!
# Inverse-limit state as compatibility data
-/

namespace Mathematics.StratifiedBoundary

structure ProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) where
  atStage : Nat → State
  compatible :
    ∀ {later earlier},
      earlier ≤ later →
      system.project later earlier (atStage later) =
        atStage earlier

def witnessedProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    ProjectiveLimitPoint system where
  atStage := system.compatibleWitness
  compatible := system.witnessCompatible

theorem projective_limit_inhabited
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    Nonempty (ProjectiveLimitPoint system) :=
  ⟨witnessedProjectiveLimitPoint system⟩

end Mathematics.StratifiedBoundary
